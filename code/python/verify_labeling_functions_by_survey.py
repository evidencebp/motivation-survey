from datetime import datetime

import numpy as np
import pandas as pd
from sklearn.metrics import mutual_info_score

from configuration import DEV_KEY, MOTIVATION_QUESTION, WORKING_HOURS_QUESTION, PAYMENT_COL

from confusion_matrix import ConfusionMatrix
from data_utils import get_survey_ds
from df_to_latex_table import df_to_latex_table
from verify_metrics import HIGH_ANSWER

labeling_functions = ['dev_message_length_avg'
    , 'dev_refactor_mle'
    , 'dev_commit_hours'
                      ]
all_labeling_functions = ['Retention'] + labeling_functions

MINMIAL_ACTIVITY_DAYS = 6*30

def verify_labeling_functions():

    df = get_survey_ds()

    df['High_' + MOTIVATION_QUESTION] = df[MOTIVATION_QUESTION].map(lambda x: None if x is None else x >= HIGH_ANSWER)
    print( "High motivation positive rate"
            , df['High_' + MOTIVATION_QUESTION].mean())

    print("Verify with motivation")

    groups = verify_with_target(df
                       , target=MOTIVATION_QUESTION)

    df[WORKING_HOURS_QUESTION] = pd.to_numeric(df[WORKING_HOURS_QUESTION], errors='coerce')
    mean_working_hours = df[WORKING_HOURS_QUESTION].mean()
    df['High_' + WORKING_HOURS_QUESTION] = df[WORKING_HOURS_QUESTION].map(lambda x: None if x is None else x >= mean_working_hours)
    print( "High working hours positive rate"
            , df['High_' + WORKING_HOURS_QUESTION].mean())

    df['Retention'] = df.apply(lambda x: None if '-' not in str(x.dev_max_commit_timestamp)
                            else 'Not Active' if (datetime.strptime(str(x.dev_max_commit_timestamp)[:10], '%Y-%M-%d')
                                         - datetime.strptime(str(x.answer_day), '%Y-%M-%d')).days < MINMIAL_ACTIVITY_DAYS
    else 'Active'
                           , axis=1)


    print("Verify with working hours")
    for paid in df[PAYMENT_COL].unique():
        print("Paid", paid)
        verify_with_target(df[df[PAYMENT_COL]==paid].copy()
                       , target=WORKING_HOURS_QUESTION)

    groups = groups + verify_with_target(df[df[PAYMENT_COL]==0].copy()
                       , target=WORKING_HOURS_QUESTION)


    groups = groups + [build_motivation_aggregation(df.copy()[(~df[WORKING_HOURS_QUESTION].isna()
                                                               & ~df[MOTIVATION_QUESTION].isna())]
                                     , f=WORKING_HOURS_QUESTION
                                     , target=MOTIVATION_QUESTION)]
    groups = groups + [build_motivation_aggregation(df.copy()[(~df[WORKING_HOURS_QUESTION].isna()
                                                               & ~df[MOTIVATION_QUESTION].isna())]
                                     , f=MOTIVATION_QUESTION
                                     , target=WORKING_HOURS_QUESTION)]

    groups = groups + [build_motivation_aggregation(df.copy()[(~df['Retention'].isna()
                                                               & ~df[MOTIVATION_QUESTION].isna())]
                                     , f='Retention'
                                     , target=MOTIVATION_QUESTION
                                     , high_name='Retention')]
    groups = groups + [build_motivation_aggregation(df.copy()[(~df[WORKING_HOURS_QUESTION].isna()
                                                               & ~df['Retention'].isna())]
                                     , f='Retention'
                                     , target=WORKING_HOURS_QUESTION
                                     , high_name='Retention')]


    group_df = pd.concat(groups)
    group_df['Concept'] = group_df['Concept'].map(lambda x: {MOTIVATION_QUESTION: 'Motivation Answer'
                                                            , WORKING_HOURS_QUESTION: 'Working Hours Answer'}[x])
    group_df['Classifier'] = group_df['Classifier']\
        .map(lambda x: {'dev_message_length_avg': 'Long Messages'
    , 'dev_refactor_mle': 'High Refactoring'
    , 'dev_commit_hours': 'High Hours'
    , MOTIVATION_QUESTION: 'Motivation Answer'
    , WORKING_HOURS_QUESTION: 'Working Hours Answer'}.get(x,x))

    group_df['Is High'] = group_df['Is High'].map(lambda x: {1: 'True'
                                                            , 0: 'False'
                                                            , 'Active': 'True'
                                                            , 'Not Active': 'False'}.get(x,x))

    pos_df = group_df[group_df['Is High'] == 'True']
    neg_df = group_df[group_df['Is High'] == 'False']
    rel_df = pd.merge(pos_df
                      , neg_df
                      , on=['Concept', 'Classifier']
                      , suffixes=('_pos', '_neg'))
    rel_df['Cases'] = rel_df['Cases_pos'] + rel_df['Cases_neg']
    rel_df['Cases'] = rel_df['Cases'].map(lambda x:  ' ' + str(x))
    rel_df['Rel. Probability of High'] = (rel_df['Probability of High_pos'] / rel_df['Probability of High_neg'])
    rel_df['Rel. Average'] = (rel_df['Average_pos'] / rel_df['Average_neg'])
    rel_df = rel_df.sort_values(['Concept', 'Classifier'])

    print()
    df_to_latex_table(
        rel_df[['Concept', 'Classifier', 'Cases', 'Rel. Probability of High', 'Rel. Average']]
        , '\label{tab:lb-by-survey} Labeling Functions by Survey'
        #, columns_header='{ | p{15mm}| p{40mm} | l| l| l| l  | }'
        #, columns_to_name={'feature' : 'Smell', 'precision' : 'Precision'}
        )
    print()

def verify_with_target(df
                       , target):
    groups = []
    for f in labeling_functions:
        high_name = 'High_' + f
        relevant_df = df.copy()[~df[f].isna()]
        split = df[f].mean()
        relevant_df[high_name] = relevant_df[f].map(lambda x: x > split)
        df[high_name] = df[f].map(lambda x: x > split)
        print("Split by {f} higher than {s}".format(f=f
                                                    , s=split))
        g = build_motivation_aggregation(relevant_df, f, target)
        groups.append(g[['Concept', 'Classifier', 'Is High', 'Cases', 'Probability of High', 'Average']])

        print(g)

    print(df[['High_' + i for i in labeling_functions] + [DEV_KEY, target, 'High_' + target]].dropna()
          .groupby(['High_' + i for i in  labeling_functions]).agg({DEV_KEY: 'count'
                                                     , target: 'mean'
                                                     , 'High_' + target: 'mean'}))
    return groups


def build_motivation_aggregation(relevant_df, f, target
                                 , high_name=None):
    if not high_name:
        high_name = 'High_' + f

    g = relevant_df.groupby(high_name, as_index=False).agg({DEV_KEY: 'count'
                                                               , target: 'mean'
                                                               , 'High_' + target: 'mean'})
    g.rename(columns={target: 'Average'
        , 'High_' + target: 'Probability of High'
        , DEV_KEY: 'Cases'
        , high_name: 'Is High'}
             , inplace=True)
    g['Classifier'] = f
    g['Concept'] = target
    return g


def conditioned_mutual_information_analysis():

    df = get_survey_ds()

    df['High_' + MOTIVATION_QUESTION] = df[MOTIVATION_QUESTION].map(lambda x: None if x is None else x >= HIGH_ANSWER)

    for f in labeling_functions:
        high_name = 'High_' + f
        split = df[f].mean()
        df[high_name] = df[f].map(lambda x: x > split)

    for motivation in df['High_' + MOTIVATION_QUESTION].unique():
        print("Conditioned mutual information, high motivation:", motivation)

        for i in range(len(labeling_functions)):
            for j in range(len(labeling_functions)):
                if i < j:
                    print("Mutual information of {first} and {second}".format(first=labeling_functions[i]
                                                                              , second=labeling_functions[j]))
                    ldf = df[df['High_' + MOTIVATION_QUESTION] == motivation][['High_' + labeling_functions[i]
                                                                               , 'High_' + labeling_functions[j]]].dropna()
                    print(mutual_info_score(ldf['High_' + labeling_functions[i]]
                                            , ldf['High_' + labeling_functions[j]]))


def labeling_functions_cm():
    df = get_survey_ds()
    df[WORKING_HOURS_QUESTION] = pd.to_numeric(df[WORKING_HOURS_QUESTION], errors='coerce')

    concepts = {'Motivation Answer': {'question':  MOTIVATION_QUESTION, 'min': HIGH_ANSWER}
                , 'Working Hour Answer': {'question':  WORKING_HOURS_QUESTION, 'min': df[WORKING_HOURS_QUESTION].mean()}}

    classifiers = {'High Hours': {'question':  'dev_commit_hours', 'min': 18}
                   , 'High Refactoring': {'question':  'dev_refactor_mle', 'min': 0.2}
                   , 'Long Messages':{'question':  'dev_message_length_avg', 'min': 84}}
                    # Retention

    for concept in concepts.keys():
        df[concept] = df[concepts[concept]['question']].map(
            lambda x: None if (x is None or np.isnan(x) or x in ('', ' ')) else x >= concepts[concept]['min'])


    for classifier in classifiers.keys():
        df[classifier] = df[classifiers[classifier]['question']].map(
            lambda x: None if (x is None or np.isnan(x) or x in ('', ' ')) else x >= classifiers[classifier]['min'])

    df['Retention'] = df.Churn.map(lambda x: 1 if x == 'Active' else 0 if x =='Not Active' else None)

    rows = []
    concept = 'Motivation Answer'
    ldf = df[(~df[MOTIVATION_QUESTION].isna())
             & (~df[MOTIVATION_QUESTION].isin(['', 0.0]))]
    for classifier in list(classifiers.keys()) + ['Retention']:
        if concept != classifier:
            if classifier == 'Working Hour Answer':
                g = ldf[(~ldf[WORKING_HOURS_QUESTION].isna())
                        & (~ldf[WORKING_HOURS_QUESTION].isin(['']))
                        & (ldf[PAYMENT_COL]==0)].groupby([concept, classifier]
                           , as_index=False).agg({DEV_KEY: 'count'})
            else:
                g = ldf[(~ldf[classifier].isna()) & (ldf[classifier] != '')].groupby([concept, classifier]
                           , as_index=False).agg({DEV_KEY: 'count'})
            cm = ConfusionMatrix(g_df=g
                                 , classifier=classifier
                                 , concept=concept, count=DEV_KEY)
            cm_row = cm.summarize()
            cm_row['concept'] = concept
            cm_row['classifier'] = classifier
            rows.append(cm_row)

            #print(concept, classifier)
            #print(cm_row)


    concept = 'Working Hour Answer'
    ldf = df[(~df[WORKING_HOURS_QUESTION].isna())
             & (~df[WORKING_HOURS_QUESTION].isin(['', 0.0]))]

    for classifier in list(classifiers.keys()) + ['Retention']:
        if concept != classifier:
            cm_row = get_cm_row(classifier, concept
                                , ldf[(~ldf[classifier].isna())
            & (~ldf[classifier].isin(['']))
            & (ldf[PAYMENT_COL] == 0)])
            rows.append(cm_row)

            #print(concept, classifier)
            #print(cm_row)

    ldf = df[(~df[MOTIVATION_QUESTION].isna())
             & (~df[MOTIVATION_QUESTION].isin(['', 0.0]))
             & (~df[WORKING_HOURS_QUESTION].isna())
             & (~df[WORKING_HOURS_QUESTION].isin(['', 0.0]))
             & (df[PAYMENT_COL] == 0)]
    cm_row = get_cm_row(classifier='Working Hour Answer'
               , concept='Motivation Answer'
               , ldf=ldf)
    rows.append(cm_row)
    cm_row = get_cm_row(classifier='Motivation Answer'
               , concept='Working Hour Answer'
               , ldf=ldf)
    rows.append(cm_row)

    stats = pd.DataFrame(rows)
    stats['classifier_order'] = stats.classifier.map(
        lambda x: {'Retention': 1, 'High Refactoring': 2, 'High Hours': 3, 'Long Messages': 4}.get(x, 10))

    stats['concept'] = stats['concept'].map(lambda x: {'Working Hour Answer': 'Working Hours Answer'}.get(x,x))
    stats['classifier'] = stats['classifier'].map(lambda x: {'Working Hour Answer': 'Working Hours Answer'}.get(x,x))
    stats['samples'] = stats['samples'].map(lambda x: ' ' + str(int(x)))
    stats.sort_values(['concept', 'classifier_order'], inplace=True)

    print()
    df_to_latex_table(
        stats[['concept', 'classifier', 'samples', 'accuracy', 'lift_over_independent', 'precision', 'precision_lift']]
        , '\label{tab:lb-by-survey_cm} Labeling Functions by Survey'
        #, columns_header='{ | p{15mm}| p{40mm} | l| l| l| l  | }'
        , columns_to_name={'concept': 'Concept'
                        , 'classifier': 'Classifier'
                        , 'samples': 'Cases'
                        , 'accuracy': 'Accuracy'
                        , 'lift_over_independent': 'Accuracy Lift'
                        , 'precision': 'Precision'
                        , 'precision_lift': 'Precision Lift'}
        )
    print()


def get_cm_row(classifier
               , concept
               , ldf):
    g = ldf.groupby([concept, classifier]
                                               , as_index=False).agg({DEV_KEY: 'count'})
    cm = ConfusionMatrix(g_df=g
                         , classifier=classifier
                         , concept=concept, count=DEV_KEY)
    cm_row = cm.summarize()
    cm_row['concept'] = concept
    cm_row['classifier'] = classifier
    return cm_row


if __name__ == "__main__":
    #verify_labeling_functions()
    #conditioned_mutual_information_analysis()
    labeling_functions_cm()