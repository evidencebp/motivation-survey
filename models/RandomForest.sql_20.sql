create or replace function rf__20 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q98 <= 2.5 then
       return 0.09947643979057591 # (57.0 out of 573.0)
    else  # if Q98 > 2.5
      case when Q71 <= 8.5 then
        case when Q94 <= 6.5 then
           return 0.1926605504587156 # (21.0 out of 109.0)
        else  # if Q94 > 6.5
           return 0.11560693641618497 # (20.0 out of 173.0)
        end       else  # if Q71 > 8.5
        case when Q96 <= 8.5 then
           return 0.16666666666666666 # (14.0 out of 84.0)
        else  # if Q96 > 8.5
           return 0.36 # (36.0 out of 100.0)
        end       end     end   else  # if Q91 > 10.5
    case when Q89 <= 8.5 then
       return 0.1875 # (24.0 out of 128.0)
    else  # if Q89 > 8.5
      case when Q99 <= 9.5 then
         return 0.4266666666666667 # (32.0 out of 75.0)
      else  # if Q99 > 9.5
         return 0.34306569343065696 # (47.0 out of 137.0)
      end     end   end )