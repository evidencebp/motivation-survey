create or replace function rf__93 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 8.5 then
    case when Q71 <= 8.5 then
      case when Q96 <= 8.5 then
        case when Q84 <= 6.5 then
           return 0.08602150537634409 # (48.0 out of 558.0)
        else  # if Q84 > 6.5
           return 0.10975609756097561 # (9.0 out of 82.0)
        end       else  # if Q96 > 8.5
         return 0.14655172413793102 # (17.0 out of 116.0)
      end     else  # if Q71 > 8.5
      case when Q94 <= 7.5 then
         return 0.15294117647058825 # (13.0 out of 85.0)
      else  # if Q94 > 7.5
         return 0.42045454545454547 # (37.0 out of 88.0)
      end     end   else  # if Q89 > 8.5
    case when Q71 <= 8.5 then
      case when Q96 <= 8.5 then
         return 0.17796610169491525 # (21.0 out of 118.0)
      else  # if Q96 > 8.5
         return 0.2857142857142857 # (38.0 out of 133.0)
      end     else  # if Q71 > 8.5
      case when Q1 <= 3.5 then
         return 0.5465116279069767 # (47.0 out of 86.0)
      else  # if Q1 > 3.5
         return 0.36283185840707965 # (41.0 out of 113.0)
      end     end   end )