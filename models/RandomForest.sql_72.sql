create or replace function rf__72 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 10.5 then
    case when Q95 <= 6.5 then
      case when Q71 <= 7.5 then
        case when Q92 <= 9.5 then
          case when Q1 <= 1.5 then
             return 0.10229276895943562 # (58.0 out of 567.0)
          else  # if Q1 > 1.5
             return 0.1375 # (11.0 out of 80.0)
          end         else  # if Q92 > 9.5
           return 0.06382978723404255 # (6.0 out of 94.0)
        end       else  # if Q71 > 7.5
         return 0.2108843537414966 # (31.0 out of 147.0)
      end     else  # if Q95 > 6.5
      case when Q1 <= 4.5 then
         return 0.25 # (20.0 out of 80.0)
      else  # if Q1 > 4.5
         return 0.2978723404255319 # (28.0 out of 94.0)
      end     end   else  # if Q91 > 10.5
    case when Q99 <= 10.5 then
       return 0.4954954954954955 # (55.0 out of 111.0)
    else  # if Q99 > 10.5
      case when Q95 <= 6.5 then
         return 0.21008403361344538 # (25.0 out of 119.0)
      else  # if Q95 > 6.5
         return 0.40229885057471265 # (35.0 out of 87.0)
      end     end   end )