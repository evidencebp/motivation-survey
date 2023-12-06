create or replace function rf__64 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Challenge <= 0.5 then
    case when Ideology <= 0.5 then
        0.0 
    else  # if Ideology > 0.5
        0.002631578947368421 
    end   else  # if Challenge > 0.5
      0.5419501133786848 
  end )