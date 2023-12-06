create or replace function continue.tree (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q71 <= 1.5 then
      case when Q94 <= 6.5 then
         return 0.10983606557377049 # (67.0 out of 610.0)
      else  # if Q94 > 6.5
         return 0.015625 # (1.0 out of 64.0)
      end     else  # if Q71 > 1.5
      case when Q85 <= 9.5 then
         return 0.17123287671232876 # (50.0 out of 292.0)
      else  # if Q85 > 9.5
         return 0.4166666666666667 # (20.0 out of 48.0)
      end     end   else  # if Q71 > 8.5
    case when Q93 <= 9.5 then
      case when Q89 <= 5.5 then
         return 0.11363636363636363 # (5.0 out of 44.0)
      else  # if Q89 > 5.5
         return 0.3251231527093596 # (66.0 out of 203.0)
      end     else  # if Q93 > 9.5
      case when Q88 <= 6.5 then
         return 0.0 # (0.0 out of 5.0)
      else  # if Q88 > 6.5
         return 0.5309734513274337 # (60.0 out of 113.0)
      end     end   end )