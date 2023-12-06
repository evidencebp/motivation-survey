# Note that a developer will appear for each repository that he is active in.
# Since it increases probability of fetching the email, we are OK with that in this phase.
# Standard Sql
# developers_list_with_commits.csv
select
repo_name
, author_email
, min(min_commit) as min_commit
, max(max_commit) as max_commit
from
general.developer_per_repo_profile_per_year
where
year = 2020
and commits >= 12
group by
repo_name
, author_email
;