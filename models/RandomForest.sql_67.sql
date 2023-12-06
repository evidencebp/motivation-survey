create or replace function rf__67 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q91 <= 8.5 then
       return 0.13071895424836602 # (80.0 out of 612.0)
    else  # if Q91 > 8.5
       return 0.23148148148148148 # (25.0 out of 108.0)
    end   else  # if Q93 > 5.5
    case when Q89 <= 8.5 then
      case when Q98 <= 8.5 then
        case when Q96 <= 7.5 then
           return 0.15384615384615385 # (12.0 out of 78.0)
        else  # if Q96 > 7.5
           return 0.22549019607843138 # (23.0 out of 102.0)
        end       else  # if Q98 > 8.5
         return 0.2905982905982906 # (34.0 out of 117.0)
      end     else  # if Q89 > 8.5
      case when Q93 <= 10.5 then
        case when Q83 <= 9.5 then
           return 0.32450331125827814 # (49.0 out of 151.0)
        else  # if Q83 > 9.5
           return 0.21176470588235294 # (18.0 out of 85.0)
        end       else  # if Q93 > 10.5
         return 0.42857142857142855 # (54.0 out of 126.0)
      end     end   end )