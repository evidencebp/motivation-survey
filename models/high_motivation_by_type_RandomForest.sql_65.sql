create or replace function rf__65 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Ownership <= 0.5 then
      0.0 
  else  # if Ownership > 0.5
      0.5184331797235023 
  end )