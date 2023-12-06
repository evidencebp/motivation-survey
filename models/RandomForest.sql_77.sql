create or replace function rf__77 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q84 <= 7.5 then
    case when Q90 <= 7.5 then
      case when Q97 <= 1.0 then
         return 0.1018867924528302 # (54.0 out of 530.0)
      else  # if Q97 > 1.0
         return 0.08860759493670886 # (7.0 out of 79.0)
      end     else  # if Q90 > 7.5
      case when Q96 <= 8.5 then
         return 0.18181818181818182 # (24.0 out of 132.0)
      else  # if Q96 > 8.5
         return 0.256 # (32.0 out of 125.0)
      end     end   else  # if Q84 > 7.5
    case when Q97 <= 9.5 then
      case when Q83 <= 8.5 then
         return 0.3246753246753247 # (25.0 out of 77.0)
      else  # if Q83 > 8.5
         return 0.2033898305084746 # (24.0 out of 118.0)
      end     else  # if Q97 > 9.5
      case when Q1 <= 5.5 then
        case when Q99 <= 10.5 then
           return 0.38461538461538464 # (35.0 out of 91.0)
        else  # if Q99 > 10.5
           return 0.5346534653465347 # (54.0 out of 101.0)
        end       else  # if Q1 > 5.5
         return 0.25396825396825395 # (32.0 out of 126.0)
      end     end   end )