create or replace function rf__55 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 9.5 then
    case when Q71 <= 8.5 then
      case when Q93 <= 6.5 then
        case when Q90 <= 8.5 then
           return 0.085 # (51.0 out of 600.0)
        else  # if Q90 > 8.5
           return 0.1282051282051282 # (10.0 out of 78.0)
        end       else  # if Q93 > 6.5
        case when Q94 <= 6.5 then
           return 0.226890756302521 # (27.0 out of 119.0)
        else  # if Q94 > 6.5
          case when Q1 <= 5.5 then
             return 0.17391304347826086 # (16.0 out of 92.0)
          else  # if Q1 > 5.5
             return 0.0963855421686747 # (8.0 out of 83.0)
          end         end       end     else  # if Q71 > 8.5
      case when Q1 <= 5.5 then
        case when Q98 <= 7.5 then
           return 0.3950617283950617 # (32.0 out of 81.0)
        else  # if Q98 > 7.5
           return 0.3373493975903614 # (28.0 out of 83.0)
        end       else  # if Q1 > 5.5
         return 0.1595744680851064 # (15.0 out of 94.0)
      end     end   else  # if Q98 > 9.5
     return 0.4966442953020134 # (74.0 out of 149.0)
  end )