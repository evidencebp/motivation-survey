from github import Github
git_interface = Github(GITHUB_USER, GITHUB_PASSWORD)

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
