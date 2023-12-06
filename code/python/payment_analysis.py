from configuration import PAYMENT_COL, DEV_KEY, MOTIVATION_QUESTION

from binning_utils import columns_sides_binning
from data_utils import get_survey_ds
from feature_pair_analysis import pair_analysis

def payment_analysis():

    df = get_survey_ds()
    print(df.groupby(PAYMENT_COL).agg({DEV_KEY: 'count'
                                        , MOTIVATION_QUESTION : 'mean'}))

    df = columns_sides_binning(df=df
                  , columns=[MOTIVATION_QUESTION]
                  , labels=[0,1]
                  , quantiles = [ .5, 1])

    df = df[~df[PAYMENT_COL].isna()]
    #df[PAYMENT_COL] = df[PAYMENT_COL].astype(int)
    df = df[~df[MOTIVATION_QUESTION].isna()]
    df[MOTIVATION_QUESTION] = df[MOTIVATION_QUESTION].astype(bool)

    cm = pair_analysis(df
                  , first_metric=PAYMENT_COL
                  , second_metric=MOTIVATION_QUESTION
                  , metrics=None)

    print(cm)


if __name__ == "__main__":
    payment_analysis()