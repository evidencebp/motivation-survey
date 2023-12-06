create or replace function rf__51 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
    case when Recognition <= 0.5 then
        0.0 
    else  # if Recognition > 0.5
        0.08114035087719298 
    end   else  # if Community > 0.5
    case when Payment <= 0.5 then
        0.4486486486486487 
    else  # if Payment > 0.5
        0.5454545454545454 
    end   end )