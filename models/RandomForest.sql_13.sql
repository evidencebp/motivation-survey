create or replace function rf__13 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q93 <= 6.5 then
      case when Q98 <= 4.5 then
         return 0.10894308943089431 # (67.0 out of 615.0)
      else  # if Q98 > 4.5
         return 0.16161616161616163 # (16.0 out of 99.0)
      end     else  # if Q93 > 6.5
      case when Q99 <= 9.5 then
         return 0.2987012987012987 # (46.0 out of 154.0)
      else  # if Q99 > 9.5
         return 0.12578616352201258 # (20.0 out of 159.0)
      end     end   else  # if Q71 > 8.5
    case when Q88 <= 7.5 then
       return 0.15714285714285714 # (11.0 out of 70.0)
    else  # if Q88 > 7.5
      case when Q83 <= 7.5 then
         return 0.5436893203883495 # (56.0 out of 103.0)
      else  # if Q83 > 7.5
        case when Q91 <= 10.5 then
           return 0.375 # (36.0 out of 96.0)
        else  # if Q91 > 10.5
           return 0.3132530120481928 # (26.0 out of 83.0)
        end       end     end   end )