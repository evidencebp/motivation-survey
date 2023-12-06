from datetime import datetime
from os.path import join
import json
import pandas as pd
from time import sleep

from configuration import DATA_PATH, SURVEY_FILE , ANON_SURVEY_FILE, RAW_FOLLOWUP_FILE, ANON_FOLLOWUP_FILE\
    , ENHANCED_CORRECTED_REPOS_FILE, BG_REPO_FILE, GIT_REPO_PROPERTIES, DEVELOPER_BEHAVIOUR_FILE \
    ,GIT_PROFILE_QUESTION, REPLY_EMAIL_QUESTION

from batch_process import BatchProcessor
from file_utils import prefix_columns


CORRECTED_REPO_COL = 'correct_repo_name'
KEY = 'repo_name'


MAXIMAL_ANSWER_TIME = datetime(year=2021
                               , month=1
                               , day=1)
MINMIAL_ACTIVITY_DAYS = 3*30


def enhance_survey_with_repo_bq(survey_file
                           , repo_bq_file):

    keys = [KEY]
    survey_df = pd.read_csv(survey_file)

    bq_df = pd.read_csv(repo_bq_file)
    bq_df = prefix_columns(df=bq_df
                   , prefix='repo_'
                   , columns=set(bq_df.columns) - set(keys))

    df = pd.merge(survey_df
                  , bq_df
                  , how='left'
                  , left_on=[CORRECTED_REPO_COL]
                  , right_on=keys)


    return df

def enhance_survey_with_gitapi():

    survey_file = join(DATA_PATH
                    ,SURVEY_FILE)
    df = pd.read_csv(survey_file)

    git_df = pd.read_csv(join(DATA_PATH
                            , GIT_REPO_PROPERTIES))
    keys = [KEY]
    git_df = prefix_columns(df=git_df
                   , prefix='repo_'
                   , columns=set(git_df.columns) - set(keys))


    git_df = git_df.rename(columns={KEY: CORRECTED_REPO_COL})

    df = pd.merge(df
                  , git_df
                  , on=CORRECTED_REPO_COL
                  , how='left')
    df.to_csv(join(DATA_PATH
                    ,ENHANCED_CORRECTED_REPOS_FILE)
               , index=False)

def run_enhance_survey_with_repo_bq():
    survey_file = join(DATA_PATH
                    ,ENHANCED_CORRECTED_REPOS_FILE)
    repo_bq_file = join(DATA_PATH
                    ,BG_REPO_FILE)

    df = enhance_survey_with_repo_bq(survey_file
                           , repo_bq_file)

    df.to_csv(join(DATA_PATH
                    ,ENHANCED_CORRECTED_REPOS_FILE)
               , index=False)

def enhance_with_developer_behaviour():

    behaviour_keys = ['repo_name', 'author_name']

    survey_file = join(DATA_PATH
                    ,ENHANCED_CORRECTED_REPOS_FILE)
    survey_df = pd.read_csv(survey_file)


    behaviour_df = pd.read_csv(join(DATA_PATH
                                    , DEVELOPER_BEHAVIOUR_FILE))

    behaviour_df = prefix_columns(df=behaviour_df
                   , prefix='dev_'
                   , columns=set(behaviour_df.columns) - set(behaviour_keys))


    df = pd.merge(survey_df
                  , behaviour_df
                  , left_on=['correct_repo_name', 'corrected_profile']
                  , right_on=behaviour_keys
                  , how='left'
                  )

    df['old_enough'] = df.answer_day.map(lambda x: datetime.strptime(str(x), '%Y-%M-%d') < MAXIMAL_ANSWER_TIME )
    df['Churn'] = df.apply(lambda x: 'Unknown' if pd.isnull(x.dev_max_commit_timestamp)
                                         else
    'Active'  if (datetime.strptime(str(x.dev_max_commit_timestamp)[:10], '%Y-%M-%d')
                            - datetime.strptime(str(x.answer_day), '%Y-%M-%d')).days > MINMIAL_ACTIVITY_DAYS
    else 'Not Active'
                           , axis=1)

    df.to_csv(join(DATA_PATH
                    ,ENHANCED_CORRECTED_REPOS_FILE)
               , index=False)


def anonymize_survey(input_file: str
                     , anon_file: str):

    SALT = ''
    columns_to_sign = [REPLY_EMAIL_QUESTION
                       , 'RecipientEmail', 'repo_Author_email', 'dev_author_email', 'dev_author_email_domain'
                       ]

    columns_to_remove = ['IPAddress', 'RecipientLastName', 'RecipientFirstName'
        , 'LocationLatitude', 'LocationLongitude',GIT_PROFILE_QUESTION
        , 'cannonized_profile', 'corrected_profile', 'correct_repo_name', 'repo_name', 'author_name'
        , 'user', 'project', 'repo_name_y', 'repo_name_x', 'repo_name',
       'dev_author_email', 'author_name', 'dev_names', 'repo_min_commit', 'repo_max_commit'
                         ]


    anon_df = pd.read_csv(input_file)
    for i in columns_to_sign:
        if i in anon_df.columns:
            anon_df[i] = anon_df[i].map(lambda x: hash(str(x) + SALT))


    for i in columns_to_remove:
        if i in anon_df.columns:
            anon_df = anon_df.drop(columns=[i])

    anon_df.to_csv(anon_file
                    , index=False)

def run_anonymize_survey():

    anonymize_survey(input_file=join(DATA_PATH
                                    , ENHANCED_CORRECTED_REPOS_FILE)
                               , anon_file=join(DATA_PATH
                                    , ANON_SURVEY_FILE))

    anonymize_survey(input_file=join(DATA_PATH
                                    , RAW_FOLLOWUP_FILE)
                               , anon_file=join(DATA_PATH
                                    , ANON_FOLLOWUP_FILE))


if __name__ == "__main__":
    enhance_survey_with_gitapi()
    run_enhance_survey_with_repo_bq()
    enhance_with_developer_behaviour()
    run_anonymize_survey()