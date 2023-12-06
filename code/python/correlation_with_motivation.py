from os.path import join
import pandas as pd

from configuration import STATS_PATH, CORRELATIONS_FILE, MOTIVATION_QUESTION, motivation_type_questions, \
    question_types, QUESTION_TYPE_MOTIVATION_PEARSON_FILE, MOTIVATION_TYPE_MOTIVATION_PEARSON_FILE\
    , MOTIVATION_PEARSON_FILE, PAYMENT_COL
from data_utils import get_survey_ds
from df_to_latex_table import df_to_latex_table
from followup_similarity import aggregate_by_type
from questions_utils import get_question_text, get_question_motivation_type, question_type

def correlation_with_motivation():

    df = pd.read_csv(join(STATS_PATH
                          , CORRELATIONS_FILE))

    motivation_df = df[['Question', MOTIVATION_QUESTION]]
    motivation_df = motivation_df.rename(columns={MOTIVATION_QUESTION: 'Pearson'})
    motivation_df['Question Text'] = motivation_df['Question'].map(get_question_text)

    motivation_df['question_type'] = motivation_df['Question'].map(lambda x: question_type(x))
    motivation_df['motivation_type'] = motivation_df['Question'].map(lambda x: get_question_motivation_type(x))

    motivation_df.to_csv(join(STATS_PATH
                              , MOTIVATION_PEARSON_FILE)
                         , index=False)
    
    stats_df = aggregate_by_type(motivation_df
                      , type_name='question_type'
                      , table_caption=
                        "\label{tab:motivation-question-type-correlation} Correlation of Question Type with Motivation"
                      , metrics=['Pearson']
                      )
    stats_df.to_csv(join(STATS_PATH
                              , QUESTION_TYPE_MOTIVATION_PEARSON_FILE)
                    , index=False)

    stats_df = aggregate_by_type(motivation_df
                      , type_name='motivation_type'
                      , table_caption=
                            "\label{tab:motivation-type-correlation} Correlation of Motivation Type with Motivation"
                      , metrics=['Pearson'])

    stats_df.to_csv(join(STATS_PATH
                              , MOTIVATION_TYPE_MOTIVATION_PEARSON_FILE)
                    , index=False)


def aggregate_category_motivation(df
                                  , category_dict):
    rows = []
    for i in category_dict.keys():
        pearson_sum = 0.0
        questions = 0
        for question in category_dict[i]:
            if question in df.columns:
                questions += 1
                pearson_sum += df[MOTIVATION_QUESTION][df['Question'] == question].iloc[0]

        rows.append((i
                     , None if questions == 0 else pearson_sum / questions))
    stats_df = pd.DataFrame(rows, columns=['Type', 'Avg. Pearson'])
    stats_df = stats_df.sort_values('Avg. Pearson'
                                    , ascending=False)
    return stats_df

def motivation_and_job_satisfaction():
    JOB_SATISFACTION = 'Q94.1' # Taking everything into consideration, how do you feel about your work?
    PAYMENT_SATISFACTION = 'Q92.1'

    df = get_survey_ds()

    print("motivations general Pearson"
            , df.corr()[JOB_SATISFACTION][MOTIVATION_QUESTION])

    print("paid general Pearson"
            , df[(df[PAYMENT_COL] == 1)
                 & (~df[PAYMENT_SATISFACTION].isna())].corr()[JOB_SATISFACTION][MOTIVATION_QUESTION])

    print("unpaid general Pearson"
            , df[(df[PAYMENT_COL] == 0)
                 & (df[PAYMENT_SATISFACTION].isna())].corr()[JOB_SATISFACTION][MOTIVATION_QUESTION])



if __name__ == "__main__":
    correlation_with_motivation()
    motivation_and_job_satisfaction()