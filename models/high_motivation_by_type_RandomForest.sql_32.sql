create or replace function rf__32 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Joy <= 0.5 then
      0.0 
  else  # if Joy > 0.5
    case when Ownership <= 0.5 then
        0.0 
    else  # if Ownership > 0.5
        0.514218009478673 
    end   end )