create or replace function rf__52 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q71 <= 1.5 then
       return 0.10016155088852989 # (62.0 out of 619.0)
    else  # if Q71 > 1.5
       return 0.24731182795698925 # (23.0 out of 93.0)
    end   else  # if Q95 > 1.5
    case when Q91 <= 10.5 then
      case when Q98 <= 7.5 then
        case when Q98 <= 4.5 then
           return 0.27380952380952384 # (23.0 out of 84.0)
        else  # if Q98 > 4.5
           return 0.13245033112582782 # (20.0 out of 151.0)
        end       else  # if Q98 > 7.5
        case when Q95 <= 6.5 then
           return 0.2597402597402597 # (20.0 out of 77.0)
        else  # if Q95 > 6.5
           return 0.32653061224489793 # (32.0 out of 98.0)
        end       end     else  # if Q91 > 10.5
      case when Q93 <= 9.5 then
         return 0.24025974025974026 # (37.0 out of 154.0)
      else  # if Q93 > 9.5
         return 0.5436893203883495 # (56.0 out of 103.0)
      end     end   end )