create or replace function rf__33 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q96 <= 4.5 then
       return 0.1044776119402985 # (63.0 out of 603.0)
    else  # if Q96 > 4.5
       return 0.07446808510638298 # (7.0 out of 94.0)
    end   else  # if Q95 > 1.5
    case when Q85 <= 9.5 then
      case when Q87 <= 7.5 then
         return 0.125 # (15.0 out of 120.0)
      else  # if Q87 > 7.5
        case when Q71 <= 8.5 then
          case when Q98 <= 6.5 then
             return 0.15447154471544716 # (19.0 out of 123.0)
          else  # if Q98 > 6.5
             return 0.22115384615384615 # (23.0 out of 104.0)
          end         else  # if Q71 > 8.5
          case when Q94 <= 7.5 then
             return 0.2631578947368421 # (20.0 out of 76.0)
          else  # if Q94 > 7.5
             return 0.43820224719101125 # (39.0 out of 89.0)
          end         end       end     else  # if Q85 > 9.5
       return 0.38823529411764707 # (66.0 out of 170.0)
    end   end )