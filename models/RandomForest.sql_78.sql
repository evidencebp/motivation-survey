create or replace function rf__78 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 6.5 then
    case when Q93 <= 4.5 then
       return 0.09697933227344992 # (61.0 out of 629.0)
    else  # if Q93 > 4.5
       return 0.2 # (34.0 out of 170.0)
    end   else  # if Q89 > 6.5
    case when Q89 <= 8.5 then
      case when Q95 <= 5.5 then
         return 0.3125 # (25.0 out of 80.0)
      else  # if Q95 > 5.5
         return 0.21428571428571427 # (21.0 out of 98.0)
      end     else  # if Q89 > 8.5
      case when Q71 <= 8.5 then
        case when Q95 <= 6.5 then
           return 0.1953125 # (25.0 out of 128.0)
        else  # if Q95 > 6.5
           return 0.30851063829787234 # (29.0 out of 94.0)
        end       else  # if Q71 > 8.5
        case when Q99 <= 10.5 then
           return 0.4666666666666667 # (35.0 out of 75.0)
        else  # if Q99 > 10.5
           return 0.3619047619047619 # (38.0 out of 105.0)
        end       end     end   end )