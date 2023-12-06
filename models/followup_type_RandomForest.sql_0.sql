create or replace function rf__0 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
     return 0.16 # (4.0 out of 25.0)
  else  # if Community > 0.5
     return 0.35294117647058826 # (6.0 out of 17.0)
  end )