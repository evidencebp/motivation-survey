from os.path import join
import pandas as pd

import collections

from configuration import DATA_PATH, JOB_SATISFACTION
from questions_utils import get_question_text

DEV_FILE = 'Developers survey_July_15_2022.csv'
FOLLOWUP_FILE = 'Developers survey follow up_July_15_2022.csv'
FOLLOWUP_MOD_FILE = 'Developers survey follow up_July_15_2022_Modified.csv'
GIT_FILE = 'GitHub Developers survey_July_15_2022.csv'

def check_multiple_columns():

    # See also https://towardsdatascience.com/a-few-times-i-managed-to-broke-pandas-d3604d43708c
    df = pd.DataFrame([(1, 2), (3,4)]
                      , columns=['Dup', 'Dup'])
    print(df['Dup'])
    print(df['Dup'].max())
    #print(df['Dup'].value_counts()) #ValueError: Grouper for 'Dup' not 1-dimensional
    print(df.corr())
    print(df.corr()['Dup']['Dup'])

def find_duplicated_column_names():
    df = pd.read_csv(join(DATA_PATH
                          , DEV_FILE))
    col = df.columns

    # No duplicates, ".1" seem to be added to the second one.
    # also "_" appeared in raw for some reason
    print([(item, count) for item, count in collections.Counter(col).items() if count > 1])

    follow_df = pd.read_csv(join(DATA_PATH
                          , FOLLOWUP_FILE))
    col = follow_df.columns
    print([(item, count) for item, count in collections.Counter(col).items() if count > 1])


def match_columns(first_file
                  , second_file):
    df = pd.read_csv(first_file)
    df =df[0:2]
    df = df.T
    df = df.reset_index()
    df.columns = ['index', 'text', 'import']

    follow_df = pd.read_csv(second_file)
    follow_df =follow_df[0:2]
    follow_df = follow_df.T
    follow_df = follow_df.reset_index()
    follow_df.columns = ['index', 'text', 'import']

    joint = pd.merge(df
                    , follow_df
                    , on='index')
    print('same index, different text'
          , joint[joint['text_x'] != joint['text_y']])

    joint = pd.merge(df
                     , follow_df
                     , on='text')
    print('same text, different index'
          , joint[joint['index_x'] != joint['index_y']])


    joint = pd.merge(df
                     , follow_df
                     , on='import')
    print('same import, different index'
          , joint[joint['index_x'] != joint['index_y']])

    print('same import, different text'
          , joint[joint['text_x'] != joint['text_y']])

    print(len(follow_df)
          )

def job_satisfaction_questions():

    for i in range(len(JOB_SATISFACTION)):
        print(i
              , JOB_SATISFACTION[i]
              , get_question_text(JOB_SATISFACTION[i]))

if __name__ == "__main__":
    #check_multiple_columns()
    #find_duplicated_column_names()
    """
    print("dev and followup")
    match_columns(first_file=join(DATA_PATH
                          , DEV_FILE)
                  , second_file=join(DATA_PATH
                          , FOLLOWUP_FILE))

    print("dev and followup")
    match_columns(first_file=join(DATA_PATH
                          , DEV_FILE)
                  , second_file=join(DATA_PATH
                          , FOLLOWUP_MOD_FILE))


    print("dev and git")
    match_columns(first_file=join(DATA_PATH
                          , DEV_FILE)
                  , second_file=join(DATA_PATH
                          , GIT_FILE))
    """
    job_satisfaction_questions()