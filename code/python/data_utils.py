from os.path import join

import pandas as pd

from configuration import DATA_PATH, ANON_SURVEY_FILE, SURVEY_FILE, RAW_FOLLOWUP_FILE, ANON_FOLLOWUP_FILE\
    , SAME_REPO_QUESTION, BEING_PAID_QUESTION, PAYMENT_COL

def get_survey_ds(anon=True):

    if anon:
        df = pd.read_csv(join(DATA_PATH, ANON_SURVEY_FILE)
                         , low_memory=False)

    else:
        df = pd.read_csv(join(DATA_PATH, SURVEY_FILE)
                         , low_memory=False)

    # Removing self answers
    df = df[~df.ResponseId.isin(['R_3dH9w9dgO9wZvGr' 'R_33BbwVZsKgdfWXZ'])]
    df[PAYMENT_COL] = df[BEING_PAID_QUESTION].map(lambda x: 1 if x == 1 else 0 if x ==2 else None)

    return df

def get_followup_ds(anon=True
                    , same_project_only=False):
    SAME = 1

    if anon:
        df = pd.read_csv(join(DATA_PATH, ANON_FOLLOWUP_FILE)
                             , low_memory=False)
    else:
        df = pd.read_csv(join(DATA_PATH, RAW_FOLLOWUP_FILE)
                             , low_memory=False)

    # Removing self answers
    df = df[~df.ResponseId.isin(['R_2TABYazpcAafPdt'])]
    df[PAYMENT_COL] = df[BEING_PAID_QUESTION].map(lambda x: 1 if x == 1 else 0 if x ==2 else None)

    if same_project_only:
        df = df[df[SAME_REPO_QUESTION] == SAME]


    return df
