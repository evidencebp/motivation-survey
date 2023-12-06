create or replace function rf__65 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q89 <= 8.5 then
      case when Q71 <= 8.5 then
        case when Q93 <= 3.5 then
           return 0.1290909090909091 # (71.0 out of 550.0)
        else  # if Q93 > 3.5
          case when Q96 <= 7.5 then
             return 0.05555555555555555 # (5.0 out of 90.0)
          else  # if Q96 > 7.5
             return 0.11458333333333333 # (11.0 out of 96.0)
          end         end       else  # if Q71 > 8.5
         return 0.21568627450980393 # (22.0 out of 102.0)
      end     else  # if Q89 > 8.5
      case when Q97 <= 9.5 then
         return 0.3137254901960784 # (32.0 out of 102.0)
      else  # if Q97 > 9.5
         return 0.20652173913043478 # (19.0 out of 92.0)
      end     end   else  # if Q91 > 10.5
    case when Q1 <= 5.5 then
      case when Q97 <= 10.5 then
         return 0.425531914893617 # (40.0 out of 94.0)
      else  # if Q97 > 10.5
         return 0.32786885245901637 # (40.0 out of 122.0)
      end     else  # if Q1 > 5.5
       return 0.2595419847328244 # (34.0 out of 131.0)
    end   end )