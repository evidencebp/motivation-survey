"""
Twin analysis of different developers in the same project.
Compute difference in questions, use them as positive or not
and check their performance as motivation classifiers.
"""

from os.path import join

from configuration import CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION, SIDE_A, SIDE_B, STATS_PATH\
    , REPO_TWINS_MOTIVATION_STATS_FILE, motivation_type_questions

from df_to_latex_table import df_to_latex_table
from feature_pair_analysis import pair_features_vs_concept, features_stats_to_cm_df
from questions_utils import get_question_text, question_type, get_question_motivation_type, get_question_index
from repo_answers_similarity import build_two_developer_ds



def same_repo_dev_analysis():

    DIFF_PREFIX = 'diff_'

    df = build_two_developer_ds()
    for i in CORRELATION_RELEVANT_ANSWERS:
        df[DIFF_PREFIX + i] = df[SIDE_A + i] > df[SIDE_B + i]

    stats = pair_features_vs_concept(df=df
                             , features=[DIFF_PREFIX + i for i in
                                            set(CORRELATION_RELEVANT_ANSWERS) - {MOTIVATION_QUESTION}]
                             , concept=DIFF_PREFIX + MOTIVATION_QUESTION
                             , verbose=False
                             )
    stats_df = features_stats_to_cm_df(stats)

    stats_df = stats_df.reset_index()
    stats_df = stats_df.rename(columns={'index': 'Question'})
    stats_df['Question'] = stats_df['Question'].map(lambda x: x[len(DIFF_PREFIX):])
    stats_df['Question Text'] = stats_df['Question'].map(lambda x: get_question_text(x))

    stats_df['question_type'] = stats_df['Question'].map(lambda x: question_type(x))
    stats_df['motivation_type'] = stats_df['Question'].map(lambda x: get_question_motivation_type(x))

    stats_df.to_csv(join(STATS_PATH
                         , REPO_TWINS_MOTIVATION_STATS_FILE))



    g = stats_df.groupby(['question_type']
                         , as_index=False).agg({'precision': 'mean'
                                                 , 'precision_lift': 'mean'
                                                 , 'recall': 'mean'
                                                 , 'mutual_information': 'mean'
                                                })
    g = g.rename(columns={'question_type': 'Question Type'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            , 'mutual_information': 'Mutual Information'})
    print()
    df_to_latex_table(
        g.sort_values('Precision', ascending=False)
        , caption='\label{tab:retab:repo-twins-question-typepo-twins-question-type} Project Twins Predictability by Question Type'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    g = stats_df.groupby(['motivation_type']
                         , as_index=False).agg({'precision': 'mean'
                                                 , 'precision_lift': 'mean'
                                                 , 'recall': 'mean'
                                                 , 'mutual_information': 'mean'
                                                })
    g = g.rename(columns={'motivation_type': 'Motivation Type'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            , 'mutual_information': 'Mutual Information'})

    print()
    df_to_latex_table(
        g.sort_values('Precision', ascending=False)
        , caption='\label{tab:repo-twins-motivation-type} Project Twins Predictability by Motivation Type'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

def hostility_high_diff():

    df = build_two_developer_ds()

    types = ['Hostility', 'Importance', 'Challenge']
    for type in types:
        print(type)
        for i in motivation_type_questions[type]:
            print(get_question_index(i), get_question_text(i))
            ldf = df[['A_ResponseId', 'A_' + i, 'B_' + i]].copy()
            ldf = ldf.dropna()
            ldf['A_' + i + 'cat'] = ldf['A_' + i] >= 6
            ldf['B_' + i + 'cat'] = ldf['B_' + i] >= 6
            print(ldf.groupby(['A_' + i + 'cat'
                              , 'B_' + i + 'cat'], as_index=False).agg({'A_ResponseId': 'count'}))

if __name__ == "__main__":
    same_repo_dev_analysis()
    hostility_high_diff()
