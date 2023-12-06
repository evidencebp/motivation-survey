from os.path import join
import pandas as pd

from configuration import STATS_PATH, DEV_KEY, PROJECT_KEY, CORRELATION_RELEVANT_ANSWERS, SIDE_A, SIDE_B\
    , DUPLICATED_PROJECTS, INDEPENDENT_STATS_FILE, PROJECT_DEVELOPERS_STABILITY_FILE
from data_utils import get_survey_ds
from questions_utils import get_question_text, get_question_motivation_type, question_type
from followup_similarity import aggregate_by_type
from stability_analysis import analyze_agreement, generate_rename_map



def repo_answers_similarity():

    two_developers = build_two_developer_ds()

    print("Pairs ", len(two_developers))
    print("Developers ", two_developers[SIDE_A + DEV_KEY].nunique())
    print("Projects ", two_developers[PROJECT_KEY].nunique())

    # print(two_developers)

    stats = analyze_agreement(dual_df=two_developers
                              , metrics=CORRELATION_RELEVANT_ANSWERS
                              , pref_a=SIDE_A
                              , pref_b=SIDE_B)
    stats_df = pd.DataFrame.from_dict(stats, orient='index')
    stats_df = stats_df.reset_index()
    stats_df = stats_df.rename(columns={'index': 'Question'})
    stats_df['Question Text'] = stats_df['Question'].map(get_question_text)
    stats_df = stats_df.sort_values(['Pearson'], ascending=[False])


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

    g = stats_df.groupby(['question_type']
                         , as_index=False).agg({'Pearson': 'mean'
                                                 , 'abs_diff_avg': 'mean'
                                                 , 'relative_diff_avg': 'mean'
                                                 , 'pred_25': 'mean'
                                                 , 'pred_25_lift': 'mean'
                                                })

    aggregate_by_type(stats_df=g
                      , type_name='question_type'
                      , table_caption=
                '\label{tab:same-repo-similarity} Similarity of Answers of Different Developers in the Same Project')


    g = stats_df.groupby(['motivation_type']
                         , as_index=False).agg({'Pearson': 'mean'
                                                 , 'abs_diff_avg': 'mean'
                                                 , 'relative_diff_avg': 'mean'
                                                 , 'pred_25': 'mean'
                                                 , 'pred_25_lift': 'mean'
                                                })

    aggregate_by_type(stats_df=g
                      , type_name='motivation_type'
                      , table_caption=
                '\label{tab:same-repo-type-similarity} Similarity of Motivation Types Answers of Different Developers in the Same Project')
    stats_df.to_csv(join(STATS_PATH
                         , PROJECT_DEVELOPERS_STABILITY_FILE), index=False)

    return stats_df

def build_two_developer_ds():
    df = get_survey_ds()
    df = df[df[PROJECT_KEY].isin(DUPLICATED_PROJECTS)]

    two_developers = build_matched_df(first_df=df
                                      , metrics=CORRELATION_RELEVANT_ANSWERS
                                      , keys=[DEV_KEY, PROJECT_KEY])
    return two_developers

def build_matched_df(first_df
                     , metrics
                     , keys):
    df = first_df[keys + metrics]

    a_df = df.copy()
    cur_update = generate_rename_map(metrics + [DEV_KEY]
                                     , prefix=SIDE_A)
    a_df = a_df.rename(columns=cur_update)

    b_df = df.copy()
    cur_update = generate_rename_map(metrics + [DEV_KEY]
                                     , prefix=SIDE_B)
    b_df = b_df.rename(columns=cur_update)

    two_developers = pd.merge(a_df
                              , b_df
                              , on=PROJECT_KEY)

    two_developers = two_developers[two_developers[SIDE_A + DEV_KEY] != two_developers[SIDE_B + DEV_KEY]]

    return two_developers


def analyze_repo_similarity():

    stats_df = repo_answers_similarity()


if __name__ == "__main__":
    analyze_repo_similarity()
