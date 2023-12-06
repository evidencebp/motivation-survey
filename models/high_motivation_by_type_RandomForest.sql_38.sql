create or replace function rf__38 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Challenge <= 0.5 then
      0.004210526315789474 
  else  # if Challenge > 0.5
    case when Hostility <= 0.5 then
        0.7037037037037037 
    else  # if Hostility > 0.5
        0.5258620689655172 
    end   end )