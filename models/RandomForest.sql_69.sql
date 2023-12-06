create or replace function rf__69 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q88 <= 1.5 then
       return 0.11805555555555555 # (68.0 out of 576.0)
    else  # if Q88 > 1.5
      case when Q92 <= 9.5 then
         return 0.23387096774193547 # (29.0 out of 124.0)
      else  # if Q92 > 9.5
         return 0.09574468085106383 # (9.0 out of 94.0)
      end     end   else  # if Q88 > 7.5
    case when Q85 <= 10.5 then
      case when Q84 <= 7.5 then
        case when Q93 <= 8.5 then
           return 0.08333333333333333 # (8.0 out of 96.0)
        else  # if Q93 > 8.5
           return 0.2169811320754717 # (23.0 out of 106.0)
        end       else  # if Q84 > 7.5
        case when Q91 <= 10.5 then
           return 0.23648648648648649 # (35.0 out of 148.0)
        else  # if Q91 > 10.5
           return 0.37593984962406013 # (50.0 out of 133.0)
        end       end     else  # if Q85 > 10.5
       return 0.43137254901960786 # (44.0 out of 102.0)
    end   end )