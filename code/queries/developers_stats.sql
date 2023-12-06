Select
commits
, count(*) as developers
from
ccp.author_per_repo_per_year
group by
commits
order by
commits
;
