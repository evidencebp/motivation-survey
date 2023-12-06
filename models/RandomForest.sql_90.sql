create or replace function rf__90 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 6.5 then
     return 0.10876623376623376 # (67.0 out of 616.0)
  else  # if Q91 > 6.5
    case when Q93 <= 8.5 then
      case when Q93 <= 7.5 then
        case when Q87 <= 7.5 then
           return 0.18072289156626506 # (15.0 out of 83.0)
        else  # if Q87 > 7.5
          case when Q91 <= 10.5 then
             return 0.23809523809523808 # (20.0 out of 84.0)
          else  # if Q91 > 10.5
             return 0.2948717948717949 # (23.0 out of 78.0)
          end         end       else  # if Q93 > 7.5
         return 0.13953488372093023 # (12.0 out of 86.0)
      end     else  # if Q93 > 8.5
      case when Q71 <= 8.5 then
        case when Q91 <= 10.5 then
           return 0.1746031746031746 # (22.0 out of 126.0)
        else  # if Q91 > 10.5
           return 0.3173076923076923 # (33.0 out of 104.0)
        end       else  # if Q71 > 8.5
        case when Q90 <= 10.5 then
           return 0.42016806722689076 # (50.0 out of 119.0)
        else  # if Q90 > 10.5
           return 0.5180722891566265 # (43.0 out of 83.0)
        end       end     end   end )