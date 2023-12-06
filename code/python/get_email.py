"""
Getting developers email from web API.
method taken from https://stackoverflow.com/questions/12686545/how-to-leave-a-message-for-a-github-com-user

Also https://github.com/Moskovych

https://stackoverflow.com/questions/4259996/how-can-i-view-a-git-log-of-just-one-users-commits

"""

import pandas as pd
import re
import time
import urllib

# Emails API???
# https://api.github.com/users/octocat/emails
# https://api.github.com/users/octocat
#https://developer.github.com/v3/users/emails/
# https://api.github.com/users/octocat/public_emails
# https://pygithub.readthedocs.io/en/latest/github_objects/NamedUser.html#github.NamedUser.NamedUser


tests = {
    'sfsfd' : 'Not found' # non existing user
    , 'i110' : 'i.nagata110@gmail.com'
    , 'Anna' : ''
}


def get_deveploer_public_events_link(developer_name):
    link_template = "https://api.github.com/users/{}/events/public"
    link = link_template.format(developer_name.replace(' ', '-'))

    return link

def get_developer_page_link(developer_name):
    link_template = "https://github.com/{}"
    link = link_template.format(developer_name.replace(' ', '-'))

    return link

def get_link_content(link):
    f = urllib.urlopen(link)
    content = f.read()

    return content


def print_as_needed(text
                    , verbose=False):
    if verbose:
        print (text)


def get_developer_email(developer_name
                        , verbose=True):

    NO_PUBLIC = '[]'
    email = "Not found"
    pattern = r'"author":{"email":"(?P<address>[A-Za-z0-9_\-\.@]+)\",'
    link = get_deveploer_public_events_link(developer_name)
    try:
        print_as_needed(developer_name, verbose)
        content = get_link_content(link)
        print_as_needed(content, verbose)
        matches = re.findall(pattern, content)
        if len(matches) > 0:
            email = matches[0]
        elif content == NO_PUBLIC:
            email = "No Public Content"
        elif content.startswith('{"message":"Not Found"'):
            email = "User Not found"
        else:
            email = "Found content without email"

    except:
        email = "Error fetching email"

    return email

def get_developers_emails(developers_file
                          , output_file
                          , batch=10000
                          , sleep_time=60):

    email_list = []
    developers = pd.read_csv(developers_file)

    developers = developers[developers.email.isna()]
    developers = developers[developers.email.isna()].Author_name.unique()[:batch]

    current_row = 0

    for i in developers:
        email = get_developer_email(i)
        email_list.append((i, email))
        time.sleep(sleep_time)

        current_row = current_row + 1
        if current_row % 100 == 0:
            print ("processing row", current_row)
            email_df = pd.DataFrame(email_list, columns=['Author_name', 'email'])
            email_df.to_csv(output_file, index=False)

    email_df = pd.DataFrame(email_list, columns=['Author_name', 'email'])
    email_df.to_csv(output_file, index=False)

    return email_df


