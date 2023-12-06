create or replace function rf__4 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Ownership <= 0.5 then
     return 0.16 # (4.0 out of 25.0)
  else  # if Ownership > 0.5
     return 0.17647058823529413 # (3.0 out of 17.0)
  end )