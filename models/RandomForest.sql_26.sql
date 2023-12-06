create or replace function rf__26 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 8.5 then
    case when Q89 <= 3.5 then
       return 0.07972270363951472 # (46.0 out of 577.0)
    else  # if Q89 > 3.5
      case when Q94 <= 8.5 then
        case when Q97 <= 9.5 then
           return 0.14201183431952663 # (24.0 out of 169.0)
        else  # if Q97 > 9.5
           return 0.23333333333333334 # (21.0 out of 90.0)
        end       else  # if Q94 > 8.5
         return 0.30158730158730157 # (38.0 out of 126.0)
      end     end   else  # if Q89 > 8.5
    case when Q1 <= 3.5 then
      case when Q95 <= 6.5 then
         return 0.3902439024390244 # (48.0 out of 123.0)
      else  # if Q95 > 6.5
         return 0.5681818181818182 # (50.0 out of 88.0)
      end     else  # if Q1 > 3.5
      case when Q71 <= 8.5 then
         return 0.1875 # (21.0 out of 112.0)
      else  # if Q71 > 8.5
         return 0.35106382978723405 # (33.0 out of 94.0)
      end     end   end )