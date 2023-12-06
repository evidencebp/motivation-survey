create or replace function rf__87 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q83 <= 1.5 then
     return 0.12359550561797752 # (66.0 out of 534.0)
  else  # if Q83 > 1.5
    case when Q93 <= 9.5 then
      case when Q83 <= 6.5 then
         return 0.3790849673202614 # (58.0 out of 153.0)
      else  # if Q83 > 6.5
        case when Q96 <= 9.5 then
          case when Q96 <= 8.5 then
            case when Q91 <= 10.5 then
               return 0.06293706293706294 # (9.0 out of 143.0)
            else  # if Q91 > 10.5
               return 0.19318181818181818 # (17.0 out of 88.0)
            end           else  # if Q96 > 8.5
             return 0.1834862385321101 # (20.0 out of 109.0)
          end         else  # if Q96 > 9.5
           return 0.3425925925925926 # (37.0 out of 108.0)
        end       end     else  # if Q93 > 9.5
      case when Q85 <= 8.5 then
         return 0.47560975609756095 # (39.0 out of 82.0)
      else  # if Q85 > 8.5
        case when Q1 <= 3.5 then
           return 0.4111111111111111 # (37.0 out of 90.0)
        else  # if Q1 > 3.5
           return 0.3055555555555556 # (22.0 out of 72.0)
        end       end     end   end )