create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Recognition <= 0.5 then
     return 0.0 # (0.0 out of 15.0)
  else  # if Recognition > 0.5
    case when Self-use <= 0.5 then
      case when Hostility <= 0.5 then
         return 0.4444444444444444 # (4.0 out of 9.0)
      else  # if Hostility > 0.5
         return 0.1 # (1.0 out of 10.0)
      end     else  # if Self-use > 0.5
      case when Hostility <= 0.5 then
         return 0.3333333333333333 # (2.0 out of 6.0)
      else  # if Hostility > 0.5
         return 1.0 # (2.0 out of 2.0)
      end     end   end )