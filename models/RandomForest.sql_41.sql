create or replace function rf__41 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q92 <= 5.5 then
     return 0.118491921005386 # (66.0 out of 557.0)
  else  # if Q92 > 5.5
    case when Q83 <= 6.5 then
      case when Q91 <= 10.5 then
         return 0.3049645390070922 # (43.0 out of 141.0)
      else  # if Q91 > 10.5
         return 0.5 # (44.0 out of 88.0)
      end     else  # if Q83 > 6.5
      case when Q85 <= 9.5 then
        case when Q89 <= 6.5 then
           return 0.15151515151515152 # (20.0 out of 132.0)
        else  # if Q89 > 6.5
          case when Q95 <= 8.5 then
            case when Q94 <= 7.5 then
               return 0.10743801652892562 # (13.0 out of 121.0)
            else  # if Q94 > 7.5
               return 0.2537313432835821 # (34.0 out of 134.0)
            end           else  # if Q95 > 8.5
             return 0.3854166666666667 # (37.0 out of 96.0)
          end         end       else  # if Q85 > 9.5
         return 0.43636363636363634 # (48.0 out of 110.0)
      end     end   end )