create or replace function rf__2 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Recognition <= 0.5 then
     return 0.0 # (0.0 out of 15.0)
  else  # if Recognition > 0.5
     return 0.25925925925925924 # (7.0 out of 27.0)
  end )