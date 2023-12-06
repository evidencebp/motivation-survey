create or replace function rf__21 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 5.5 then
    case when Q94 <= 5.5 then
       return 0.11744386873920552 # (68.0 out of 579.0)
    else  # if Q94 > 5.5
       return 0.14893617021276595 # (14.0 out of 94.0)
    end   else  # if Q89 > 5.5
    case when Q91 <= 10.5 then
      case when Q71 <= 6.5 then
        case when Q95 <= 5.5 then
           return 0.11428571428571428 # (12.0 out of 105.0)
        else  # if Q95 > 5.5
           return 0.15 # (12.0 out of 80.0)
        end       else  # if Q71 > 6.5
        case when Q94 <= 7.5 then
           return 0.2 # (19.0 out of 95.0)
        else  # if Q94 > 7.5
           return 0.39568345323741005 # (55.0 out of 139.0)
        end       end     else  # if Q91 > 10.5
      case when Q98 <= 6.5 then
         return 0.2727272727272727 # (33.0 out of 121.0)
      else  # if Q98 > 6.5
         return 0.42168674698795183 # (70.0 out of 166.0)
      end     end   end )