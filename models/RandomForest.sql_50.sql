create or replace function rf__50 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q92 <= 9.5 then
    case when Q95 <= 6.5 then
      case when Q71 <= 3.5 then
         return 0.10914927768860354 # (68.0 out of 623.0)
      else  # if Q71 > 3.5
         return 0.2097902097902098 # (30.0 out of 143.0)
      end     else  # if Q95 > 6.5
       return 0.2727272727272727 # (27.0 out of 99.0)
    end   else  # if Q92 > 9.5
    case when Q87 <= 7.5 then
       return 0.17857142857142858 # (15.0 out of 84.0)
    else  # if Q87 > 7.5
      case when Q89 <= 8.5 then
         return 0.15671641791044777 # (21.0 out of 134.0)
      else  # if Q89 > 8.5
        case when Q93 <= 10.5 then
          case when Q98 <= 7.5 then
             return 0.3854166666666667 # (37.0 out of 96.0)
          else  # if Q98 > 7.5
             return 0.31313131313131315 # (31.0 out of 99.0)
          end         else  # if Q93 > 10.5
           return 0.5445544554455446 # (55.0 out of 101.0)
        end       end     end   end )