"""
 curl -H "Accept: application/vnd.github.mercy-preview+json" https://api.github.com/repos/dipakkr/A-to-Z-Resources-for-Students/topics
{
  "names": [
    "hackathon",
    "students",
    "android",
    "conferences",
    "react",
    "udacity",
    "awesome-list",
    "awesome"
  ]
}
"""

from os.path import join
from github import Github
from time import sleep


from cred import GITHUB_TOKEN
from configuration import DATA_PATH
from batch_process import BatchProcessor


#c = get_link_content(get_reop_topics_link('dipakkr/A-to-Z-Resources-for-Students'))
git_interface = Github(GITHUB_TOKEN)
ERROR_IN_FETCH = 'Error in fetch'



def get_public_email(repo_name : str
                     , commit : str
                     , git_interface):
    email = None
    try:
        repo = git_interface.get_repo(repo_name)
        commit = repo.get_commit(sha=commit)
        email = commit.author.email
    except:
          email = ERROR_IN_FETCH
    return email

def get_public_email_fetcher(repo_name: str
                     , commit: str):

    return get_public_email(repo_name=repo_name
                            , commit=commit
                            , git_interface=git_interface)

def public_email_fetcher(record):

    return get_public_email_fetcher(repo_name=record.repo_name
                                    , commit=record.max_commit)


def pause_for_quota(min_quota=500
                    , sleep_duration=60*5):
    while git_interface.get_rate_limit().core.remaining < min_quota:
        sleep(sleep_duration)


if __name__ == "__main__":

    bp = BatchProcessor(input_file=join(DATA_PATH, 'involved_developers_2020.csv')
                        , output_file=join(DATA_PATH, 'involved_developers_2020_public_email_r6v1.csv')
                        #, prev_file=join(DATA_PATH, 'involved_developers_2020_public_email_tv1_to_1.csv')
                        , prev_file=join(DATA_PATH, 'involved_developers_2020_public_email_r6v1_to_2.csv')
                        , fetch_function=public_email_fetcher
                        , keys=['author_email'] # api.github.com
                        , error_file=join(DATA_PATH, 'involved_developers_2020_public_email_r4v1_errors.csv')
                        , pause_function=pause_for_quota
                        )
    #import pdb; pdb.set_trace()
    bp.process()
