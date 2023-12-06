create or replace function rf__85 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 1.5 then
    case when Q85 <= 4.5 then
       return 0.09314586994727592 # (53.0 out of 569.0)
    else  # if Q85 > 4.5
       return 0.024793388429752067 # (3.0 out of 121.0)
    end   else  # if Q71 > 1.5
    case when Q93 <= 10.5 then
      case when Q99 <= 10.5 then
        case when Q87 <= 8.5 then
           return 0.23333333333333334 # (28.0 out of 120.0)
        else  # if Q87 > 8.5
          case when Q83 <= 7.5 then
             return 0.45 # (36.0 out of 80.0)
          else  # if Q83 > 7.5
             return 0.2872340425531915 # (27.0 out of 94.0)
          end         end       else  # if Q99 > 10.5
        case when Q71 <= 8.5 then
           return 0.1322314049586777 # (16.0 out of 121.0)
        else  # if Q71 > 8.5
           return 0.2748091603053435 # (36.0 out of 131.0)
        end       end     else  # if Q93 > 10.5
       return 0.48951048951048953 # (70.0 out of 143.0)
    end   end )