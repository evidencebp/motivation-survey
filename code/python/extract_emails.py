# Asaf Korem, asaf.korem@gmail.com
# PYTHON 3.6
# TODO - check with Asaf

from datetime import datetime
import os
import pandas as pd
import requests

from github import Github

GITHUB_USER = ''
GITHUB_PASSWORD = ''

from configuration import DATA_PATH, COMMITS_FILE, EMAILS_FILE, EMAILS_FILE, NOT_FOUND

def get_commit_email(repo_name : str
                     , commit : str) -> str:
    email = NOT_FOUND
    patch_url = "https://github.com/{repo_name}/commit/{commit}.patch".format(repo_name=repo_name
                                                                              , commit=commit)
    patch_read = requests.get(patch_url)
    from_email = patch_read.text.split('\n')
    if len(from_email) > 1:
        email = str.replace(from_email[1], '\n', '')
        try:
            email = email.split('<')[1].split('>')[0]
        except:
           email = NOT_FOUND

    return email


def get_email_address(repos, commits):
    for i in range(4):
        url_to_read = "https://github.com/"+repos[i]+"/commit/"+commits[i]+".patch"
        patch_read = requests.get(url_to_read)
        from_email = patch_read.text.split('\n')
        if len(from_email) > 1:
            email = str.replace(from_email[1], '\n', '')
            try:
                email = email.split('<')[1].split('>')[0]
            except:
                print("ERROR READING: " + email)
                continue
            print(email)
            return email
    print("Email Not Found")

    return "EMAIL@NOT.FOUND"

def extract_emails(commits_file : str
                   , email_file : str
                   , prev_file : str):

    emails = []
    df = pd.read_csv(commits_file)

    if prev_file:
        emails_df = pd.read_csv(prev_file)
        extracted_emails = emails_df.hashed_email.tolist()
        df = df[~df.author_email.isin(extracted_emails)]

    print("processing records", len(df))

    item = 0;

    for _, i in df.iterrows():
        extracted_email = get_commit_email(repo_name=i.repo_name
                     , commit=i.max_commit)
        if extracted_email == NOT_FOUND:
            extracted_email = get_commit_email(repo_name=i.repo_name
                                               , commit=i.min_commit)
        emails.append((i.author_email
                       , extracted_email))
        item += 1
        if item % 100 == 0:
            emails_df = pd.DataFrame(emails)
            emails_df.columns = ['hashed_email', 'email']

            emails_df.to_csv(email_file, index=False)
            print("Processed {items} items, time {time}".format(items=item
                                                                , time=datetime.now().strftime("%H:%M:%S")))

    emails_df = pd.DataFrame(emails)
    emails_df.columns = ['hashed_email', 'email']

    emails_df.to_csv(email_file, index=False)



git_interface = Github(GITHUB_USER, GITHUB_PASSWORD)

ERROR_IN_FETCH = 'Error in fetch'


def get_public_email(repo_name: str
                     , commit: str
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

def extract_public_emails(commits_file : str
                   , email_file : str
                   , prev_file : str
                   , fetch_function):

    emails = []
    df = pd.read_csv(commits_file)

    if prev_file:
        emails_df = pd.read_csv(prev_file)
        extracted_emails = emails_df.hashed_email.tolist()
        df = df[~df.author_email.isin(extracted_emails)]

    print("processing records", len(df))

    item = 0;
    for _, i in df.iterrows():
        extracted_email = fetch_function(repo_name=i.repo_name
                     , commit=i.max_commit)
        if extracted_email == NOT_FOUND:
            extracted_email = get_commit_email(repo_name=i.repo_name
                                               , commit=i.min_commit)
        emails.append((i.author_email
                       , extracted_email))
        item += 1
        if item % 100 == 0:
            emails_df = pd.DataFrame(emails)
            emails_df.columns = ['hashed_email', 'email']

            emails_df.to_csv(email_file, index=False)
            print("Processed {items} items, time {time}".format(items=item
                                                                , time=datetime.now().strftime("%H:%M:%S")))

    emails_df = pd.DataFrame(emails)
    emails_df.columns = ['hashed_email', 'email']

    emails_df.to_csv(email_file, index=False)


def run_extract_emails():
    extract_emails(commits_file=os.path.join(DATA_PATH, 'involved_developers_2020.csv')
                    , email_file=os.path.join(DATA_PATH, 'involved_developers_2020_emails_v5.csv')
                    , prev_file=os.path.join(DATA_PATH, 'involved_developers_2020_emails_v1_to_4.csv'))

if __name__ == '__main__':
    #df = extract_emails()
    # https://github.com/00-Evan/shattered-pixel-dungeon/commit/0077e36c17ad06573a7eca3c2d63c03b98cfec06.patch
    #email = get_commit_email(repo_name='00-Evan/shattered-pixel-dungeon'
    #                         , commit='0077e36c17ad06573a7eca3c2d63c03b98cfec06')
    #print(email)
    #run_extract_emails()


    extract_public_emails(commits_file=os.path.join(DATA_PATH, 'involved_developers_2020.csv')
                    , email_file=os.path.join(DATA_PATH, 'involved_developers_2020_public_v1.csv')
                    #, prev_file=os.path.join(DATA_PATH, 'last_year_involved_dev_new_by_public.csv')
                    , prev_file=None
    , fetch_function=get_public_email_fetcher)

