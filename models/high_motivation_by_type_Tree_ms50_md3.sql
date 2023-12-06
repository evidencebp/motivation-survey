create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Enjoyment <= 0.5 then
    case when Recognition <= 0.5 then
      case when Challenge <= 0.5 then
         return 0.1728395061728395 # (14.0 out of 81.0)
      else  # if Challenge > 0.5
         return 0.3269230769230769 # (17.0 out of 52.0)
      end     else  # if Recognition > 0.5
      case when Challenge <= 0.5 then
         return 0.8333333333333334 # (5.0 out of 6.0)
      else  # if Challenge > 0.5
         return 0.3333333333333333 # (2.0 out of 6.0)
      end     end   else  # if Enjoyment > 0.5
    case when Community <= 0.5 then
      case when Importance <= 0.5 then
         return 0.4935064935064935 # (38.0 out of 77.0)
      else  # if Importance > 0.5
         return 0.6612903225806451 # (82.0 out of 124.0)
      end     else  # if Community > 0.5
      case when Challenge <= 0.5 then
         return 0.6923076923076923 # (9.0 out of 13.0)
      else  # if Challenge > 0.5
         return 0.9107142857142857 # (51.0 out of 56.0)
      end     end   end )