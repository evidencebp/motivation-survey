create or replace function rf__79 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q84 <= 5.5 then
    case when Q71 <= 1.5 then
       return 0.11327433628318584 # (64.0 out of 565.0)
    else  # if Q71 > 1.5
       return 0.16666666666666666 # (18.0 out of 108.0)
    end   else  # if Q84 > 5.5
    case when Q91 <= 10.5 then
      case when Q83 <= 6.5 then
         return 0.2831858407079646 # (32.0 out of 113.0)
      else  # if Q83 > 6.5
        case when Q98 <= 8.5 then
          case when Q89 <= 8.5 then
             return 0.04081632653061224 # (4.0 out of 98.0)
          else  # if Q89 > 8.5
             return 0.25274725274725274 # (23.0 out of 91.0)
          end         else  # if Q98 > 8.5
           return 0.20430107526881722 # (19.0 out of 93.0)
        end       end     else  # if Q91 > 10.5
      case when Q83 <= 6.5 then
         return 0.45918367346938777 # (45.0 out of 98.0)
      else  # if Q83 > 6.5
        case when Q87 <= 9.5 then
           return 0.22123893805309736 # (25.0 out of 113.0)
        else  # if Q87 > 9.5
           return 0.3 # (30.0 out of 100.0)
        end       end     end   end )