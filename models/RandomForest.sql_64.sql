create or replace function rf__64 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 3.5 then
     return 0.09984152139461172 # (63.0 out of 631.0)
  else  # if Q89 > 3.5
    case when Q1 <= 3.5 then
      case when Q91 <= 10.5 then
        case when Q84 <= 7.5 then
           return 0.13043478260869565 # (12.0 out of 92.0)
        else  # if Q84 > 7.5
           return 0.2987012987012987 # (23.0 out of 77.0)
        end       else  # if Q91 > 10.5
         return 0.4557823129251701 # (67.0 out of 147.0)
      end     else  # if Q1 > 3.5
      case when Q88 <= 7.5 then
         return 0.11290322580645161 # (14.0 out of 124.0)
      else  # if Q88 > 7.5
        case when Q71 <= 8.5 then
          case when Q99 <= 9.5 then
             return 0.20689655172413793 # (18.0 out of 87.0)
          else  # if Q99 > 9.5
             return 0.11494252873563218 # (10.0 out of 87.0)
          end         else  # if Q71 > 8.5
           return 0.3283582089552239 # (44.0 out of 134.0)
        end       end     end   end )