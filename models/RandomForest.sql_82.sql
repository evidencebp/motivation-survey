create or replace function rf__82 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 1.5 then
    case when Q94 <= 3.5 then
       return 0.11846689895470383 # (68.0 out of 574.0)
    else  # if Q94 > 3.5
       return 0.03125 # (3.0 out of 96.0)
    end   else  # if Q71 > 1.5
    case when Q71 <= 8.5 then
      case when Q71 <= 5.5 then
         return 0.3118279569892473 # (29.0 out of 93.0)
      else  # if Q71 > 5.5
        case when Q97 <= 10.5 then
          case when Q87 <= 8.5 then
             return 0.20430107526881722 # (19.0 out of 93.0)
          else  # if Q87 > 8.5
             return 0.2345679012345679 # (19.0 out of 81.0)
          end         else  # if Q97 > 10.5
           return 0.11235955056179775 # (10.0 out of 89.0)
        end       end     else  # if Q71 > 8.5
      case when Q83 <= 6.5 then
         return 0.42990654205607476 # (46.0 out of 107.0)
      else  # if Q83 > 6.5
        case when Q1 <= 3.5 then
           return 0.35537190082644626 # (43.0 out of 121.0)
        else  # if Q1 > 3.5
           return 0.248 # (31.0 out of 125.0)
        end       end     end   end )