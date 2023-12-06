create or replace function rf__8 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
     return 0.1724137931034483 # (5.0 out of 29.0)
  else  # if Community > 0.5
     return 0.3076923076923077 # (4.0 out of 13.0)
  end )