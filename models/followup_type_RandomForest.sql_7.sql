create or replace function rf__7 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Ideology <= 0.5 then
     return 0.16129032258064516 # (5.0 out of 31.0)
  else  # if Ideology > 0.5
     return 0.2727272727272727 # (3.0 out of 11.0)
  end )