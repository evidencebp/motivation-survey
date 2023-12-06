# into developer_multiline_message_ratio_dist.csv
select
round(multiline_message_ratio, 2) as f
, count(distinct author_email) as developers
from
general.developer_profile
where
commits >= 200
group by
f
order by
f
;

# into developer_message_length_avg_dist.csv
select
round(message_length_avg) as f
, count(distinct author_email) as developers
from
general.developer_profile
where
commits >= 200
group by
f
order by
f
;


# into developer_tests_presence_dist.csv
select
round(tests_presence, 2) as f
, count(distinct author_email) as developers
from
general.developer_profile
where
commits >= 200
group by
f
order by
f
;


# into developer_ccp_dist.csv
select
round(ccp, 2) as f
, count(distinct author_email) as developers
from
general.developer_profile
where
commits >= 200
group by
f
order by
f
;


# into developer_commits_per_day_dist.csv
select
round(commits_per_day, 2) as f
, count(distinct author_email) as developers
from
general.developer_profile
where
commits >= 200
group by
f
order by
f
;