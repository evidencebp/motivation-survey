create or replace function rf__28 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 9.5 then
    case when Q87 <= 9.5 then
      case when Q88 <= 0.0 then
         return 0.1085814360770578 # (62.0 out of 571.0)
      else  # if Q88 > 0.0
        case when Q1 <= 3.5 then
          case when Q84 <= 6.5 then
             return 0.2823529411764706 # (24.0 out of 85.0)
          else  # if Q84 > 6.5
             return 0.14814814814814814 # (16.0 out of 108.0)
          end         else  # if Q1 > 3.5
          case when Q93 <= 8.5 then
            case when Q95 <= 5.5 then
               return 0.045454545454545456 # (4.0 out of 88.0)
            else  # if Q95 > 5.5
               return 0.12162162162162163 # (9.0 out of 74.0)
            end           else  # if Q93 > 8.5
             return 0.2619047619047619 # (22.0 out of 84.0)
          end         end       end     else  # if Q87 > 9.5
      case when Q96 <= 8.5 then
         return 0.24305555555555555 # (35.0 out of 144.0)
      else  # if Q96 > 8.5
         return 0.2903225806451613 # (27.0 out of 93.0)
      end     end   else  # if Q98 > 9.5
     return 0.4015151515151515 # (53.0 out of 132.0)
  end )