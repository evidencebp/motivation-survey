create or replace function rf__10 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 7.5 then
    case when Q89 <= 8.5 then
      case when Q84 <= 5.5 then
         return 0.11686143572621036 # (70.0 out of 599.0)
      else  # if Q84 > 5.5
        case when Q93 <= 8.5 then
           return 0.03571428571428571 # (3.0 out of 84.0)
        else  # if Q93 > 8.5
           return 0.10344827586206896 # (9.0 out of 87.0)
        end       end     else  # if Q89 > 8.5
      case when Q99 <= 10.5 then
         return 0.29464285714285715 # (33.0 out of 112.0)
      else  # if Q99 > 10.5
         return 0.11538461538461539 # (9.0 out of 78.0)
      end     end   else  # if Q71 > 7.5
    case when Q1 <= 3.5 then
      case when Q93 <= 8.5 then
         return 0.25842696629213485 # (23.0 out of 89.0)
      else  # if Q93 > 8.5
         return 0.6 # (69.0 out of 115.0)
      end     else  # if Q1 > 3.5
      case when Q84 <= 7.5 then
         return 0.2261904761904762 # (19.0 out of 84.0)
      else  # if Q84 > 7.5
         return 0.2900763358778626 # (38.0 out of 131.0)
      end     end   end )