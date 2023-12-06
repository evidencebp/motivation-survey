create or replace function rf__68 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q90 <= 6.5 then
       return 0.1168 # (73.0 out of 625.0)
    else  # if Q90 > 6.5
      case when Q97 <= 10.5 then
        case when Q93 <= 8.5 then
           return 0.16666666666666666 # (20.0 out of 120.0)
        else  # if Q93 > 8.5
           return 0.26956521739130435 # (31.0 out of 115.0)
        end       else  # if Q97 > 10.5
         return 0.10526315789473684 # (16.0 out of 152.0)
      end     end   else  # if Q71 > 8.5
    case when Q89 <= 6.5 then
       return 0.1958762886597938 # (19.0 out of 97.0)
    else  # if Q89 > 6.5
      case when Q1 <= 3.5 then
         return 0.4533333333333333 # (68.0 out of 150.0)
      else  # if Q1 > 3.5
         return 0.3333333333333333 # (40.0 out of 120.0)
      end     end   end )