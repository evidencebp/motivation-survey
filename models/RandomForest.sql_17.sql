create or replace function rf__17 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q90 <= 7.5 then
       return 0.115 # (69.0 out of 600.0)
    else  # if Q90 > 7.5
       return 0.21359223300970873 # (22.0 out of 103.0)
    end   else  # if Q95 > 1.5
    case when Q98 <= 9.5 then
      case when Q83 <= 7.5 then
        case when Q97 <= 9.5 then
           return 0.24210526315789474 # (23.0 out of 95.0)
        else  # if Q97 > 9.5
           return 0.4936708860759494 # (39.0 out of 79.0)
        end       else  # if Q83 > 7.5
        case when Q95 <= 8.5 then
          case when Q93 <= 8.5 then
             return 0.13194444444444445 # (19.0 out of 144.0)
          else  # if Q93 > 8.5
             return 0.25396825396825395 # (32.0 out of 126.0)
          end         else  # if Q95 > 8.5
           return 0.08333333333333333 # (7.0 out of 84.0)
        end       end     else  # if Q98 > 9.5
       return 0.39864864864864863 # (59.0 out of 148.0)
    end   end )