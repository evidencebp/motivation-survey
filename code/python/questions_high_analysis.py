from os.path import join

from configuration import STATS_PATH, CORRELATION_RELEVANT_ANSWERS, MOTIVATION_QUESTION\
    , PAYMENT_COL, is_high_answer, REPOSITORY_QUESTION


from data_utils import get_survey_ds, get_followup_ds
from df_to_latex_table import df_to_latex_table
from feature_pair_analysis import pair_features_vs_concept, features_stats_to_cm_df
from questions_utils import get_question_motivation_type, question_type, get_question_text

def questions_high_analysis(df
                            , title
                            , output=None):

    for i in set(CORRELATION_RELEVANT_ANSWERS) - set([PAYMENT_COL]):
        df[i] = df[i].map(is_high_answer)

    # Mimic analyze_halves_prediction_of_concept logic yet on binary values of high answers
    concept=MOTIVATION_QUESTION
    features=list(set(CORRELATION_RELEVANT_ANSWERS) -set([MOTIVATION_QUESTION]))



    df = df[~df[concept].isnull()]

    stats = pair_features_vs_concept(df
                             , features=set(features) - {concept}
                             , concept=concept
                             , verbose=False
                             )
    stats_df = features_stats_to_cm_df(stats)

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
        g.sort_values('Precision Lift', ascending=False)
        , caption='\label{tab:high-answer-question-type} High Answer Predictability by Question Type'
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
    g = g.sort_values('hit_rate'
                      , ascending=False)
    g = g.rename(columns={'motivation_type': 'Motivation Factor'
                            , 'accuracy': 'Accuracy'
                            , 'precision': 'Precision'
                            , 'precision_lift': 'Precision Lift'
                            , 'recall': 'Recall'
                            #, 'mutual_information': 'Mutual Information'
                            , 'hit_rate': 'Fraction $\geq  9$'})

    print()
    df_to_latex_table(
        g
        , caption=title
        # , columns_to_name={'feature': 'Smell', 'precision': 'Precision'}
    )
    print()

    if output:
        stats_df.to_csv(output)

def run_questions_high_analysis():
    df = get_survey_ds()
    ldf = df.copy()
    print("General", len(ldf))
    questions_high_analysis(ldf
            , title='\label{tab:high-answer-motivation-factor} High Motivation Predictability by Motivation Factor'
            , output=join(STATS_PATH
                         , 'motivation_high_values_analysis.csv'))

    ldf = df[df[PAYMENT_COL]==True].copy()
    print("Paid", len(ldf))
    questions_high_analysis(ldf
            , title='\label{tab:high-answer-motivation-factor-paid} Paid High Motivation Predictability by Motivation Factor'
                            )

    #print(df[PAYMENT_COL].value_counts(normalize=True))

    df['is_github'] = df.apply(lambda x: 'github' in x[REPOSITORY_QUESTION].lower()
                               , axis=1)

    ldf = df[df['is_github']==True].copy()
    print("is_github", len(ldf))
    questions_high_analysis(ldf
            , title='\label{tab:high-answer-motivation-factor-git} Git High Motivation Predictability by Motivation Factor')

def run_follow_up_high_analysis():
    df = get_followup_ds(same_project_only=False)
    ldf = df.copy()
    print("Follow-Up", len(ldf))
    questions_high_analysis(ldf
                            ,
                            title='\label{tab:follow-up-high-answer-motivation-factor} Follow-up High Answer Predictability by Motivation Factor'
                            , output=join(STATS_PATH
                                          , 'motivation_high_values_follow_up_analysis.csv'))


if __name__ == '__main__':
    run_questions_high_analysis()
    run_follow_up_high_analysis()
