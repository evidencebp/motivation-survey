df = pd.read_csv('c:/idan/GitHub/motivation/data/public_emails_prev.csv')
df = df.drop_duplicates()
df.to_csv('c:/idan/GitHub/motivation/data/developers_by_public_email.csv', index=False)
df = df[~df.email.isna()]
df = df[df.email.str.contains('@')]
df =  df[~df.email.str.contains('users.noreply.github.com')]
df.to_csv('c:/idan/GitHub/motivation/data/developers_with_public_email.csv', index=False)



import pandas as pd
df = pd.read_csv(join(DATA_PATH, 'involved_developers_2020_public_email_v1_to_2.csv'))
df = df[~df.isna()]
df = df[df.output != 'Error in fetch']
df = df[~df.isnull()]
df = df.fillna(-1)
df = df[df.output != -1]
df = df[~df.author_email.str.contains('users.noreply.github.com')]
df = df[~df.output.str.contains('users.noreply.github.com')]
df = df[df.output.str.contains('@')]
df = df.drop_duplicates()
df.columns = ['author_email', 'public_email']
df.to_csv('/Users/idan/Downloads/involved_developers_2020_public_emails.csv', index=False)
