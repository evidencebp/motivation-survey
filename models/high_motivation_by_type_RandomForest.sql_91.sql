create or replace function rf__91 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Learning <= 0.5 then
    case when Recognition <= 0.5 then
        0.0 
    else  # if Recognition > 0.5
        0.004464285714285714 
    end   else  # if Learning > 0.5
    case when Payment <= 0.5 then
        0.5071090047393365 
    else  # if Payment > 0.5
        0.6318681318681318 
    end   end )