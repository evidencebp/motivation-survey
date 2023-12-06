create or replace function rf__81 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 8.5 then
    case when Q96 <= 8.5 then
      case when Q1 <= 3.5 then
         return 0.10097719869706841 # (62.0 out of 614.0)
      else  # if Q1 > 3.5
         return 0.047058823529411764 # (4.0 out of 85.0)
      end     else  # if Q96 > 8.5
       return 0.2109375 # (27.0 out of 128.0)
    end   else  # if Q87 > 8.5
    case when Q93 <= 9.5 then
      case when Q99 <= 10.5 then
        case when Q1 <= 3.5 then
           return 0.14285714285714285 # (11.0 out of 77.0)
        else  # if Q1 > 3.5
           return 0.3983050847457627 # (47.0 out of 118.0)
        end       else  # if Q99 > 10.5
         return 0.1761006289308176 # (28.0 out of 159.0)
      end     else  # if Q93 > 9.5
      case when Q96 <= 7.5 then
         return 0.5 # (39.0 out of 78.0)
      else  # if Q96 > 7.5
         return 0.375 # (45.0 out of 120.0)
      end     end   end )