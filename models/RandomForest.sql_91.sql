create or replace function rf__91 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q96 <= 5.5 then
    case when Q71 <= 1.5 then
       return 0.09306260575296109 # (55.0 out of 591.0)
    else  # if Q71 > 1.5
       return 0.21428571428571427 # (27.0 out of 126.0)
    end   else  # if Q96 > 5.5
    case when Q71 <= 8.5 then
      case when Q99 <= 10.5 then
        case when Q84 <= 7.5 then
           return 0.14444444444444443 # (13.0 out of 90.0)
        else  # if Q84 > 7.5
           return 0.2872340425531915 # (27.0 out of 94.0)
        end       else  # if Q99 > 10.5
         return 0.1206896551724138 # (21.0 out of 174.0)
      end     else  # if Q71 > 8.5
      case when Q94 <= 7.5 then
         return 0.36666666666666664 # (44.0 out of 120.0)
      else  # if Q94 > 7.5
        case when Q71 <= 10.5 then
           return 0.5 # (52.0 out of 104.0)
        else  # if Q71 > 10.5
           return 0.425 # (34.0 out of 80.0)
        end       end     end   end )