from os.path import join
import pandas as pd

from configuration import DATA_PATH, REPLY_EMAIL_QUESTION, RAW_FOLLOWUP_FILE
from data_utils import get_survey_ds

def get_followup_emails():

    GITHUB_REPO_QUESTION = 'Q29'

    df = get_survey_ds(anon=False)

    df = df[df[REPLY_EMAIL_QUESTION].str.contains('@')]
    df[GITHUB_REPO_QUESTION] = df[GITHUB_REPO_QUESTION].map(lambda x: '' if x == '0' else x)
    df = df[[REPLY_EMAIL_QUESTION, GITHUB_REPO_QUESTION]].drop_duplicates()
    df = df.rename(columns={REPLY_EMAIL_QUESTION: 'Email'
                            , GITHUB_REPO_QUESTION: 'ExternalDataReference'})
    df = df.sort_values(['Email'])

    df.to_csv(join(DATA_PATH, "followup_emails.csv")
              , index=False)

    print("emails", len(df))

    return df

def get_unanswered_followup_emails():
    answers_df = pd.read_csv(join(DATA_PATH, RAW_FOLLOWUP_FILE))
    answer_emails = answers_df['RecipientEmail'].unique()

    followup_df = get_followup_emails()
    unanswered_followup = followup_df[~followup_df['Email'].isin(answer_emails)]

    unanswered_followup.to_csv(join(DATA_PATH, "unanswered_followup.csv")
              , index=False)

    print("emails", len(unanswered_followup))

    return unanswered_followup

if __name__ == "__main__":
    #get_followup_emails()
    get_unanswered_followup_emails()
