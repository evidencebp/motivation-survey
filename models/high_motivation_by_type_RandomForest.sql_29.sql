create or replace function rf__29 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Hostility <= 0.5 then
    case when Joy <= 0.5 then
        0.0 
    else  # if Joy > 0.5
        0.12173913043478261 
    end   else  # if Hostility > 0.5
      0.5422740524781341 
  end )