create or replace function rf__59 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 7.5 then
    case when Q89 <= 5.5 then
       return 0.10032362459546926 # (62.0 out of 618.0)
    else  # if Q89 > 5.5
       return 0.16541353383458646 # (22.0 out of 133.0)
    end   else  # if Q87 > 7.5
    case when Q95 <= 4.5 then
      case when Q83 <= 8.5 then
         return 0.2897196261682243 # (31.0 out of 107.0)
      else  # if Q83 > 8.5
         return 0.09090909090909091 # (9.0 out of 99.0)
      end     else  # if Q95 > 4.5
      case when Q98 <= 9.5 then
        case when Q93 <= 9.5 then
          case when Q85 <= 8.5 then
             return 0.12 # (9.0 out of 75.0)
          else  # if Q85 > 8.5
             return 0.24475524475524477 # (35.0 out of 143.0)
          end         else  # if Q93 > 9.5
           return 0.37383177570093457 # (40.0 out of 107.0)
        end       else  # if Q98 > 9.5
         return 0.5360824742268041 # (52.0 out of 97.0)
      end     end   end )