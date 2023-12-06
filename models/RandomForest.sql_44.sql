create or replace function rf__44 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q71 <= 0.0 then
       return 0.09849749582637729 # (59.0 out of 599.0)
    else  # if Q71 > 0.0
      case when Q97 <= 8.5 then
         return 0.09649122807017543 # (11.0 out of 114.0)
      else  # if Q97 > 8.5
        case when Q99 <= 10.5 then
          case when Q1 <= 4.5 then
             return 0.22916666666666666 # (22.0 out of 96.0)
          else  # if Q1 > 4.5
             return 0.34523809523809523 # (29.0 out of 84.0)
          end         else  # if Q99 > 10.5
           return 0.1732283464566929 # (22.0 out of 127.0)
        end       end     end   else  # if Q71 > 8.5
    case when Q1 <= 3.5 then
      case when Q96 <= 8.5 then
         return 0.4473684210526316 # (34.0 out of 76.0)
      else  # if Q96 > 8.5
         return 0.39090909090909093 # (43.0 out of 110.0)
      end     else  # if Q1 > 3.5
      case when Q98 <= 8.5 then
         return 0.2361111111111111 # (17.0 out of 72.0)
      else  # if Q98 > 8.5
         return 0.33663366336633666 # (34.0 out of 101.0)
      end     end   end )