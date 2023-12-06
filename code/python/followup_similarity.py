from os.path import join
import pandas as pd

from configuration import REPLY_EMAIL_QUESTION, CORRELATION_RELEVANT_ANSWERS, STATS_PATH, INDEPENDENT_STATS_FILE\
    , FOLLOWUP_STABILITY_FILE, PAYMENT_COL
from confusion_matrix import ConfusionMatrix
from data_utils import get_followup_ds, get_survey_ds
from df_to_latex_table import df_to_latex_table
from questions_utils import question_type, get_question_text, get_question_motivation_type
from stability_analysis import analyze_agreement, generate_rename_map

FIRST_PREFIX = 'initial_'
FOLLOWUP_PREFIX = 'followup_'

def followup_similarity():

    followup_df = get_followup_ds()
    print("Followups"
          , len(followup_df))

    joint = get_match_ds(same_project_only=True)
    print("Matched followups"
          , len(joint))
    # TODO - match others

    # Analyze project agreement only on the same project, personal agreement on all
    stats = analyze_agreement(dual_df=joint
                              , metrics=set(CORRELATION_RELEVANT_ANSWERS) -set([PAYMENT_COL])
                              , pref_a=FOLLOWUP_PREFIX
                              , pref_b=FIRST_PREFIX)
    stats_df = pd.DataFrame.from_dict(stats, orient='index')
    stats_df = stats_df.reset_index()
    stats_df = stats_df.rename(columns={'index': 'Question'})
    stats_df['Question Text'] = stats_df['Question'].map(get_question_text)

    stats_df['question_type'] = stats_df['Question'].map(lambda x: question_type(x))
    stats_df['motivation_type'] = stats_df['Question'].map(lambda x: get_question_motivation_type(x))

    ind_df = pd.read_csv(join(STATS_PATH
                              , INDEPENDENT_STATS_FILE))
    stats_df = pd.merge(stats_df
                        , ind_df
                        , on='Question')
    stats_df['pred_25_lift'] = stats_df.apply(lambda x: (x.pred_25 - x.ind_pred_25)/x.ind_pred_25
                                                , axis=1)

    print(stats_df.agg({'Pearson': 'mean'
                                                 , 'abs_diff_avg': 'mean'
                                                 , 'relative_diff_avg': 'mean'
                                                 , 'pred_25': 'mean'
                                                 , 'pred_25_lift': 'mean'
                                                }))

    aggregate_by_type(stats_df
                      , type_name='question_type'
                      , table_caption='\label{tab:followup-similarity} Similarity of Answers of Same Person in Two Dates')

    aggregate_by_type(stats_df
                      , type_name='motivation_type'
                      , table_caption='\label{tab:followup-factor-similarity} Similarity of Motivation Type Answers of Same Person in Two Dates')

    stats_df = stats_df.sort_values(['Pearson'], ascending=[False])

    stats_df.to_csv(join(STATS_PATH
                         , FOLLOWUP_STABILITY_FILE), index=False)


def aggregate_by_type(stats_df
                      , type_name
                      , table_caption
                      , metrics=['Pearson', 'abs_diff_avg', 'relative_diff_avg', 'pred_25', 'pred_25_lift']):
    g = stats_df.groupby([type_name]
                         , as_index=False).agg({i: 'mean' for i in metrics
                                                })
    g = g.rename(columns={type_name: 'Type'
        , 'abs_diff_avg': 'Avg.\\ Abs.\\ Diff'
        , 'relative_diff_avg': 'Rel.\\ Diff'
        , 'pred_25': 'Pred(25)'
        , 'pred_25_lift': 'Pred(25) Lift'
        })
    g = g.sort_values('Pearson'
                      , ascending=False)
    print()
    df_to_latex_table(
        g
        , table_caption
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    return g


def build_followup_match_df(first_df
                     , second_df
                     , metrics
                     , keys
                     , first_prefix='a_'
                     , second_prefix='b_'):

    a_df = first_df[keys + metrics].copy()
    cur_update = generate_rename_map(metrics
                                     , prefix=first_prefix)
    a_df = a_df.rename(columns=cur_update)

    b_df = second_df[keys + metrics].copy()
    cur_update = generate_rename_map(metrics
                                     , prefix=second_prefix)
    b_df = b_df.rename(columns=cur_update)

    match_df = pd.merge(a_df
                              , b_df
                              , on=keys)

    return match_df

def get_match_ds(same_project_only=False
                 , base_columns=CORRELATION_RELEVANT_ANSWERS):

    original_df = get_survey_ds(anon=True)
    followup_df = get_followup_ds(same_project_only=same_project_only)

    joint = build_followup_match_df(first_df=original_df
                     , second_df=followup_df
                     , metrics=base_columns
                     , keys=[REPLY_EMAIL_QUESTION]
                     , first_prefix=FIRST_PREFIX
                     , second_prefix=FOLLOWUP_PREFIX)
    return joint

def get_payment_stability():

    init = FIRST_PREFIX + PAYMENT_COL
    follow_up = FOLLOWUP_PREFIX + PAYMENT_COL

    joint = get_match_ds(same_project_only=True)

    print("payment stability")
    g = joint.groupby([init
                        , follow_up], as_index=False).agg({REPLY_EMAIL_QUESTION: 'count'})
    print(g)

    cm = ConfusionMatrix(g_df=g
                             , classifier=init
                             , concept=follow_up, count=REPLY_EMAIL_QUESTION)

    print(cm.summarize())


if __name__ == "__main__":
    followup_similarity()
    get_payment_stability()
