create or replace function rf__58 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q87 <= 7.5 then
      case when Q97 <= 3.5 then
         return 0.10299625468164794 # (55.0 out of 534.0)
      else  # if Q97 > 3.5
         return 0.04672897196261682 # (5.0 out of 107.0)
      end     else  # if Q87 > 7.5
      case when Q92 <= 9.5 then
         return 0.2518518518518518 # (34.0 out of 135.0)
      else  # if Q92 > 9.5
        case when Q71 <= 5.5 then
           return 0.07142857142857142 # (6.0 out of 84.0)
        else  # if Q71 > 5.5
           return 0.16379310344827586 # (19.0 out of 116.0)
        end       end     end   else  # if Q71 > 8.5
    case when Q94 <= 5.5 then
       return 0.16049382716049382 # (13.0 out of 81.0)
    else  # if Q94 > 5.5
      case when Q93 <= 9.5 then
        case when Q93 <= 7.5 then
           return 0.25663716814159293 # (29.0 out of 113.0)
        else  # if Q93 > 7.5
           return 0.4111111111111111 # (37.0 out of 90.0)
        end       else  # if Q93 > 9.5
         return 0.6302521008403361 # (75.0 out of 119.0)
      end     end   end )