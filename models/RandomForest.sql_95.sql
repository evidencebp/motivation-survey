create or replace function rf__95 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 5.5 then
    case when Q92 <= 7.5 then
       return 0.11171171171171171 # (62.0 out of 555.0)
    else  # if Q92 > 7.5
       return 0.1793103448275862 # (26.0 out of 145.0)
    end   else  # if Q93 > 5.5
    case when Q96 <= 8.5 then
      case when Q91 <= 10.5 then
        case when Q71 <= 8.5 then
           return 0.08461538461538462 # (11.0 out of 130.0)
        else  # if Q71 > 8.5
           return 0.22077922077922077 # (17.0 out of 77.0)
        end       else  # if Q91 > 10.5
         return 0.3695652173913043 # (51.0 out of 138.0)
      end     else  # if Q96 > 8.5
      case when Q99 <= 9.5 then
         return 0.48695652173913045 # (56.0 out of 115.0)
      else  # if Q99 > 9.5
        case when Q98 <= 8.5 then
           return 0.18181818181818182 # (18.0 out of 99.0)
        else  # if Q98 > 8.5
           return 0.375 # (45.0 out of 120.0)
        end       end     end   end )