create or replace function rf__53 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q84 <= 2.5 then
     return 0.13821138211382114 # (85.0 out of 615.0)
  else  # if Q84 > 2.5
    case when Q94 <= 5.5 then
      case when Q1 <= 4.5 then
         return 0.1308411214953271 # (14.0 out of 107.0)
      else  # if Q1 > 4.5
         return 0.18292682926829268 # (15.0 out of 82.0)
      end     else  # if Q94 > 5.5
      case when Q71 <= 8.5 then
        case when Q99 <= 10.5 then
          case when Q89 <= 8.5 then
             return 0.15584415584415584 # (12.0 out of 77.0)
          else  # if Q89 > 8.5
             return 0.43209876543209874 # (35.0 out of 81.0)
          end         else  # if Q99 > 10.5
           return 0.10204081632653061 # (15.0 out of 147.0)
        end       else  # if Q71 > 8.5
        case when Q92 <= 9.5 then
           return 0.3023255813953488 # (26.0 out of 86.0)
        else  # if Q92 > 9.5
          case when Q84 <= 8.5 then
             return 0.4050632911392405 # (32.0 out of 79.0)
          else  # if Q84 > 8.5
             return 0.5333333333333333 # (56.0 out of 105.0)
          end         end       end     end   end )