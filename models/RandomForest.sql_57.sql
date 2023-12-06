create or replace function rf__57 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 8.5 then
    case when Q71 <= 1.5 then
       return 0.10465116279069768 # (63.0 out of 602.0)
    else  # if Q71 > 1.5
      case when Q89 <= 6.5 then
         return 0.11926605504587157 # (13.0 out of 109.0)
      else  # if Q89 > 6.5
        case when Q96 <= 8.5 then
           return 0.1650485436893204 # (17.0 out of 103.0)
        else  # if Q96 > 8.5
           return 0.35664335664335667 # (51.0 out of 143.0)
        end       end     end   else  # if Q93 > 8.5
    case when Q98 <= 7.5 then
      case when Q99 <= 10.5 then
         return 0.3968253968253968 # (50.0 out of 126.0)
      else  # if Q99 > 10.5
         return 0.09375 # (9.0 out of 96.0)
      end     else  # if Q98 > 7.5
      case when Q83 <= 7.5 then
         return 0.56 # (42.0 out of 75.0)
      else  # if Q83 > 7.5
         return 0.384 # (48.0 out of 125.0)
      end     end   end )