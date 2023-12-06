create or replace function rf__73 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q89 <= 8.5 then
      case when Q98 <= 7.5 then
        case when Q85 <= 3.5 then
           return 0.12265758091993186 # (72.0 out of 587.0)
        else  # if Q85 > 3.5
           return 0.05625 # (9.0 out of 160.0)
        end       else  # if Q98 > 7.5
         return 0.16666666666666666 # (22.0 out of 132.0)
      end     else  # if Q89 > 8.5
      case when Q97 <= 9.5 then
         return 0.37 # (37.0 out of 100.0)
      else  # if Q97 > 9.5
         return 0.1702127659574468 # (16.0 out of 94.0)
      end     end   else  # if Q91 > 10.5
    case when Q95 <= 6.5 then
      case when Q71 <= 8.5 then
         return 0.10256410256410256 # (8.0 out of 78.0)
      else  # if Q71 > 8.5
         return 0.4431818181818182 # (39.0 out of 88.0)
      end     else  # if Q95 > 6.5
       return 0.4642857142857143 # (65.0 out of 140.0)
    end   end )