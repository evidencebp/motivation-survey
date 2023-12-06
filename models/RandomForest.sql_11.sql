create or replace function rf__11 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q87 <= 8.5 then
      case when Q71 <= 3.5 then
         return 0.128125 # (82.0 out of 640.0)
      else  # if Q71 > 3.5
         return 0.0967741935483871 # (12.0 out of 124.0)
      end     else  # if Q87 > 8.5
      case when Q95 <= 6.5 then
        case when Q87 <= 9.5 then
           return 0.11267605633802817 # (8.0 out of 71.0)
        else  # if Q87 > 9.5
           return 0.15306122448979592 # (15.0 out of 98.0)
        end       else  # if Q95 > 6.5
         return 0.2826086956521739 # (26.0 out of 92.0)
      end     end   else  # if Q71 > 8.5
    case when Q89 <= 6.5 then
       return 0.14814814814814814 # (12.0 out of 81.0)
    else  # if Q89 > 6.5
      case when Q83 <= 9.5 then
        case when Q71 <= 9.5 then
           return 0.5357142857142857 # (45.0 out of 84.0)
        else  # if Q71 > 9.5
           return 0.3829787234042553 # (36.0 out of 94.0)
        end       else  # if Q83 > 9.5
         return 0.29473684210526313 # (28.0 out of 95.0)
      end     end   end )