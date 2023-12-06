from os.path import join
import numpy as np
import pandas as pd

from configuration import STATS_PATH, CORRELATION_RELEVANT_ANSWERS, PAYMENT_COL, MOTIVATION_TYPE_HIGH_ANSWER_FILE\
    , QUESTION_TYPE_HIGH_ANSWER_FILE, HIGH_ANSWER_FILE, REPOSITORY_QUESTION, MOTIVATION_QUESTION\
    , motivation_type_questions

from data_utils import get_survey_ds
from df_to_latex_table import df_to_latex_table
from questions_utils import get_question_text, get_question_motivation_type, question_type
from verify_metrics import HIGH_ANSWER

def high_answer_probability(df
                            , output_prefix=''):


    high_prob = []
    for i in set(CORRELATION_RELEVANT_ANSWERS) - set([PAYMENT_COL]):
        #df[i] = df[i].map(lambda x: None if x is None else x >= HIGH_ANSWER)
        df[i] = df[motivation_type_questions[type]].mean(axis=1)
        df[i] = df[i].map(lambda x: None if np.isnan(x) else x >= HIGH_ANSWER)
        high_prob.append((i, df[i].mean()))

    motivation_df = pd.DataFrame(high_prob
                                 , columns=['Question', 'High Answer Probability'])
    motivation_df['Question Text'] = motivation_df['Question'].map(get_question_text)

    motivation_df['question_type'] = motivation_df['Question'].map(lambda x: question_type(x))
    motivation_df['motivation_type'] = motivation_df['Question'].map(lambda x: get_question_motivation_type(x))

    motivation_df.to_csv(join(STATS_PATH
                              , output_prefix + HIGH_ANSWER_FILE)
                         , index=False)
    
    stats_df = aggregate_metrics_by_type(motivation_df
                      , type_name='question_type'
                      , table_caption=
                        "\label{tab:" + output_prefix +
                        "motivation-question-type-high-prob}"  + output_prefix + "High Answer Probability by Question Type"
                      , metrics=['High Answer Probability']
                      )
    stats_df.to_csv(join(STATS_PATH
                              , output_prefix + QUESTION_TYPE_HIGH_ANSWER_FILE)
                    , index=False)

    stats_df = aggregate_metrics_by_type(motivation_df
                      , type_name='motivation_type'
                      , table_caption=
                            "\label{tab:" + output_prefix + "motivation-type--high-prob}"
                            + output_prefix + "High Answer Probability by Question Type"
                      , metrics=['High Answer Probability'])

    stats_df.to_csv(join(STATS_PATH
                              ,  output_prefix + MOTIVATION_TYPE_HIGH_ANSWER_FILE)
                    , index=False)


def aggregate_metrics_by_type(stats_df
                      , type_name
                      , table_caption
                      , metrics=['High Answer Probability']):
    g = stats_df.groupby([type_name]
                         , as_index=False).agg({i: 'mean' for i in metrics
                                                })
    g = g.rename(columns={type_name: 'Type'})
    g = g.sort_values('Type'
                      , ascending=False)
    print()
    df_to_latex_table(
        g
        , table_caption
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    return g

def run():
    df = get_survey_ds()
    df = df[~df[MOTIVATION_QUESTION].isna()]

    #ldf = df[~(df[REPOSITORY_QUESTION].isna()) & ~(df[PAYMENT_COL].isna())].copy()
    ldf = df.copy()
    print("Correlations", len(ldf))

    high_answer_probability(ldf)

    df['is_github'] = df.apply(lambda x: 'github' in x[REPOSITORY_QUESTION].lower()
                               , axis=1)

    ldf = df[df['is_github'] == True].copy()
    print("GitHub correlations", len(ldf))
    high_answer_probability(ldf
                            , output_prefix='github-')

    ldf = df[df[PAYMENT_COL] == True].copy()
    print("Paid correlations", len(ldf))
    high_answer_probability(ldf
                            , output_prefix='paid-')

if __name__ == "__main__":
    run()