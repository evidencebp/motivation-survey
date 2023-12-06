create or replace function rf__96 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 1.5 then
    case when Q90 <= 0.0 then
       return 0.11438474870017332 # (66.0 out of 577.0)
    else  # if Q90 > 0.0
       return 0.0975609756097561 # (8.0 out of 82.0)
    end   else  # if Q98 > 1.5
    case when Q98 <= 3.5 then
       return 0.4528301886792453 # (48.0 out of 106.0)
    else  # if Q98 > 3.5
      case when Q93 <= 10.5 then
        case when Q89 <= 5.5 then
           return 0.10227272727272728 # (9.0 out of 88.0)
        else  # if Q89 > 5.5
          case when Q88 <= 7.5 then
             return 0.11403508771929824 # (13.0 out of 114.0)
          else  # if Q88 > 7.5
            case when Q98 <= 8.5 then
              case when Q96 <= 8.5 then
                 return 0.18181818181818182 # (16.0 out of 88.0)
              else  # if Q96 > 8.5
                 return 0.3058823529411765 # (26.0 out of 85.0)
              end             else  # if Q98 > 8.5
               return 0.3548387096774194 # (44.0 out of 124.0)
            end           end         end       else  # if Q93 > 10.5
         return 0.4 # (46.0 out of 115.0)
      end     end   end )