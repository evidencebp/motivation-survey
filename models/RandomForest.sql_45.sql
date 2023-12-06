create or replace function rf__45 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q93 <= 6.5 then
      case when Q84 <= 4.5 then
         return 0.10128913443830571 # (55.0 out of 543.0)
      else  # if Q84 > 4.5
         return 0.05357142857142857 # (6.0 out of 112.0)
      end     else  # if Q93 > 6.5
      case when Q99 <= 9.5 then
         return 0.3221476510067114 # (48.0 out of 149.0)
      else  # if Q99 > 9.5
        case when Q89 <= 8.5 then
           return 0.036585365853658534 # (3.0 out of 82.0)
        else  # if Q89 > 8.5
           return 0.23 # (23.0 out of 100.0)
        end       end     end   else  # if Q71 > 8.5
    case when Q94 <= 7.5 then
       return 0.28823529411764703 # (49.0 out of 170.0)
    else  # if Q94 > 7.5
      case when Q84 <= 8.5 then
         return 0.46153846153846156 # (48.0 out of 104.0)
      else  # if Q84 > 8.5
         return 0.3865546218487395 # (46.0 out of 119.0)
      end     end   end )