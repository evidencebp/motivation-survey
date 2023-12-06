create or replace function rf__54 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 7.5 then
    case when Q85 <= 6.5 then
      case when Q95 <= 0.0 then
         return 0.102803738317757 # (55.0 out of 535.0)
      else  # if Q95 > 0.0
         return 0.21621621621621623 # (16.0 out of 74.0)
      end     else  # if Q85 > 6.5
       return 0.023529411764705882 # (2.0 out of 85.0)
    end   else  # if Q87 > 7.5
    case when Q98 <= 9.5 then
      case when Q83 <= 9.5 then
        case when Q71 <= 8.5 then
          case when Q96 <= 8.5 then
             return 0.15671641791044777 # (21.0 out of 134.0)
          else  # if Q96 > 8.5
             return 0.32222222222222224 # (29.0 out of 90.0)
          end         else  # if Q71 > 8.5
           return 0.46511627906976744 # (80.0 out of 172.0)
        end       else  # if Q83 > 9.5
        case when Q87 <= 9.5 then
           return 0.1125 # (9.0 out of 80.0)
        else  # if Q87 > 9.5
           return 0.15 # (12.0 out of 80.0)
        end       end     else  # if Q98 > 9.5
       return 0.4418604651162791 # (57.0 out of 129.0)
    end   end )