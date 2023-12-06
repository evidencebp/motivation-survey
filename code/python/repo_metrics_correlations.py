from os.path import join
import pandas as pd

from configuration import STATS_PATH
from compute_correlated_feature_groups import correlated_feature_groups, print_features_groups


def compute_all_correlations():

    correlation_thresholds = [0.8, 0.5, 0.3]

    df = pd.read_csv(r"C:\src\general\data\2021\repos_above_50_by_2022_properties.csv")
    #df = df[set(df.columns).intersection(get_question_keys())]
    corr = df.corr()

    corr.to_csv(join(STATS_PATH, 'repo_all_correlations.csv'))

    for i in correlation_thresholds:
        print("\n\nCorrelation groups for threshold", i)

        correlated_groups = correlated_feature_groups(corr
                                                  , threshold=i)

        print_features_groups(correlated_groups
                          , translation_function=None
                          , all_features=df.columns)




if __name__ == "__main__":
    compute_all_correlations()
