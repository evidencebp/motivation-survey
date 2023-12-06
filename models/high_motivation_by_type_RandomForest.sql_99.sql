create or replace function rf__99 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Hostility <= 0.5 then
    case when Learning <= 0.5 then
        0.0 
    else  # if Learning > 0.5
        0.6436781609195402 
    end   else  # if Hostility > 0.5
    case when Payment <= 0.5 then
        0.4318181818181818 
    else  # if Payment > 0.5
        0.6 
    end   end )