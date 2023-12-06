create or replace function rf__38 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q89 <= 6.5 then
       return 0.10227272727272728 # (63.0 out of 616.0)
    else  # if Q89 > 6.5
       return 0.1743119266055046 # (19.0 out of 109.0)
    end   else  # if Q95 > 1.5
    case when Q89 <= 8.5 then
      case when Q97 <= 9.5 then
        case when Q93 <= 7.5 then
           return 0.08641975308641975 # (7.0 out of 81.0)
        else  # if Q93 > 7.5
           return 0.18947368421052632 # (18.0 out of 95.0)
        end       else  # if Q97 > 9.5
         return 0.24390243902439024 # (30.0 out of 123.0)
      end     else  # if Q89 > 8.5
      case when Q93 <= 10.5 then
        case when Q96 <= 8.5 then
           return 0.2714285714285714 # (38.0 out of 140.0)
        else  # if Q96 > 8.5
           return 0.34074074074074073 # (46.0 out of 135.0)
        end       else  # if Q93 > 10.5
         return 0.4625 # (37.0 out of 80.0)
      end     end   end )