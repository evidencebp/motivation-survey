create table
general.unsent_emails
as
select
string_field_0 as public_email
, string_field_1 as author_name
, string_field_2 as hashed_email
from
general.unsent
where
string_field_3 is null
;

create table
general.unsent_emails_repos
as
select
repo_name
, p.*
from
general.developer_per_repo_profile as a
join
general.unsent_emails as p
on
a.author_email = p.hashed_email
;


select
r.*
from
general.unsent_emails_repos as r
join
(
select
repo_name
, count(*) as developers
from
general.unsent_emails_repos
group by
repo_name
having
count(*) >= 15
) as mult
on
r.repo_name = mult.repo_name
order by
r.repo_name
, author_name
, public_email
;