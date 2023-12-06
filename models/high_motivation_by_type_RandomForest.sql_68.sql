create or replace function rf__68 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Challenge <= 0.5 then
      0.0010235414534288639 
  else  # if Challenge > 0.5
    case when Payment <= 0.5 then
        0.4669603524229075 
    else  # if Payment > 0.5
        0.5142857142857142 
    end   end )