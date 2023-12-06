create or replace function rf__24 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q96 <= 8.5 then
      case when Q92 <= 10.5 then
        case when Q96 <= 1.5 then
           return 0.13059033989266547 # (73.0 out of 559.0)
        else  # if Q96 > 1.5
           return 0.06666666666666667 # (8.0 out of 120.0)
        end       else  # if Q92 > 10.5
         return 0.16666666666666666 # (15.0 out of 90.0)
      end     else  # if Q96 > 8.5
      case when Q91 <= 9.5 then
         return 0.3644859813084112 # (39.0 out of 107.0)
      else  # if Q91 > 9.5
         return 0.14925373134328357 # (20.0 out of 134.0)
      end     end   else  # if Q71 > 8.5
    case when Q94 <= 8.5 then
      case when Q91 <= 10.5 then
         return 0.232 # (29.0 out of 125.0)
      else  # if Q91 > 10.5
         return 0.3950617283950617 # (32.0 out of 81.0)
      end     else  # if Q94 > 8.5
      case when Q95 <= 6.5 then
         return 0.5402298850574713 # (47.0 out of 87.0)
      else  # if Q95 > 6.5
         return 0.4605263157894737 # (35.0 out of 76.0)
      end     end   end )