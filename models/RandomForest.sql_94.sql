create or replace function rf__94 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q96 <= 8.5 then
      case when Q91 <= 8.5 then
         return 0.09546925566343042 # (59.0 out of 618.0)
      else  # if Q91 > 8.5
         return 0.13636363636363635 # (9.0 out of 66.0)
      end     else  # if Q96 > 8.5
       return 0.1590909090909091 # (14.0 out of 88.0)
    end   else  # if Q88 > 7.5
    case when Q71 <= 8.5 then
      case when Q89 <= 8.5 then
         return 0.14285714285714285 # (15.0 out of 105.0)
      else  # if Q89 > 8.5
        case when Q84 <= 8.5 then
           return 0.31313131313131315 # (31.0 out of 99.0)
        else  # if Q84 > 8.5
           return 0.14953271028037382 # (16.0 out of 107.0)
        end       end     else  # if Q71 > 8.5
      case when Q93 <= 10.5 then
        case when Q94 <= 8.5 then
           return 0.2636363636363636 # (29.0 out of 110.0)
        else  # if Q94 > 8.5
           return 0.39805825242718446 # (41.0 out of 103.0)
        end       else  # if Q93 > 10.5
         return 0.6144578313253012 # (51.0 out of 83.0)
      end     end   end )