create or replace function rf__42 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q88 <= 3.5 then
       return 0.12631578947368421 # (72.0 out of 570.0)
    else  # if Q88 > 3.5
       return 0.08148148148148149 # (11.0 out of 135.0)
    end   else  # if Q95 > 1.5
    case when Q91 <= 10.5 then
      case when Q92 <= 10.5 then
        case when Q85 <= 7.5 then
           return 0.20353982300884957 # (23.0 out of 113.0)
        else  # if Q85 > 7.5
           return 0.09883720930232558 # (17.0 out of 172.0)
        end       else  # if Q92 > 10.5
         return 0.25225225225225223 # (28.0 out of 111.0)
      end     else  # if Q91 > 10.5
      case when Q99 <= 10.5 then
         return 0.46551724137931033 # (54.0 out of 116.0)
      else  # if Q99 > 10.5
        case when Q71 <= 8.5 then
           return 0.17073170731707318 # (14.0 out of 82.0)
        else  # if Q71 > 8.5
           return 0.325 # (26.0 out of 80.0)
        end       end     end   end )