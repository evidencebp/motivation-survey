create or replace function rf__97 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
    case when Recognition <= 0.5 then
        0.0 
    else  # if Recognition > 0.5
      case when Ownership <= 0.5 then
          0.0 
      else  # if Ownership > 0.5
          0.5714285714285714 
      end     end   else  # if Community > 0.5
    case when Payment <= 0.5 then
        0.398876404494382 
    else  # if Payment > 0.5
        0.643312101910828 
    end   end )