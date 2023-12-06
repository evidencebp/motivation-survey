create or replace function rf__18 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q93 <= 6.5 then
      case when Q87 <= 5.5 then
         return 0.09671848013816926 # (56.0 out of 579.0)
      else  # if Q87 > 5.5
         return 0.05128205128205128 # (6.0 out of 117.0)
      end     else  # if Q93 > 6.5
      case when Q99 <= 8.5 then
         return 0.3380281690140845 # (24.0 out of 71.0)
      else  # if Q99 > 8.5
        case when Q83 <= 7.5 then
           return 0.2 # (19.0 out of 95.0)
        else  # if Q83 > 7.5
          case when Q90 <= 9.5 then
             return 0.06493506493506493 # (5.0 out of 77.0)
          else  # if Q90 > 9.5
             return 0.17647058823529413 # (15.0 out of 85.0)
          end         end       end     end   else  # if Q71 > 8.5
    case when Q93 <= 9.5 then
      case when Q89 <= 7.5 then
         return 0.1134020618556701 # (11.0 out of 97.0)
      else  # if Q89 > 7.5
         return 0.3333333333333333 # (46.0 out of 138.0)
      end     else  # if Q93 > 9.5
       return 0.5583333333333333 # (67.0 out of 120.0)
    end   end )