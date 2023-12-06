create or replace function rf__43 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 5.5 then
    case when Q1 <= 1.5 then
       return 0.12060301507537688 # (72.0 out of 597.0)
    else  # if Q1 > 1.5
       return 0.058823529411764705 # (5.0 out of 85.0)
    end   else  # if Q89 > 5.5
    case when Q88 <= 7.5 then
      case when Q85 <= 7.5 then
         return 0.20253164556962025 # (16.0 out of 79.0)
      else  # if Q85 > 7.5
         return 0.10810810810810811 # (8.0 out of 74.0)
      end     else  # if Q88 > 7.5
      case when Q91 <= 10.5 then
        case when Q92 <= 10.5 then
          case when Q71 <= 8.5 then
             return 0.1956521739130435 # (18.0 out of 92.0)
          else  # if Q71 > 8.5
             return 0.3626373626373626 # (33.0 out of 91.0)
          end         else  # if Q92 > 10.5
           return 0.16216216216216217 # (18.0 out of 111.0)
        end       else  # if Q91 > 10.5
        case when Q99 <= 10.5 then
           return 0.5169491525423728 # (61.0 out of 118.0)
        else  # if Q99 > 10.5
           return 0.3333333333333333 # (44.0 out of 132.0)
        end       end     end   end )