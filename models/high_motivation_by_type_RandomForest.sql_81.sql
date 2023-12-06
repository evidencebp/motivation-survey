create or replace function rf__81 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Importance <= 0.5 then
      0.0 
  else  # if Importance > 0.5
    case when Payment <= 0.5 then
        0.48484848484848486 
    else  # if Payment > 0.5
        0.6271186440677966 
    end   end )