create or replace function rf__23 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q71 <= 2.5 then
       return 0.10810810810810811 # (68.0 out of 629.0)
    else  # if Q71 > 2.5
       return 0.21621621621621623 # (16.0 out of 74.0)
    end   else  # if Q95 > 1.5
    case when Q98 <= 9.5 then
      case when Q99 <= 9.5 then
        case when Q97 <= 9.5 then
           return 0.2907801418439716 # (41.0 out of 141.0)
        else  # if Q97 > 9.5
           return 0.3937007874015748 # (50.0 out of 127.0)
        end       else  # if Q99 > 9.5
        case when Q71 <= 8.5 then
           return 0.11612903225806452 # (18.0 out of 155.0)
        else  # if Q71 > 8.5
           return 0.2719298245614035 # (31.0 out of 114.0)
        end       end     else  # if Q98 > 9.5
       return 0.460431654676259 # (64.0 out of 139.0)
    end   end )