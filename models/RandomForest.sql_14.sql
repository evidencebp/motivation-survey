create or replace function rf__14 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q88 <= 5.5 then
       return 0.10374149659863946 # (61.0 out of 588.0)
    else  # if Q88 > 5.5
      case when Q71 <= 6.5 then
         return 0.08823529411764706 # (9.0 out of 102.0)
      else  # if Q71 > 6.5
         return 0.2441860465116279 # (21.0 out of 86.0)
      end     end   else  # if Q88 > 7.5
    case when Q1 <= 1.5 then
       return 0.19540229885057472 # (17.0 out of 87.0)
    else  # if Q1 > 1.5
      case when Q95 <= 5.5 then
        case when Q1 <= 4.5 then
           return 0.26804123711340205 # (26.0 out of 97.0)
        else  # if Q1 > 4.5
           return 0.11267605633802817 # (8.0 out of 71.0)
        end       else  # if Q95 > 5.5
        case when Q89 <= 8.5 then
           return 0.23622047244094488 # (30.0 out of 127.0)
        else  # if Q89 > 8.5
          case when Q1 <= 5.5 then
             return 0.5203252032520326 # (64.0 out of 123.0)
          else  # if Q1 > 5.5
             return 0.3163265306122449 # (31.0 out of 98.0)
          end         end       end     end   end )