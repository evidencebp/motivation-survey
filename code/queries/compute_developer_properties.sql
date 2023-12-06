drop table if exists ccp.author_per_repo_per_year;

create table


as
select
c.repo_name
, extract(year from c.commit_date) as year
, author_email
, min(commit) as min_commit # Sample commit, used for identification in GitHub
, max(commit) as max_commit
, substr(c.author_email, STRPOS(c.author_email ,'@') + 1) as author_email_domain
, TIMESTAMP_DIFF(max(c.commit_date), min(c.commit_date), day) as commit_period
, count(distinct c.commit) as commits
, count(distinct c.commit_date) as commit_days
from
ccp.active_2019_commits as c
join
ccp.repos as r
on
c.repo_name = r.repo_name
where
r.y2019_ccp > 0
and
r.y2019_ccp < 1
and
extract(year from c.commit_date) = 2019
group by
c.repo_name
, year
, c.author_email
;