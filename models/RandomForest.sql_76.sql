create or replace function rf__76 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q94 <= 5.5 then
    case when Q95 <= 5.5 then
      case when Q1 <= 1.5 then
         return 0.09137055837563451 # (54.0 out of 591.0)
      else  # if Q1 > 1.5
         return 0.14285714285714285 # (13.0 out of 91.0)
      end     else  # if Q95 > 5.5
       return 0.225 # (18.0 out of 80.0)
    end   else  # if Q94 > 5.5
    case when Q84 <= 5.5 then
       return 0.14772727272727273 # (13.0 out of 88.0)
    else  # if Q84 > 5.5
      case when Q98 <= 9.5 then
        case when Q71 <= 8.5 then
          case when Q99 <= 10.5 then
             return 0.352112676056338 # (50.0 out of 142.0)
          else  # if Q99 > 10.5
             return 0.08035714285714286 # (9.0 out of 112.0)
          end         else  # if Q71 > 8.5
          case when Q91 <= 10.5 then
             return 0.32941176470588235 # (28.0 out of 85.0)
          else  # if Q91 > 10.5
             return 0.4020618556701031 # (39.0 out of 97.0)
          end         end       else  # if Q98 > 9.5
         return 0.46236559139784944 # (43.0 out of 93.0)
      end     end   end )