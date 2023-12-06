from configuration import DEV_KEY
from data_utils import get_survey_ds

from configuration import HIGH_ANSWER

def verify_metrics():

    TESTS_QUESTION = 'Q93' # 'I write tests for my code'
    MESSAGES_QUESTION = 'Q94' # 'I write detailed commit messages'
    HIGH_QUALITY_CODE_ANSWER = 'Q88' # 'My code is of high quality'
    PRODUCTIVE_QUESTION = 'Q85' # 'I am a relatively productive programmer'

    df = get_survey_ds()

    df['high_tests'] = df[TESTS_QUESTION].map(lambda x: None if x is None else x >= HIGH_ANSWER)
    print(df.groupby('high_tests').agg({DEV_KEY: 'count'
                                        , 'dev_tests_presence': 'mean'}))

    df['detailed_messages'] = df[MESSAGES_QUESTION].map(lambda x: None if x is None else x >= HIGH_ANSWER)
    print(df.groupby('detailed_messages').agg({DEV_KEY: 'count'
                                           , 'dev_multiline_message_ratio': 'mean'}))

    print(df.groupby('detailed_messages').agg({DEV_KEY: 'count'
                                           ,  'dev_message_length_avg': 'mean'}))


    df['quality_code'] = df[HIGH_QUALITY_CODE_ANSWER].map(lambda x: None if x is None else x >= HIGH_ANSWER)
    print(df.groupby('quality_code').agg({DEV_KEY: 'count'
                                           , 'dev_files_owned_ccp': 'mean'}))

    print(df.groupby('quality_code').agg({DEV_KEY: 'count'
                                           ,  'dev_ccp': 'mean'}))




    df['productive'] = df[PRODUCTIVE_QUESTION].map(lambda x: None if x is None else x >= HIGH_ANSWER)
    print(df.groupby('productive').agg({DEV_KEY: 'count'
                                           , 'dev_same_day_duration_avg': 'mean'}))

    print(df.groupby('productive').agg({DEV_KEY: 'count'
                                           ,  'dev_commits_per_day': 'mean'}))


if __name__ == "__main__":
    verify_metrics()
