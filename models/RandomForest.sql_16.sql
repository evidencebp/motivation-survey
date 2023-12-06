create or replace function rf__16 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q91 <= 8.5 then
    case when Q92 <= 6.5 then
       return 0.09043478260869565 # (52.0 out of 575.0)
    else  # if Q92 > 6.5
       return 0.16551724137931034 # (24.0 out of 145.0)
    end   else  # if Q91 > 8.5
    case when Q87 <= 7.5 then
       return 0.18627450980392157 # (19.0 out of 102.0)
    else  # if Q87 > 7.5
      case when Q83 <= 6.5 then
         return 0.42105263157894735 # (64.0 out of 152.0)
      else  # if Q83 > 6.5
        case when Q96 <= 9.5 then
          case when Q94 <= 8.5 then
            case when Q1 <= 3.5 then
               return 0.0759493670886076 # (6.0 out of 79.0)
            else  # if Q1 > 3.5
               return 0.2375 # (19.0 out of 80.0)
            end           else  # if Q94 > 8.5
             return 0.2767857142857143 # (31.0 out of 112.0)
          end         else  # if Q96 > 9.5
           return 0.41044776119402987 # (55.0 out of 134.0)
        end       end     end   end )