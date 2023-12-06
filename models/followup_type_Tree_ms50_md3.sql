create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Recognition <= 0.5 then
     return 0.0 # (0.0 out of 15.0)
  else  # if Recognition > 0.5
    case when Challenge <= 0.5 then
       return 0.4117647058823529 # (7.0 out of 17.0)
    else  # if Challenge > 0.5
       return 0.2 # (2.0 out of 10.0)
    end   end )