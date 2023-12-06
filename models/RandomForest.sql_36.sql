create or replace function rf__36 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 1.5 then
    case when Q94 <= 1.5 then
       return 0.12478031634446397 # (71.0 out of 569.0)
    else  # if Q94 > 1.5
       return 0.02857142857142857 # (3.0 out of 105.0)
    end   else  # if Q71 > 1.5
    case when Q98 <= 4.5 then
       return 0.40441176470588236 # (55.0 out of 136.0)
    else  # if Q98 > 4.5
      case when Q87 <= 7.5 then
         return 0.13157894736842105 # (15.0 out of 114.0)
      else  # if Q87 > 7.5
        case when Q88 <= 9.5 then
          case when Q71 <= 8.5 then
             return 0.21794871794871795 # (34.0 out of 156.0)
          else  # if Q71 > 8.5
            case when Q1 <= 3.5 then
               return 0.4065934065934066 # (37.0 out of 91.0)
            else  # if Q1 > 3.5
               return 0.35526315789473684 # (27.0 out of 76.0)
            end           end         else  # if Q88 > 9.5
           return 0.21212121212121213 # (28.0 out of 132.0)
        end       end     end   end )