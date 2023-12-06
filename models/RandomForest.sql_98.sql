create or replace function rf__98 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 8.5 then
    case when Q96 <= 8.5 then
      case when Q89 <= 8.5 then
        case when Q83 <= 3.5 then
           return 0.08657243816254417 # (49.0 out of 566.0)
        else  # if Q83 > 3.5
           return 0.034482758620689655 # (4.0 out of 116.0)
        end       else  # if Q89 > 8.5
         return 0.17647058823529413 # (15.0 out of 85.0)
      end     else  # if Q96 > 8.5
      case when Q92 <= 9.5 then
         return 0.32 # (24.0 out of 75.0)
      else  # if Q92 > 9.5
         return 0.24299065420560748 # (26.0 out of 107.0)
      end     end   else  # if Q93 > 8.5
    case when Q95 <= 4.5 then
       return 0.20279720279720279 # (29.0 out of 143.0)
    else  # if Q95 > 4.5
      case when Q98 <= 9.5 then
        case when Q71 <= 8.5 then
           return 0.16666666666666666 # (17.0 out of 102.0)
        else  # if Q71 > 8.5
           return 0.4939759036144578 # (41.0 out of 83.0)
        end       else  # if Q98 > 9.5
         return 0.5784313725490197 # (59.0 out of 102.0)
      end     end   end )