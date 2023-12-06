create table
motivation.repos_by_public
as
select
repo_name
, count(distinct email) as public_developers
from
ccp.author_per_repo_per_year as a
join
motivation.developers_with_public_email as p
on
a.author_email = p.hashed_email
where
year = 2019
and
commits > 11
group by
repo_name
;


select
public_developers
, count(distinct repo_name) as repositories
from
motivation.repos_by_public
group by
public_developers
order by
public_developers
;