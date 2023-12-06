create or replace function rf__69 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Challenge <= 0.5 then
      0.0010695187165775401 
  else  # if Challenge > 0.5
      0.509009009009009 
  end )