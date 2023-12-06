create or replace function rf__35 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q97 <= 2.0 then
     return 0.10313075506445672 # (56.0 out of 543.0)
  else  # if Q97 > 2.0
    case when Q96 <= 8.5 then
      case when Q93 <= 9.5 then
        case when Q90 <= 8.5 then
           return 0.07575757575757576 # (10.0 out of 132.0)
        else  # if Q90 > 8.5
          case when Q88 <= 8.5 then
             return 0.1518987341772152 # (12.0 out of 79.0)
          else  # if Q88 > 8.5
             return 0.25688073394495414 # (28.0 out of 109.0)
          end         end       else  # if Q93 > 9.5
         return 0.39344262295081966 # (48.0 out of 122.0)
      end     else  # if Q96 > 8.5
      case when Q98 <= 9.5 then
        case when Q84 <= 8.5 then
          case when Q99 <= 10.5 then
             return 0.4634146341463415 # (38.0 out of 82.0)
          else  # if Q99 > 10.5
             return 0.25 # (25.0 out of 100.0)
          end         else  # if Q84 > 8.5
           return 0.1937984496124031 # (25.0 out of 129.0)
        end       else  # if Q98 > 9.5
         return 0.4819277108433735 # (40.0 out of 83.0)
      end     end   end )