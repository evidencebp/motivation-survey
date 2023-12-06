create or replace function rf__46 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 9.5 then
    case when Q97 <= 9.5 then
      case when Q87 <= 8.5 then
        case when Q95 <= 3.5 then
           return 0.09967845659163987 # (62.0 out of 622.0)
        else  # if Q95 > 3.5
           return 0.052083333333333336 # (5.0 out of 96.0)
        end       else  # if Q87 > 8.5
        case when Q92 <= 9.5 then
           return 0.24719101123595505 # (22.0 out of 89.0)
        else  # if Q92 > 9.5
           return 0.16666666666666666 # (17.0 out of 102.0)
        end       end     else  # if Q97 > 9.5
      case when Q71 <= 8.5 then
        case when Q99 <= 10.5 then
           return 0.1724137931034483 # (15.0 out of 87.0)
        else  # if Q99 > 10.5
           return 0.06593406593406594 # (6.0 out of 91.0)
        end       else  # if Q71 > 8.5
         return 0.4304635761589404 # (65.0 out of 151.0)
      end     end   else  # if Q98 > 9.5
     return 0.46808510638297873 # (66.0 out of 141.0)
  end )