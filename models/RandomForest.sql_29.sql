create or replace function rf__29 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 1.5 then
    case when Q88 <= 2.0 then
       return 0.10787671232876712 # (63.0 out of 584.0)
    else  # if Q88 > 2.0
       return 0.12790697674418605 # (11.0 out of 86.0)
    end   else  # if Q98 > 1.5
    case when Q89 <= 8.5 then
      case when Q96 <= 8.5 then
        case when Q71 <= 6.5 then
           return 0.07228915662650602 # (6.0 out of 83.0)
        else  # if Q71 > 6.5
           return 0.18556701030927836 # (18.0 out of 97.0)
        end       else  # if Q96 > 8.5
        case when Q84 <= 6.5 then
           return 0.3563218390804598 # (31.0 out of 87.0)
        else  # if Q84 > 6.5
           return 0.14634146341463414 # (12.0 out of 82.0)
        end       end     else  # if Q89 > 8.5
      case when Q83 <= 7.5 then
         return 0.3870967741935484 # (48.0 out of 124.0)
      else  # if Q83 > 7.5
        case when Q93 <= 9.5 then
           return 0.20261437908496732 # (31.0 out of 153.0)
        else  # if Q93 > 9.5
           return 0.4819277108433735 # (40.0 out of 83.0)
        end       end     end   end )