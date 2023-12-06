create or replace function rf__9 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Hostility <= 0.5 then
     return 0.1111111111111111 # (3.0 out of 27.0)
  else  # if Hostility > 0.5
     return 0.26666666666666666 # (4.0 out of 15.0)
  end )