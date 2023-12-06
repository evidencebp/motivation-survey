create or replace function rf__40 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q96 <= 1.5 then
     return 0.10714285714285714 # (66.0 out of 616.0)
  else  # if Q96 > 1.5
    case when Q71 <= 1.5 then
       return 0.05952380952380952 # (5.0 out of 84.0)
    else  # if Q71 > 1.5
      case when Q93 <= 9.5 then
        case when Q98 <= 4.5 then
           return 0.34831460674157305 # (31.0 out of 89.0)
        else  # if Q98 > 4.5
          case when Q88 <= 7.5 then
             return 0.1015625 # (13.0 out of 128.0)
          else  # if Q88 > 7.5
            case when Q84 <= 7.5 then
               return 0.22105263157894736 # (21.0 out of 95.0)
            else  # if Q84 > 7.5
              case when Q1 <= 4.5 then
                 return 0.3176470588235294 # (27.0 out of 85.0)
              else  # if Q1 > 4.5
                 return 0.25 # (19.0 out of 76.0)
              end             end           end         end       else  # if Q93 > 9.5
        case when Q91 <= 10.5 then
           return 0.3523809523809524 # (37.0 out of 105.0)
        else  # if Q91 > 10.5
           return 0.5445544554455446 # (55.0 out of 101.0)
        end       end     end   end )