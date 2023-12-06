
# into repo_start_year_dist.csv
SELECT
extract(year from min_commit_time) as year
 # FIRST_ANALYZED_YEAR = 2008
, count(distinct repo_name) as repos
FROM general.repo_properties
group by
year
order by
year
;



SELECT repo_name
, language_code
, Is_Company

, case
when authors = 1 then 'Single'
when authors <= 10 then 'Small'
when authors <= 100 then 'Medium'
else  'Large'
end as developer_group

, case
when stars <= 8 then 'Low'
when stars <= 422 then 'Medium'
when stars < 5028 then 'High'
else 'Extraordinary'
end as popularity_group

, case
when extract(year from min_commit_time) < 2008 then 'Pre GitHub'
when 2008 <= extract(year from min_commit_time)  and extract(year from min_commit_time)  <= 2013 then 'Old'
when 2014 <= extract(year from min_commit_time)  and extract(year from min_commit_time)  <= 2016 then 'Medium'
when 2016 < extract(year from min_commit_time)  then 'New'
else  'Error'
end as age_group
FROM general.repo_properties
;

