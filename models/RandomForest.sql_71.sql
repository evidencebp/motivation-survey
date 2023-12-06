create or replace function rf__71 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 5.5 then
    case when Q99 <= 6.5 then
       return 0.09830508474576272 # (58.0 out of 590.0)
    else  # if Q99 > 6.5
       return 0.08045977011494253 # (7.0 out of 87.0)
    end   else  # if Q89 > 5.5
    case when Q1 <= 3.5 then
      case when Q83 <= 6.5 then
         return 0.5 # (49.0 out of 98.0)
      else  # if Q83 > 6.5
        case when Q83 <= 9.5 then
           return 0.3504273504273504 # (41.0 out of 117.0)
        else  # if Q83 > 9.5
           return 0.23711340206185566 # (23.0 out of 97.0)
        end       end     else  # if Q1 > 3.5
      case when Q97 <= 8.5 then
         return 0.07954545454545454 # (7.0 out of 88.0)
      else  # if Q97 > 8.5
        case when Q71 <= 8.5 then
          case when Q94 <= 7.5 then
             return 0.32098765432098764 # (26.0 out of 81.0)
          else  # if Q94 > 7.5
             return 0.14893617021276595 # (14.0 out of 94.0)
          end         else  # if Q71 > 8.5
           return 0.4094488188976378 # (52.0 out of 127.0)
        end       end     end   end )