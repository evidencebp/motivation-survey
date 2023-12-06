create or replace function rf__32 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 8.5 then
    case when Q88 <= 7.5 then
      case when Q85 <= 7.5 then
        case when Q97 <= 7.5 then
           return 0.10481099656357389 # (61.0 out of 582.0)
        else  # if Q97 > 7.5
           return 0.2289156626506024 # (19.0 out of 83.0)
        end       else  # if Q85 > 7.5
         return 0.03614457831325301 # (3.0 out of 83.0)
      end     else  # if Q88 > 7.5
      case when Q98 <= 7.5 then
         return 0.13385826771653545 # (17.0 out of 127.0)
      else  # if Q98 > 7.5
         return 0.3409090909090909 # (30.0 out of 88.0)
      end     end   else  # if Q89 > 8.5
    case when Q87 <= 10.5 then
      case when Q96 <= 9.5 then
        case when Q1 <= 3.5 then
           return 0.30864197530864196 # (25.0 out of 81.0)
        else  # if Q1 > 3.5
           return 0.17543859649122806 # (20.0 out of 114.0)
        end       else  # if Q96 > 9.5
         return 0.3181818181818182 # (28.0 out of 88.0)
      end     else  # if Q87 > 10.5
       return 0.44360902255639095 # (59.0 out of 133.0)
    end   end )