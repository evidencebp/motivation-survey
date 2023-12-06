create or replace function rf__92 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 8.5 then
    case when Q96 <= 3.5 then
      case when Q71 <= 0.0 then
         return 0.09671179883945841 # (50.0 out of 517.0)
      else  # if Q71 > 0.0
         return 0.13186813186813187 # (12.0 out of 91.0)
      end     else  # if Q96 > 3.5
      case when Q99 <= 9.5 then
        case when Q99 <= 8.5 then
           return 0.3125 # (35.0 out of 112.0)
        else  # if Q99 > 8.5
           return 0.24242424242424243 # (32.0 out of 132.0)
        end       else  # if Q99 > 9.5
        case when Q71 <= 7.5 then
           return 0.03571428571428571 # (5.0 out of 140.0)
        else  # if Q71 > 7.5
           return 0.20512820512820512 # (16.0 out of 78.0)
        end       end     end   else  # if Q98 > 8.5
    case when Q93 <= 9.5 then
      case when Q84 <= 7.5 then
         return 0.1566265060240964 # (13.0 out of 83.0)
      else  # if Q84 > 7.5
         return 0.31496062992125984 # (40.0 out of 127.0)
      end     else  # if Q93 > 9.5
       return 0.494949494949495 # (49.0 out of 99.0)
    end   end )