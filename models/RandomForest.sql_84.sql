create or replace function rf__84 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 1.5 then
     return 0.10606060606060606 # (63.0 out of 594.0)
  else  # if Q88 > 1.5
    case when Q87 <= 8.5 then
      case when Q1 <= 5.5 then
         return 0.25 # (37.0 out of 148.0)
      else  # if Q1 > 5.5
         return 0.14444444444444443 # (13.0 out of 90.0)
      end     else  # if Q87 > 8.5
      case when Q85 <= 8.5 then
         return 0.22289156626506024 # (37.0 out of 166.0)
      else  # if Q85 > 8.5
        case when Q91 <= 10.5 then
          case when Q71 <= 8.5 then
             return 0.2268041237113402 # (22.0 out of 97.0)
          else  # if Q71 > 8.5
             return 0.36633663366336633 # (37.0 out of 101.0)
          end         else  # if Q91 > 10.5
          case when Q71 <= 8.5 then
             return 0.3176470588235294 # (27.0 out of 85.0)
          else  # if Q71 > 8.5
             return 0.5 # (49.0 out of 98.0)
          end         end       end     end   end )