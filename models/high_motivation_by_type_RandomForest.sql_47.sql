create or replace function rf__47 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Payment <= 0.5 then
    case when Motivation <= 0.5 then
        0.0 
    else  # if Motivation > 0.5
        0.4331983805668016 
    end   else  # if Payment > 0.5
      0.43805309734513276 
  end )