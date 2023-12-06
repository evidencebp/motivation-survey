create or replace function rf__75 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q98 <= 8.5 then
      case when Q71 <= 1.5 then
        case when Q90 <= 1.0 then
           return 0.1125 # (63.0 out of 560.0)
        else  # if Q90 > 1.0
           return 0.012048192771084338 # (1.0 out of 83.0)
        end       else  # if Q71 > 1.5
        case when Q91 <= 10.5 then
          case when Q90 <= 8.5 then
             return 0.08974358974358974 # (7.0 out of 78.0)
          else  # if Q90 > 8.5
             return 0.1565217391304348 # (18.0 out of 115.0)
          end         else  # if Q91 > 10.5
           return 0.19230769230769232 # (15.0 out of 78.0)
        end       end     else  # if Q98 > 8.5
       return 0.2608695652173913 # (30.0 out of 115.0)
    end   else  # if Q71 > 8.5
    case when Q83 <= 8.5 then
       return 0.4421768707482993 # (65.0 out of 147.0)
    else  # if Q83 > 8.5
      case when Q94 <= 8.5 then
         return 0.23958333333333334 # (23.0 out of 96.0)
      else  # if Q94 > 8.5
         return 0.40186915887850466 # (43.0 out of 107.0)
      end     end   end )