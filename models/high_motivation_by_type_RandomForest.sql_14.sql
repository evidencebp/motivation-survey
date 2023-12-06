create or replace function rf__14 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Learning <= 0.5 then
    case when Recognition <= 0.5 then
        0.0 
    else  # if Recognition > 0.5
        0.0026041666666666665 
    end   else  # if Learning > 0.5
    case when Payment <= 0.5 then
        0.41729323308270677 
    else  # if Payment > 0.5
        0.6265822784810127 
    end   end )