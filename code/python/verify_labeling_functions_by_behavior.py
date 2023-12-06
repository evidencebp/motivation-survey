from os.path import join
import pandas as pd
from scipy.stats import entropy
from sklearn.metrics import mutual_info_score

from configuration import DATA_PATH

LABELING_FILE = 'labeling_cooccurrence.csv'
BEHAVIOUR_LABELING_FUNCTIONS = ['Continued', 'high_message_length', 'high_refactor', 'high_hours']

def compute_correlations(df):

    print("Pearson correlations")
    print(df.corr())

def entropy_analysis(df):

    ind_entropy = 0
    for i in BEHAVIOUR_LABELING_FUNCTIONS:
        print(i)
        print(df[i].value_counts(normalize=True))
        cur_entropy = entropy(df[i].value_counts(normalize=True))
        print("entropy"
              , cur_entropy)
        ind_entropy += cur_entropy

    df['dummy'] = 1
    g = df.groupby(BEHAVIOUR_LABELING_FUNCTIONS).agg({'dummy': 'count'})
    g['prob'] = g['dummy']/len(df)
    joint = entropy(g['prob'].values)
    print("Joint entropy"
          , joint)
    print("joint out of ind", joint/ind_entropy)

def prediction(df):
    df['dummy'] = 1
    g = df.groupby(list(set(BEHAVIOUR_LABELING_FUNCTIONS) - {'Continued'})
                   , as_index=False).agg({'Continued': 'mean'
                                          , 'dummy': 'sum'})
    print("Predictions")
    print(g)


def mutual_information_analysis(df):

    for i in range(len(BEHAVIOUR_LABELING_FUNCTIONS)):
        for j in range(len(BEHAVIOUR_LABELING_FUNCTIONS)):
            if i < j:
                print("Mutual information of {first} and {second}".format(first=BEHAVIOUR_LABELING_FUNCTIONS[i]
                                                                          , second=BEHAVIOUR_LABELING_FUNCTIONS[j]))
                print(mutual_info_score(df[BEHAVIOUR_LABELING_FUNCTIONS[i]]
                                        , df[BEHAVIOUR_LABELING_FUNCTIONS[j]]))

def verify():
    df = pd.read_csv(join(DATA_PATH
                                , LABELING_FILE))
    compute_correlations(df)
    entropy_analysis(df)
    prediction(df)
    mutual_information_analysis(df)

if __name__ == "__main__":
    verify()

