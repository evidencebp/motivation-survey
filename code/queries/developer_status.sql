drop table if exists motivation.developer_status;


create table
motivation.developer_status
as
select 
base.repo_name
, base.year
, base.author_email
, case when cont.repo_name is not null then 'Continue' 
else case when replacement.repo_name is not null then 'Abandoned' else 'No activity' end end as status
from
ccp.author_per_repo_per_year as base
left join
ccp.author_per_repo_per_year as cont
on
base.repo_name = cont.repo_name
and
base.author_email = cont.author_email
and
base.year +1 = cont.year
left join
ccp.author_per_repo_per_year as replacement
on
base.repo_name != replacement.repo_name
and
base.author_email = replacement.author_email
and
base.year +1 = replacement.year
where
base.year > 2008 #= 2018
and
base.commits >= 50
;
