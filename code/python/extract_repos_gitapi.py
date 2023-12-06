from os.path import join
from github import Github
import json
import pandas as pd
from time import sleep

from configuration import DATA_PATH, CORRECTED_REPOS_FILES\
    , GIT_REPO_PROPERTIES

from batch_process import BatchProcessor
from cred import GITHUB_TOKEN

GIT_OUTPUT_FILE = 'survey_repos_gitapi.csv'

KEY = 'repo_name'

git_interface = Github(GITHUB_TOKEN)


def extract_repo_properties_wrapper(repo):
    return extract_repo_properties(repo[KEY]
                    , git_interface)

def extract_repo_properties(repo
                            , git_interface):
    """
    Extract repository properties.

    Note that a repository's properties might not be found due to
    few cases:
    - Repository was deleted
    - Repository was renamed
    - Repository was turn private
    - Quota was used
    - A temporal error in the API

    Due to the last two reasons it is recommended to run the script more
    than once.

    :param repo:
    :return:
    """
    properties = {}

    r = git_interface.get_repo(repo)

    #import pdb; pdb.set_trace()
    properties['forks_count'] = r.forks_count
    properties['language'] = r.language
    properties['network_count'] = r.network_count
    properties['open_issues_count'] = r.open_issues_count
    properties['stargazers_count'] = r.stargazers_count
    properties['subscribers_count'] = r.subscribers_count
    properties['watchers_count'] = r.watchers_count
    properties['license'] = r._rawData['license']['name']
    # properties['fork'] = r.fork

    return properties

def pause_for_quota(min_quota=1000
                    , sleep_duration=60*5):
    while git_interface.get_rate_limit().core.remaining < min_quota:
        sleep(sleep_duration)



def get_repositories(input_file
                     , output_file):
    bp_properties = BatchProcessor(input_file=input_file
                        , output_file=output_file

                        , prev_file=None
                        , fetch_function=extract_repo_properties_wrapper
                        , keys=[KEY]
                        , error_file=join(DATA_PATH
                                        , 'gitapi_errors.csv')
                        , pause_function=pause_for_quota
                        )
    bp_properties.process()


def topics_st_to_set(json_str):
    HOLDER = '###HOLDER###'
    json_str = json_str.replace('"', HOLDER)
    json_str = json_str.replace("'", '"')
    json_str = json_str.replace(HOLDER, '"')
    json_str = json_str.replace("None", '""')
    return json.loads(json_str)


def properties_etl(df):

    records = []
    for _, i in df.iterrows():
        try:
            properties = topics_st_to_set(i['output'])
            records.append((i.repo_name
                            , properties['language']
                            , properties['license']
                            , properties['forks_count']
                            , properties['network_count']
                            , properties['open_issues_count']
                            , properties['stargazers_count']
                            , properties['subscribers_count']
                            , properties['watchers_count']
                            ))
        except:
            print("error processing ", i)

    res_df = pd.DataFrame(records, columns=['repo_name', 'language', 'license', 'forks_count', 'network_count'
        , 'open_issues_count', 'stargazers_count', 'subscribers_count', 'watchers_count'])

    return res_df


def structure_properties_file(input_file
                              , output_file):
    df = pd.read_csv(input_file)
    structured_df = properties_etl(df)
    structured_df.to_csv(output_file
                         , index=False)

def run_fetch_repo_gitapi():

    get_repositories(input_file=join(DATA_PATH
                                        , CORRECTED_REPOS_FILES)
                     , output_file=join(DATA_PATH
                                        , GIT_OUTPUT_FILE))

    structure_properties_file(input_file=join(DATA_PATH
                                              , GIT_OUTPUT_FILE)
                              , output_file=join(DATA_PATH
                                              , GIT_REPO_PROPERTIES))


def run_fetch_all_repo_gitapi():

    TMP = 'repos_2020_fetched.csv'
    get_repositories(input_file=join(DATA_PATH
                                        , 'repos_2020.csv')
                     , output_file=join(DATA_PATH
                                        , TMP))

    structure_properties_file(input_file=join(DATA_PATH
                                              , TMP)
                              , output_file=join(DATA_PATH
                                              , 'repos_2020_api_properties.csv'))

if __name__ == "__main__":
    run_fetch_repo_gitapi()
    run_fetch_all_repo_gitapi()
