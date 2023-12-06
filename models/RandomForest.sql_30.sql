create or replace function rf__30 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 8.5 then
    case when Q89 <= 6.5 then
      case when Q1 <= 3.5 then
         return 0.1226890756302521 # (73.0 out of 595.0)
      else  # if Q1 > 3.5
         return 0.04878048780487805 # (4.0 out of 82.0)
      end     else  # if Q89 > 6.5
       return 0.18235294117647058 # (31.0 out of 170.0)
    end   else  # if Q87 > 8.5
    case when Q90 <= 9.5 then
      case when Q93 <= 9.5 then
         return 0.1870967741935484 # (29.0 out of 155.0)
      else  # if Q93 > 9.5
         return 0.37777777777777777 # (34.0 out of 90.0)
      end     else  # if Q90 > 9.5
      case when Q95 <= 5.5 then
         return 0.25555555555555554 # (23.0 out of 90.0)
      else  # if Q95 > 5.5
        case when Q87 <= 9.5 then
           return 0.4177215189873418 # (33.0 out of 79.0)
        else  # if Q87 > 9.5
           return 0.3559322033898305 # (42.0 out of 118.0)
        end       end     end   end )