create or replace function rf__83 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 6.5 then
    case when Q93 <= 5.5 then
       return 0.08439490445859872 # (53.0 out of 628.0)
    else  # if Q93 > 5.5
       return 0.2 # (18.0 out of 90.0)
    end   else  # if Q88 > 6.5
    case when Q93 <= 8.5 then
      case when Q96 <= 7.5 then
         return 0.14285714285714285 # (12.0 out of 84.0)
      else  # if Q96 > 7.5
        case when Q91 <= 9.5 then
           return 0.24731182795698925 # (23.0 out of 93.0)
        else  # if Q91 > 9.5
           return 0.19658119658119658 # (23.0 out of 117.0)
        end       end     else  # if Q93 > 8.5
      case when Q83 <= 8.5 then
         return 0.4444444444444444 # (60.0 out of 135.0)
      else  # if Q83 > 8.5
        case when Q71 <= 8.5 then
           return 0.15079365079365079 # (19.0 out of 126.0)
        else  # if Q71 > 8.5
           return 0.33962264150943394 # (36.0 out of 106.0)
        end       end     end   end )