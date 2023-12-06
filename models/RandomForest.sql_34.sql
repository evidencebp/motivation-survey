create or replace function rf__34 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q89 <= 8.5 then
      case when Q1 <= 5.5 then
        case when Q94 <= 6.5 then
           return 0.11616954474097331 # (74.0 out of 637.0)
        else  # if Q94 > 6.5
           return 0.025 # (2.0 out of 80.0)
        end       else  # if Q1 > 5.5
         return 0.1978021978021978 # (18.0 out of 91.0)
      end     else  # if Q89 > 8.5
      case when Q95 <= 4.5 then
         return 0.21951219512195122 # (18.0 out of 82.0)
      else  # if Q95 > 4.5
         return 0.2932330827067669 # (39.0 out of 133.0)
      end     end   else  # if Q71 > 8.5
    case when Q99 <= 9.5 then
       return 0.4714285714285714 # (66.0 out of 140.0)
    else  # if Q99 > 9.5
      case when Q94 <= 6.5 then
         return 0.14285714285714285 # (12.0 out of 84.0)
      else  # if Q94 > 6.5
         return 0.3712121212121212 # (49.0 out of 132.0)
      end     end   end )