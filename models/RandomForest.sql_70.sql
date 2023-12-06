create or replace function rf__70 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q89 <= 8.5 then
      case when Q92 <= 9.5 then
        case when Q97 <= 8.5 then
           return 0.12020033388981637 # (72.0 out of 599.0)
        else  # if Q97 > 8.5
           return 0.1724137931034483 # (15.0 out of 87.0)
        end       else  # if Q92 > 9.5
         return 0.08849557522123894 # (10.0 out of 113.0)
      end     else  # if Q89 > 8.5
      case when Q99 <= 9.5 then
         return 0.3157894736842105 # (36.0 out of 114.0)
      else  # if Q99 > 9.5
         return 0.13 # (13.0 out of 100.0)
      end     end   else  # if Q71 > 8.5
    case when Q88 <= 7.5 then
       return 0.22988505747126436 # (20.0 out of 87.0)
    else  # if Q88 > 7.5
      case when Q93 <= 9.5 then
        case when Q84 <= 8.5 then
           return 0.34444444444444444 # (31.0 out of 90.0)
        else  # if Q84 > 8.5
           return 0.4567901234567901 # (37.0 out of 81.0)
        end       else  # if Q93 > 9.5
         return 0.5833333333333334 # (63.0 out of 108.0)
      end     end   end )