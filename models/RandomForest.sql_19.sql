create or replace function rf__19 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 8.5 then
    case when Q94 <= 7.5 then
      case when Q99 <= 8.5 then
         return 0.10361842105263158 # (63.0 out of 608.0)
      else  # if Q99 > 8.5
         return 0.14782608695652175 # (17.0 out of 115.0)
      end     else  # if Q94 > 7.5
       return 0.21238938053097345 # (24.0 out of 113.0)
    end   else  # if Q87 > 8.5
    case when Q98 <= 9.5 then
      case when Q93 <= 9.5 then
        case when Q85 <= 8.5 then
           return 0.05263157894736842 # (5.0 out of 95.0)
        else  # if Q85 > 8.5
          case when Q92 <= 10.5 then
             return 0.32051282051282054 # (25.0 out of 78.0)
          else  # if Q92 > 10.5
             return 0.19626168224299065 # (21.0 out of 107.0)
          end         end       else  # if Q93 > 9.5
         return 0.33098591549295775 # (47.0 out of 142.0)
      end     else  # if Q98 > 9.5
       return 0.3884297520661157 # (47.0 out of 121.0)
    end   end )