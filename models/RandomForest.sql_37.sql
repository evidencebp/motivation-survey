create or replace function rf__37 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q88 <= 7.5 then
       return 0.087893864013267 # (53.0 out of 603.0)
    else  # if Q88 > 7.5
       return 0.23376623376623376 # (18.0 out of 77.0)
    end   else  # if Q93 > 5.5
    case when Q1 <= 3.5 then
      case when Q93 <= 9.5 then
        case when Q71 <= 8.5 then
           return 0.14444444444444443 # (13.0 out of 90.0)
        else  # if Q71 > 8.5
           return 0.37777777777777777 # (34.0 out of 90.0)
        end       else  # if Q93 > 9.5
         return 0.36363636363636365 # (52.0 out of 143.0)
      end     else  # if Q1 > 3.5
      case when Q95 <= 6.5 then
        case when Q71 <= 6.5 then
           return 0.10679611650485436 # (11.0 out of 103.0)
        else  # if Q71 > 6.5
           return 0.21649484536082475 # (21.0 out of 97.0)
        end       else  # if Q95 > 6.5
        case when Q94 <= 8.5 then
           return 0.26744186046511625 # (23.0 out of 86.0)
        else  # if Q94 > 8.5
           return 0.2222222222222222 # (20.0 out of 90.0)
        end       end     end   end )