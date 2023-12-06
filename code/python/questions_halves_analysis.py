from os.path import join

from configuration import STATS_PATH, CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION\
    , HALVES_PREDICTIVE_STATS_CSV


from binning_utils import analyze_halves_prediction_of_concept
from data_utils import get_survey_ds
from df_to_latex_table import df_to_latex_table
from questions_utils import get_question_motivation_type, question_type, get_question_text

def questions_halves_analysis():
    df = get_survey_ds()


    stats_df = analyze_halves_prediction_of_concept(df
                                         , concept=MOTIVATION_QUESTION
                                         , features=list(set(CORRELATION_RELEVANT_ANSWERS) -set([MOTIVATION_QUESTION]))
                                         , verbose=False)

    stats_df = stats_df.reset_index()
    stats_df['Question Text'] = stats_df['index'].map(get_question_text)

    stats_df['question_type'] = stats_df['index'].map(lambda x: question_type(x))
    stats_df['motivation_type'] = stats_df['index'].map(lambda x: get_question_motivation_type(x))




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
        , caption='\label{tab:halves-question-type} Halves Predictability by Question Type'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    g = stats_df.groupby(['motivation_type']
                         , as_index=False).agg({'precision': 'mean'
                                                 , 'precision_lift': 'mean'
                                                 , 'recall': 'mean'
                                                 , 'mutual_information': 'mean'
                                                 , 'hit_rate': 'mean'
                                                })
    g = g.rename(columns={'motivation_type': 'Motivation Type'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            , 'mutual_information': 'Mutual Information'
                            , 'hit_rate': 'Hit Rate'})

    print()
    df_to_latex_table(
        g.sort_values('Precision', ascending=False)
        , caption='\label{tab:halves-motivation-type} Halves Predictability by Question Type'
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    stats_df.to_csv(join(STATS_PATH
                         , HALVES_PREDICTIVE_STATS_CSV))

if __name__ == '__main__':
    questions_halves_analysis()
