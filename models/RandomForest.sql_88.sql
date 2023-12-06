create or replace function rf__88 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q97 <= 8.5 then
       return 0.10493827160493827 # (68.0 out of 648.0)
    else  # if Q97 > 8.5
       return 0.1780821917808219 # (26.0 out of 146.0)
    end   else  # if Q88 > 7.5
    case when Q93 <= 9.5 then
      case when Q71 <= 7.5 then
        case when Q95 <= 5.5 then
           return 0.09523809523809523 # (8.0 out of 84.0)
        else  # if Q95 > 5.5
           return 0.21153846153846154 # (22.0 out of 104.0)
        end       else  # if Q71 > 7.5
        case when Q99 <= 10.5 then
           return 0.42201834862385323 # (46.0 out of 109.0)
        else  # if Q99 > 10.5
           return 0.1794871794871795 # (14.0 out of 78.0)
        end       end     else  # if Q93 > 9.5
      case when Q99 <= 9.5 then
         return 0.4186046511627907 # (36.0 out of 86.0)
      else  # if Q99 > 9.5
         return 0.3790322580645161 # (47.0 out of 124.0)
      end     end   end )