create or replace function rf__51 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 9.5 then
    case when Q91 <= 2.0 then
       return 0.09982486865148861 # (57.0 out of 571.0)
    else  # if Q91 > 2.0
      case when Q94 <= 9.5 then
        case when Q93 <= 5.5 then
           return 0.0859375 # (11.0 out of 128.0)
        else  # if Q93 > 5.5
          case when Q99 <= 10.5 then
            case when Q85 <= 8.5 then
               return 0.22826086956521738 # (21.0 out of 92.0)
            else  # if Q85 > 8.5
               return 0.3047619047619048 # (32.0 out of 105.0)
            end           else  # if Q99 > 10.5
             return 0.1292517006802721 # (19.0 out of 147.0)
          end         end       else  # if Q94 > 9.5
         return 0.36893203883495146 # (38.0 out of 103.0)
      end     end   else  # if Q93 > 9.5
    case when Q87 <= 9.5 then
       return 0.4094488188976378 # (52.0 out of 127.0)
    else  # if Q87 > 9.5
       return 0.5094339622641509 # (54.0 out of 106.0)
    end   end )