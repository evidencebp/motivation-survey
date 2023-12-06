from os.path import join

import pandas as pd

from configuration import STATS_PATH, motivation_type_questions, CORRELATIONS_FILE\
    , MOTIVATION_TYPE_INNER_CORRELATION_FILE, CORRELATION_RELEVANT_ANSWERS
from compute_correlated_feature_groups import correlated_feature_groups, print_features_groups
from data_utils import get_survey_ds, get_followup_ds
from df_to_latex_table import df_to_latex_table
from questions_utils import get_question_text, get_question_keys


def compute_all_correlations():

    correlation_thresholds = [0.8, 0.5, 0.4, 0.3, 0.2]

    df = get_survey_ds()
    df = df[set(df.columns).intersection(CORRELATION_RELEVANT_ANSWERS)]
    corr = df.corr()

    for i in correlation_thresholds:
        print("\n\nCorrelation groups for threshold", i)

        correlated_groups = correlated_feature_groups(df
                                                  , threshold=i)

        print_features_groups(correlated_groups
                          , translation_function=get_question_text
                          , all_features=df.columns)

    expected_correlations(corr)

    corr = corr.reset_index()
    corr = corr.rename(columns={'index': 'Question'})

    corr.to_csv(join(STATS_PATH, CORRELATIONS_FILE)
                , index=False)


def expected_correlations(correlations):

    EXPECTED_PAIRS = [['Q84' # I regularly reach a high level of productivity
                          , 'Q85' # I am a relatively productive programmer
                       ]
                      , ['Q87' # I am skilled in software development
                         , 'Q88' # My code is of high quality
                        ]
                      #, ['Q89.1' # Your colleagues and fellow workers
                      #   , 'Q69' # I wish that certain developers in the repository will leave.
                      #  ]
                      #, ['Q89.1' # Your colleagues and fellow workers
                      #   , 'Q75' #Belonging to the  community is motivating my work on the repository.
                      #   ]
                      ]

    print("Expected pairs correlations")
    for i in EXPECTED_PAIRS:
        print(i, correlations[i[0]][i[1]]
              , get_question_text(i[0])
              , ' ; '
              , get_question_text(i[1]))

def categories_correlations(df
                            , categories
                            , output_file=None):

    df = df[set(df.columns).intersection(get_question_keys())]
    corr = df.corr()
    corr = corr.reset_index()
    corr = corr.rename(columns={'index': 'Question'})
    corr['Question Text'] = corr['Question'].map(get_question_text)

    rows = []
    for category in categories:
        cat_corr = corr.copy()
        cat_corr = (cat_corr[cat_corr['Question'].isin(categories[category])]
                        [['Question'] + categories[category]])
        print(category)
        print(cat_corr)
        print([(i, get_question_text(i)) for i in categories[category]])
        stats = compute_correlation_stats(cat_corr)
        rows.append((category, stats[0], stats[1], stats[2]))

    stats = compute_correlation_stats(corr)
    rows.append(('All', stats[0], stats[1], stats[2]))

    stats_df = pd.DataFrame(rows, columns=['Type', 'Min_Correlation', 'Max_correlation', 'Avg_correlation'])
    if output_file:
        stats_df.to_csv(output_file)

def compute_correlation_stats(corr_df):

    vals = []
    for _,i in corr_df.iterrows():
        cur_question = i['Question']
        for col in corr_df.columns:
            if col != cur_question and col not in ['Question', 'Question Text']:
                vals.append(i[col])
    if len(vals):
        return (min(vals), max(vals), sum(vals)/len(vals))
    else:
        return (None, None, None)

def tst():
    core8 = ['I am a core member of the repository', 'I feel responsible to the repository success', 'I have significant influence on the repository']
    misc8 = ['Opportunities to use your abilities', 'Your colleagues and fellow workers', 'The following questions are from Job Satisfaction Scale questionnaire.We present the questionnaire as is in order to compare to previous results. \r\nIn case that you find some questions irrelevant, please skip them.\r\nThe questions indicate level of satisfaction with the following:\r\nFreedom to choose your own method of working', 'Taking everything into consideration, how do you feel about your work?', 'Amount of responsibility you are given', 'Recognition you get for good work', 'Amount of variety in your work']
    recognition8 =  ['In the past year, members of my GitHub community asked questions that show their understanding of my contributions. If you are the only developer in the project, please skip.', 'In the past year, members of my GitHub community expressed interest in my contributions. If you are the only developer in the project, please skip.', 'I get recognition due to my contribution to the repository']
    performance8 = ['I am a relatively productive programmer', 'I am satisfied with my performance in software development', 'I am skilled in software development', 'My code is of high quality', 'I regularly reach a high level of productivity']
    hostality8 = ['We have many heated arguments in the community. If you are the only developer in the project, please skip.', 'In the past year, members of my GitHub community put me down or were condescending to me. If you are the only developer in the project, please skip.', 'I wish that certain developers in the repository will leave. If you are the only developer in the project, please skip.', 'In the past year, members of my GitHub community made demeaning or derogatory remarks about me. If you are the only developer in the project, please skip.']

    Group1 = ['Physical working conditions', 'I am a core member of the repository', 'Code quality in the repository improved since a year ago', 'Opportunities to use your abilities', 'In the past year, members of my GitHub community asked questions that show their understanding of my contributions. If you are the only developer in the project, please skip.', 'My work on the repository is creative', 'In the past year, members of my GitHub community expressed interest in my contributions. If you are the only developer in the project, please skip.', 'Your hours of work', 'I enjoy software development very much', 'I get recognition due to my contribution to the repository', 'I am a relatively productive programmer', 'I’m interested in the repository for my own needs', 'I enjoy trying to solve complex problems', 'It is important for me to program well', 'I am satisfied with my performance in software development', 'I learn from my contributions', 'Your colleagues and fellow workers', 'The repository’s community of developers is more motivated than that of other repositories. If you are the only developer in the project, please skip.', 'I’m being paid for my work in this repository', 'The community is very professional. If you are the only developer in the project, please skip.', 'Your remuneration (payment)', 'I write tests for my code', 'The following questions are from Job Satisfaction Scale questionnaire.We present the questionnaire as is in order to compare to previous results. \r\nIn case that you find some questions irrelevant, please skip them.\r\nThe questions indicate level of satisfaction with the following:\r\nFreedom to choose your own method of working', 'I am skilled in software development', 'Working on this repository is challenging', 'When I look at what we accomplish, I feel a sense of pride', 'I improved as a programmer since a year ago', 'Taking everything into consideration, how do you feel about your work?', 'Amount of responsibility you are given', 'I work as a professional programmer', 'The repository is important', 'My code is of high quality', 'I want my code to be beautiful', 'I feel responsible to the repository success', 'Belonging to the  community is motivating my work on the repository. If you are the only developer in the project, please skip.', 'Recognition you get for good work', 'I regularly reach a high level of productivity', 'Amount of variety in your work', 'I have significant influence on the repository', 'I derive satisfaction from working on this repository', 'I regularly have a high level of motivation to contribute to the repository', 'The quality of the code in this repository is better than others', 'I have complete autonomy in contributing to the repository', 'My personal motivation in this repository has increased since a year ago']
    Group2  =['Years of contribution to GitHub - Click to write Choice 1', 'Age']
    Group3  =['I contribute to open source due to ideology', 'I contribute to open source in order to become a better programmer', 'I contribute to open source in order to have an online portfolio']
    Group4 =['We have many heated arguments in the community. If you are the only developer in the project, please skip.', 'In the past year, members of my GitHub community put me down or were condescending to me. If you are the only developer in the project, please skip.', 'I wish that certain developers in the repository will leave. If you are the only developer in the project, please skip.', 'In the past year, members of my GitHub community made demeaning or derogatory remarks about me. If you are the only developer in the project, please skip.']

    for i in sorted(set(Group1)- set(recognition8+core8+performance8+misc8)):
        print(r"    \item ", i)

    print(set(Group4)-set(hostality8))

def corelation_groups_stats():

    correlation_thresholds = [0.8]

    df = get_survey_ds()
    df = df[set(df.columns).intersection(get_question_keys())]
    corr = df.corr()

    corr.to_csv(join(STATS_PATH, 'all_correlations.csv'))

    for i in correlation_thresholds:
        print("\n\nCorrelation groups for threshold", i)

        correlated_groups = correlated_feature_groups(corr
                                                  , threshold=i)
        groups_dict = {i: correlated_groups[i] for i in range(len(correlated_groups))}

        categories_correlations(df = get_survey_ds()
                            , categories=groups_dict
                            , output_file=join(STATS_PATH
                                               , 'question_groups_correlations.csv'))

def print_coherence_table():
    reg = pd.read_csv(join(STATS_PATH
                           , MOTIVATION_TYPE_INNER_CORRELATION_FILE))
    reg.rename(columns={'Avg_correlation': 'Coherence'}
               , inplace=True)
    followup = pd.read_csv(join(STATS_PATH
                           , "Follow_up_" +MOTIVATION_TYPE_INNER_CORRELATION_FILE))
    followup.rename(columns={'Avg_correlation': 'Follow-up Coherence'}
               , inplace=True)

    j = pd.merge(reg
                 , followup
                 , on='Type')
    j = j.sort_values('Type')

    print()
    df_to_latex_table(
        j[['Type', 'Coherence', 'Follow-up Coherence']]
        , '\label{tab:Follow-up-Coherence} Factor Coherence'
        , columns_to_name={'Type': 'Factor'})
    print()

def run_questions_correlations():
    compute_all_correlations()
    #tst()
    categories_correlations(df=get_survey_ds()
                            , categories=motivation_type_questions
                            , output_file=join(STATS_PATH, MOTIVATION_TYPE_INNER_CORRELATION_FILE))
    categories_correlations(df=get_followup_ds(same_project_only=False)
                            , categories=motivation_type_questions
                            , output_file=join(STATS_PATH, "Follow_up_" + MOTIVATION_TYPE_INNER_CORRELATION_FILE))
    corelation_groups_stats()
    compute_all_correlations()
    print_coherence_table()

if __name__ == "__main__":
    run_questions_correlations()