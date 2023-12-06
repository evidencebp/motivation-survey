create or replace function rf__47 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q94 <= 5.5 then
       return 0.09390444810543658 # (57.0 out of 607.0)
    else  # if Q94 > 5.5
       return 0.21818181818181817 # (24.0 out of 110.0)
    end   else  # if Q93 > 5.5
    case when Q91 <= 10.5 then
      case when Q89 <= 8.5 then
        case when Q88 <= 7.5 then
           return 0.10126582278481013 # (8.0 out of 79.0)
        else  # if Q88 > 7.5
           return 0.21052631578947367 # (28.0 out of 133.0)
        end       else  # if Q89 > 8.5
        case when Q94 <= 7.5 then
           return 0.2777777777777778 # (25.0 out of 90.0)
        else  # if Q94 > 7.5
           return 0.3037974683544304 # (24.0 out of 79.0)
        end       end     else  # if Q91 > 10.5
      case when Q94 <= 7.5 then
         return 0.2846153846153846 # (37.0 out of 130.0)
      else  # if Q94 > 7.5
         return 0.47019867549668876 # (71.0 out of 151.0)
      end     end   end )