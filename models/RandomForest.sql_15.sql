create or replace function rf__15 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q89 <= 8.5 then
      case when Q96 <= 8.5 then
        case when Q88 <= 4.0 then
           return 0.09874326750448834 # (55.0 out of 557.0)
        else  # if Q88 > 4.0
           return 0.034482758620689655 # (4.0 out of 116.0)
        end       else  # if Q96 > 8.5
         return 0.14772727272727273 # (13.0 out of 88.0)
      end     else  # if Q89 > 8.5
      case when Q99 <= 10.5 then
         return 0.3076923076923077 # (40.0 out of 130.0)
      else  # if Q99 > 10.5
         return 0.09195402298850575 # (8.0 out of 87.0)
      end     end   else  # if Q71 > 8.5
    case when Q97 <= 9.5 then
       return 0.2894736842105263 # (44.0 out of 152.0)
    else  # if Q97 > 9.5
      case when Q99 <= 10.5 then
         return 0.514018691588785 # (55.0 out of 107.0)
      else  # if Q99 > 10.5
         return 0.4084507042253521 # (58.0 out of 142.0)
      end     end   end )