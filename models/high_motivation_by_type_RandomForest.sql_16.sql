create or replace function rf__16 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Learning <= 0.5 then
      0.0 
  else  # if Learning > 0.5
    case when Hostility <= 0.5 then
        0.6266666666666667 
    else  # if Hostility > 0.5
        0.4755043227665706 
    end   end )