"""
We build a dataset of the original and follow up answers of the same person in the same project.
Using the changes in features, we try to predict changes in motivation.
"""
from os.path import join
import numpy as np
import pandas as pd

from configuration import REPLY_EMAIL_QUESTION, CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION, STATS_PATH\
    , FOLLOWUP_PREDICTABILITY_STATS_FILE, motivation_type_questions, is_high_answer
from confusion_matrix import ConfusionMatrix
from data_utils import get_survey_ds, get_followup_ds
from df_to_latex_table import df_to_latex_table
from questions_utils import get_question_text
from feature_pair_analysis import pair_features_vs_concept, features_stats_to_cm_df
from steps_analysis import build_two_steps_ds
from questions_utils import question_type, get_question_motivation_type

def build_motivation_steps_ds():

    time_column = 'year'

    original_df = get_survey_ds(anon=True)
    original_df[time_column] = 1
    original_df['email'] = original_df[REPLY_EMAIL_QUESTION]
    original_df = original_df[[time_column, 'email'] + CORRELATION_RELEVANT_ANSWERS]

    followup_df = get_followup_ds(anon=True
                                    , same_project_only=True)
    # Private data version
    #followup_df['email'] = followup_df.apply(lambda x: (x[REPLY_EMAIL_QUESTION] if '@' in str(x[REPLY_EMAIL_QUESTION]) else x.RecipientEmail)
    #, axis=1)
    # Public data version
    followup_df['email'] = followup_df.apply(lambda x: x[REPLY_EMAIL_QUESTION]
    , axis=1)
    followup_df[time_column] = 2
    followup_df = followup_df[[time_column, 'email'] + CORRELATION_RELEVANT_ANSWERS]

    metric_per_year_df = pd.concat([original_df
                                       , followup_df])
    steps_ds = build_two_steps_ds(metric_per_year_df
                       , keys=['email']
                       , metrics=CORRELATION_RELEVANT_ANSWERS
                       , time_column=time_column)

    return steps_ds

def compute_steps_features_stats(steps_ds):

    for i in CORRELATION_RELEVANT_ANSWERS:
        steps_ds[i] = steps_ds['rel_' + i].map(lambda x: None if i == np.nan
            else 1 if float(x) > 0 else 0)

    # Did not find an explaining factor for negative lift for challenge or ideology
    #for type in motivation_type_questions.keys():
    #    steps_ds[type] = steps_ds[motivation_type_questions[type]].mean(axis=1)

    #steps_ds= steps_ds[steps_ds['Hostility']==1]

    stats = pair_features_vs_concept(df=steps_ds
                             , features=set(CORRELATION_RELEVANT_ANSWERS) - {MOTIVATION_QUESTION}
                             , concept=MOTIVATION_QUESTION
                             , verbose=False
                             )
    stats_df = features_stats_to_cm_df(stats)

    stats_df = stats_df.reset_index()
    stats_df = stats_df.rename(columns={'index': 'Question'})
    stats_df['Question Text'] = stats_df['Question'].map(get_question_text)

    stats_df['question_type'] = stats_df['Question'].map(lambda x: question_type(x))
    stats_df['motivation_type'] = stats_df['Question'].map(lambda x: get_question_motivation_type(x))

    stats_df.to_csv(join(STATS_PATH
                         , FOLLOWUP_PREDICTABILITY_STATS_FILE))



    g = stats_df.groupby(['question_type']
                         , as_index=False).agg({'hit_rate': 'mean'
                                                 ,'precision': 'mean'
                                                 , 'precision_lift': 'mean'
                                                 , 'recall': 'mean'
                                                 , 'mutual_information': 'mean'
                                                })
    g = g.rename(columns={'question_type': 'Question Type'
                            , 'hit_rate': 'Hit Rate'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            , 'mutual_information': 'Mutual Information'})
    print()
    df_to_latex_table(
        g.sort_values('Precision', ascending=False)
        , caption='\label{tab:steps-question-type} Person Change Over Time Predictability by Question Type'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    g = stats_df.groupby(['motivation_type']
                         , as_index=False).agg({'hit_rate': 'mean'
                                                 , 'accuracy': 'mean'
                                                 , 'precision': 'mean'
                                                 , 'precision_lift': 'mean'
                                                 , 'recall': 'mean'
                                                 #, 'mutual_information': 'mean'
                                                })
    g = g.sort_values('hit_rate', ascending=False)
    g = g.rename(columns={'motivation_type': 'Motivation Factor'
                            , 'hit_rate': 'Improvement Rate'
                            , 'accuracy': 'Accuracy'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            })

    print()
    df_to_latex_table(
        g
        , caption='\label{tab:steps-motivation-factor} Person Change Over Time Predictability by Motivation Factor'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()


def motivation_improvement_reliability():
    steps_ds = build_motivation_steps_ds()

    steps_ds['reported_improvement'] = steps_ds['cur_Q84'].map(lambda x: x >= 6)
    print(steps_ds.groupby(['reported_improvement']).agg({'rel_' + MOTIVATION_QUESTION: 'mean', 'email': 'count'}))


def prev_motivation_as_classifier(steps_ds):
    steps_ds['high_prev'] = steps_ds['prev_Q86'].map(is_high_answer)
    steps_ds['high_cur'] = steps_ds['cur_Q86'].map(is_high_answer)
    g = steps_ds.groupby(['high_prev', 'high_cur'], as_index=False).agg({'email': 'count'})
    cm = ConfusionMatrix(classifier='high_prev'
                         , concept='high_cur'
                         , count='email'
                         , g_df=g)
    print(cm.summarize())


if __name__ == "__main__":
    steps_ds = build_motivation_steps_ds()
    compute_steps_features_stats(steps_ds.copy())
    motivation_improvement_reliability()
    prev_motivation_as_classifier(steps_ds)
