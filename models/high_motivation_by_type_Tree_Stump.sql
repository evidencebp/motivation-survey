create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Enjoyment <= 0.5 then
     return 0.2620689655172414 # (38.0 out of 145.0)
  else  # if Enjoyment > 0.5
     return 0.6666666666666666 # (180.0 out of 270.0)
  end )