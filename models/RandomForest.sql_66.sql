create or replace function rf__66 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q96 <= 7.5 then
       return 0.09936908517350158 # (63.0 out of 634.0)
    else  # if Q96 > 7.5
       return 0.18947368421052632 # (18.0 out of 95.0)
    end   else  # if Q93 > 5.5
    case when Q88 <= 7.5 then
      case when Q84 <= 6.5 then
         return 0.2839506172839506 # (23.0 out of 81.0)
      else  # if Q84 > 6.5
         return 0.125 # (10.0 out of 80.0)
      end     else  # if Q88 > 7.5
      case when Q85 <= 10.5 then
        case when Q89 <= 7.5 then
           return 0.14516129032258066 # (18.0 out of 124.0)
        else  # if Q89 > 7.5
          case when Q71 <= 8.5 then
             return 0.28859060402684567 # (43.0 out of 149.0)
          else  # if Q71 > 8.5
             return 0.43902439024390244 # (54.0 out of 123.0)
          end         end       else  # if Q85 > 10.5
         return 0.46236559139784944 # (43.0 out of 93.0)
      end     end   end )