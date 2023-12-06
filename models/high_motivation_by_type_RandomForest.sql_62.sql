create or replace function rf__62 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Self-use <= 0.5 then
      0.0 
  else  # if Self-use > 0.5
      0.49391727493917276 
  end )