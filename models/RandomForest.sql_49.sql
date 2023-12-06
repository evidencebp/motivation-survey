create or replace function rf__49 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 1.5 then
    case when Q96 <= 3.5 then
       return 0.12020033388981637 # (72.0 out of 599.0)
    else  # if Q96 > 3.5
       return 0.010752688172043012 # (1.0 out of 93.0)
    end   else  # if Q71 > 1.5
    case when Q85 <= 9.5 then
      case when Q89 <= 8.5 then
        case when Q90 <= 8.5 then
           return 0.25833333333333336 # (31.0 out of 120.0)
        else  # if Q90 > 8.5
          case when Q71 <= 8.5 then
             return 0.09183673469387756 # (9.0 out of 98.0)
          else  # if Q71 > 8.5
             return 0.21348314606741572 # (19.0 out of 89.0)
          end         end       else  # if Q89 > 8.5
        case when Q99 <= 10.5 then
           return 0.44360902255639095 # (59.0 out of 133.0)
        else  # if Q99 > 10.5
           return 0.23958333333333334 # (23.0 out of 96.0)
        end       end     else  # if Q85 > 9.5
       return 0.3973509933774834 # (60.0 out of 151.0)
    end   end )