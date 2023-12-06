create or replace function rf__74 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q94 <= 6.5 then
      case when Q88 <= 3.5 then
         return 0.1140819964349376 # (64.0 out of 561.0)
      else  # if Q88 > 3.5
         return 0.18867924528301888 # (20.0 out of 106.0)
      end     else  # if Q94 > 6.5
       return 0.06363636363636363 # (7.0 out of 110.0)
    end   else  # if Q88 > 7.5
    case when Q93 <= 9.5 then
      case when Q96 <= 7.5 then
         return 0.16339869281045752 # (25.0 out of 153.0)
      else  # if Q96 > 7.5
        case when Q99 <= 10.5 then
           return 0.33070866141732286 # (42.0 out of 127.0)
        else  # if Q99 > 10.5
           return 0.20161290322580644 # (25.0 out of 124.0)
        end       end     else  # if Q93 > 9.5
      case when Q94 <= 7.5 then
         return 0.2839506172839506 # (23.0 out of 81.0)
      else  # if Q94 > 7.5
         return 0.4700854700854701 # (55.0 out of 117.0)
      end     end   end )