create or replace function rf__97 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q91 <= 8.5 then
       return 0.10606060606060606 # (63.0 out of 594.0)
    else  # if Q91 > 8.5
       return 0.18181818181818182 # (20.0 out of 110.0)
    end   else  # if Q95 > 1.5
    case when Q92 <= 9.5 then
      case when Q95 <= 6.5 then
         return 0.1118421052631579 # (17.0 out of 152.0)
      else  # if Q95 > 6.5
         return 0.3431372549019608 # (35.0 out of 102.0)
      end     else  # if Q92 > 9.5
      case when Q93 <= 10.5 then
        case when Q71 <= 8.5 then
           return 0.1865671641791045 # (25.0 out of 134.0)
        else  # if Q71 > 8.5
          case when Q97 <= 10.5 then
             return 0.26436781609195403 # (23.0 out of 87.0)
          else  # if Q97 > 10.5
             return 0.375 # (33.0 out of 88.0)
          end         end       else  # if Q93 > 10.5
         return 0.5 # (56.0 out of 112.0)
      end     end   end )