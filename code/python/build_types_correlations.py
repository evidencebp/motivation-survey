from os.path import join

import pandas as pd

from configuration import  motivation_type_questions, REPOSITORY_QUESTION, PAYMENT_COL, STATS_PATH

from build_followup_model import enhance_with_types
from compute_correlated_feature_groups import correlated_feature_groups, print_features_groups
from data_utils import get_survey_ds


def enhance_with_types_average(df: pd.DataFrame):

    for type in motivation_type_questions.keys():
        df[type] = df[motivation_type_questions[type]].mean(axis=1)

    return df

def build_types_coorelations(df: pd.DataFrame
                             , types
                             , correlation_thresholds = [0.8, 0.5]):

    print("Correlations", len(df))
    compute_correlations(df[types]
                         , correlations_file=join(STATS_PATH
                                                  , 'types_correlations.csv')
                         , correlation_thresholds=correlation_thresholds)

    df['is_github'] = df.apply(lambda x: 'github' in x[REPOSITORY_QUESTION].lower()
                               , axis=1)


    print("GitHub correlations", len(df[df['is_github'] == True]))
    compute_correlations(df[df['is_github'] == True][types]
                         , correlations_file=join(STATS_PATH
                                                  , 'github_types_correlations.csv')
                         , correlation_thresholds=correlation_thresholds
                         )

    print("Paid correlations", len(df[df[PAYMENT_COL] == True]))
    compute_correlations(df[df[PAYMENT_COL] == True][types]
                         , correlations_file=join(STATS_PATH
                                                  , 'paid_types_correlations.csv')
                         , correlation_thresholds=correlation_thresholds
                         )


def compute_correlations(df
                         , correlations_file=None
                         , correlation_thresholds = [0.8, 0.5]):

    corr = df.corr()
    if correlations_file:
        corr.to_csv(correlations_file)
    #print(corr)



    for i in correlation_thresholds:
        print("\n\nCorrelation groups for threshold", i)

        correlated_groups = correlated_feature_groups(corr
                                                      , threshold=i)

        print_features_groups(correlated_groups
                              , all_features=df.columns)

def check_community_recognition_similarity():
    pures = {'Recognition' : ['Q96' # I try to write high quality code because others will see it
                   , 'Q95' # I contribute to open source in order to have an online portfolio
                   , 'Q77' # I get recognition due to my contribution to the repository
                   ]

, 'Community': ['Q76' # The community is very professional.
                , 'Q83.1' # The repository’s community of developers is more motivated than that of other repositories.
                , 'Q75' # Belonging to the  community is motivating my work on the repository.
                ]
}
    df = get_survey_ds()

    for type in pures.keys():
        df[type] = df[pures[type]].mean(axis=1)

    print("pure recognition/community")
    build_types_coorelations(df
                             , types=pures.keys()
                             , correlation_thresholds=[0.8, 0.5])

def types_correlation_with_motivation():
    df = get_survey_ds()
    df = enhance_with_types_average(df)

    corr = df[motivation_type_questions.keys()].corr()
    print(corr['Motivation'].sort_values())

if __name__ == "__main__":
    check_community_recognition_similarity()

    df = get_survey_ds()
    df = enhance_with_types_average(df)

    build_types_coorelations(df
                             , types=motivation_type_questions.keys())
    types_correlation_with_motivation()

