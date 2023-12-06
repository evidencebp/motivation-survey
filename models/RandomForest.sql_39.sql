create or replace function rf__39 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q98 <= 2.5 then
       return 0.08471760797342193 # (51.0 out of 602.0)
    else  # if Q98 > 2.5
      case when Q85 <= 7.5 then
         return 0.25961538461538464 # (27.0 out of 104.0)
      else  # if Q85 > 7.5
         return 0.0851063829787234 # (8.0 out of 94.0)
      end     end   else  # if Q88 > 7.5
    case when Q98 <= 9.5 then
      case when Q83 <= 8.5 then
        case when Q90 <= 9.5 then
           return 0.36585365853658536 # (45.0 out of 123.0)
        else  # if Q90 > 9.5
           return 0.2857142857142857 # (26.0 out of 91.0)
        end       else  # if Q83 > 8.5
        case when Q89 <= 8.5 then
           return 0.12121212121212122 # (12.0 out of 99.0)
        else  # if Q89 > 8.5
          case when Q91 <= 10.5 then
             return 0.2714285714285714 # (19.0 out of 70.0)
          else  # if Q91 > 10.5
             return 0.22093023255813954 # (19.0 out of 86.0)
          end         end       end     else  # if Q98 > 9.5
       return 0.5454545454545454 # (60.0 out of 110.0)
    end   end )