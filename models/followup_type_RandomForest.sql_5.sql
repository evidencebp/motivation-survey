create or replace function rf__5 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Challenge <= 0.5 then
     return 0.2916666666666667 # (7.0 out of 24.0)
  else  # if Challenge > 0.5
     return 0.05555555555555555 # (1.0 out of 18.0)
  end )