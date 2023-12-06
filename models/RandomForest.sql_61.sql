create or replace function rf__61 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 8.5 then
    case when Q96 <= 8.5 then
      case when Q95 <= 4.5 then
        case when Q71 <= 0.0 then
           return 0.10363636363636364 # (57.0 out of 550.0)
        else  # if Q71 > 0.0
           return 0.22784810126582278 # (18.0 out of 79.0)
        end       else  # if Q95 > 4.5
         return 0.02702702702702703 # (2.0 out of 74.0)
      end     else  # if Q96 > 8.5
       return 0.1935483870967742 # (24.0 out of 124.0)
    end   else  # if Q87 > 8.5
    case when Q99 <= 10.5 then
      case when Q96 <= 8.5 then
        case when Q95 <= 5.5 then
           return 0.32142857142857145 # (27.0 out of 84.0)
        else  # if Q95 > 5.5
           return 0.2972972972972973 # (22.0 out of 74.0)
        end       else  # if Q96 > 8.5
         return 0.4172661870503597 # (58.0 out of 139.0)
      end     else  # if Q99 > 10.5
      case when Q90 <= 9.5 then
         return 0.1346153846153846 # (14.0 out of 104.0)
      else  # if Q90 > 9.5
         return 0.2847682119205298 # (43.0 out of 151.0)
      end     end   end )