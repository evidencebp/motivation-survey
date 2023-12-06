create or replace function rf__22 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 5.5 then
    case when Q99 <= 4.5 then
       return 0.12609457092819615 # (72.0 out of 571.0)
    else  # if Q99 > 4.5
       return 0.08196721311475409 # (10.0 out of 122.0)
    end   else  # if Q89 > 5.5
    case when Q85 <= 9.5 then
      case when Q98 <= 8.5 then
        case when Q99 <= 9.5 then
          case when Q98 <= 4.5 then
             return 0.34523809523809523 # (29.0 out of 84.0)
          else  # if Q98 > 4.5
             return 0.22935779816513763 # (25.0 out of 109.0)
          end         else  # if Q99 > 9.5
           return 0.08270676691729323 # (11.0 out of 133.0)
        end       else  # if Q98 > 8.5
        case when Q85 <= 8.5 then
           return 0.3595505617977528 # (32.0 out of 89.0)
        else  # if Q85 > 8.5
           return 0.2967032967032967 # (27.0 out of 91.0)
        end       end     else  # if Q85 > 9.5
      case when Q71 <= 8.5 then
         return 0.32051282051282054 # (25.0 out of 78.0)
      else  # if Q71 > 8.5
         return 0.39215686274509803 # (40.0 out of 102.0)
      end     end   end )