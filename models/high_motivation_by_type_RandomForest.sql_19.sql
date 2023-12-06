create or replace function rf__19 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Ownership <= 0.5 then
      0.0 
  else  # if Ownership > 0.5
    case when Community <= 0.5 then
        0.6976744186046512 
    else  # if Community > 0.5
      case when Payment <= 0.5 then
          0.5170454545454546 
      else  # if Payment > 0.5
          0.5037593984962406 
      end     end   end )