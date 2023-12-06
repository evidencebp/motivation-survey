create or replace function rf__22 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Learning <= 0.5 then
      0.0010080645161290322 
  else  # if Learning > 0.5
    case when Payment <= 0.5 then
        0.47706422018348627 
    else  # if Payment > 0.5
        0.5562130177514792 
    end   end )