create or replace function rf__71 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Motivation <= 0.5 then
      0.0 
  else  # if Motivation > 0.5
    case when Community <= 0.5 then
        0.6206896551724138 
    else  # if Community > 0.5
        0.501466275659824 
    end   end )