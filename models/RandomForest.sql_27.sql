create or replace function rf__27 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q99 <= 6.5 then
       return 0.12355848434925865 # (75.0 out of 607.0)
    else  # if Q99 > 6.5
       return 0.08064516129032258 # (10.0 out of 124.0)
    end   else  # if Q93 > 5.5
    case when Q98 <= 9.5 then
      case when Q1 <= 3.5 then
        case when Q99 <= 9.5 then
           return 0.41228070175438597 # (47.0 out of 114.0)
        else  # if Q99 > 9.5
           return 0.21804511278195488 # (29.0 out of 133.0)
        end       else  # if Q1 > 3.5
        case when Q95 <= 7.5 then
          case when Q93 <= 8.5 then
             return 0.125 # (11.0 out of 88.0)
          else  # if Q93 > 8.5
             return 0.2900763358778626 # (38.0 out of 131.0)
          end         else  # if Q95 > 7.5
           return 0.09090909090909091 # (7.0 out of 77.0)
        end       end     else  # if Q98 > 9.5
       return 0.4380952380952381 # (46.0 out of 105.0)
    end   end )