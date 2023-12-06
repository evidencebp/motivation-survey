create or replace function rf__31 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q90 <= 7.5 then
      case when Q98 <= 0.0 then
         return 0.11627906976744186 # (65.0 out of 559.0)
      else  # if Q98 > 0.0
         return 0.09523809523809523 # (10.0 out of 105.0)
      end     else  # if Q90 > 7.5
      case when Q87 <= 7.5 then
         return 0.12244897959183673 # (12.0 out of 98.0)
      else  # if Q87 > 7.5
        case when Q71 <= 8.5 then
          case when Q1 <= 4.5 then
             return 0.13580246913580246 # (11.0 out of 81.0)
          else  # if Q1 > 4.5
             return 0.1794871794871795 # (14.0 out of 78.0)
          end         else  # if Q71 > 8.5
           return 0.3333333333333333 # (49.0 out of 147.0)
        end       end     end   else  # if Q91 > 10.5
    case when Q71 <= 8.5 then
      case when Q96 <= 8.5 then
         return 0.24444444444444444 # (22.0 out of 90.0)
      else  # if Q96 > 8.5
         return 0.189873417721519 # (15.0 out of 79.0)
      end     else  # if Q71 > 8.5
       return 0.5 # (71.0 out of 142.0)
    end   end )