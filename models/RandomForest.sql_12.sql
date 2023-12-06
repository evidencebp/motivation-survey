create or replace function rf__12 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q87 <= 7.5 then
      case when Q71 <= 3.5 then
         return 0.12121212121212122 # (68.0 out of 561.0)
      else  # if Q71 > 3.5
         return 0.06741573033707865 # (6.0 out of 89.0)
      end     else  # if Q87 > 7.5
      case when Q93 <= 8.5 then
        case when Q1 <= 4.5 then
           return 0.34177215189873417 # (27.0 out of 79.0)
        else  # if Q1 > 4.5
           return 0.1978021978021978 # (18.0 out of 91.0)
        end       else  # if Q93 > 8.5
        case when Q71 <= 8.5 then
           return 0.13076923076923078 # (17.0 out of 130.0)
        else  # if Q71 > 8.5
           return 0.3170731707317073 # (26.0 out of 82.0)
        end       end     end   else  # if Q91 > 10.5
    case when Q85 <= 8.5 then
       return 0.28125 # (27.0 out of 96.0)
    else  # if Q85 > 8.5
      case when Q98 <= 8.5 then
         return 0.3125 # (40.0 out of 128.0)
      else  # if Q98 > 8.5
         return 0.4796747967479675 # (59.0 out of 123.0)
      end     end   end )