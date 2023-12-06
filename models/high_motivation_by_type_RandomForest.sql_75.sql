create or replace function rf__75 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
      0.04684512428298279 
  else  # if Community > 0.5
      0.46546546546546547 
  end )