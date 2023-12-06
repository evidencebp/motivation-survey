create or replace function rf__57 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Joy <= 0.5 then
      0.0 
  else  # if Joy > 0.5
    case when Importance <= 0.5 then
        0.0 
    else  # if Importance > 0.5
        0.4965675057208238 
    end   end )