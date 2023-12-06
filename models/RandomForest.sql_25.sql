create or replace function rf__25 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q94 <= 1.5 then
     return 0.11206896551724138 # (65.0 out of 580.0)
  else  # if Q94 > 1.5
    case when Q89 <= 6.5 then
      case when Q93 <= 8.5 then
         return 0.08 # (8.0 out of 100.0)
      else  # if Q93 > 8.5
         return 0.1744186046511628 # (15.0 out of 86.0)
      end     else  # if Q89 > 6.5
      case when Q91 <= 10.5 then
        case when Q71 <= 7.5 then
          case when Q83 <= 8.5 then
             return 0.07228915662650602 # (6.0 out of 83.0)
          else  # if Q83 > 8.5
             return 0.10869565217391304 # (10.0 out of 92.0)
          end         else  # if Q71 > 7.5
          case when Q96 <= 8.5 then
             return 0.2972972972972973 # (22.0 out of 74.0)
          else  # if Q96 > 8.5
             return 0.4152542372881356 # (49.0 out of 118.0)
          end         end       else  # if Q91 > 10.5
        case when Q87 <= 10.5 then
          case when Q94 <= 7.5 then
             return 0.4642857142857143 # (39.0 out of 84.0)
          else  # if Q94 > 7.5
             return 0.19736842105263158 # (15.0 out of 76.0)
          end         else  # if Q87 > 10.5
           return 0.4069767441860465 # (35.0 out of 86.0)
        end       end     end   end )