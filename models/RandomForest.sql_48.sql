create or replace function rf__48 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q87 <= 7.5 then
    case when Q96 <= 7.5 then
      case when Q97 <= 4.5 then
         return 0.09838998211091235 # (55.0 out of 559.0)
      else  # if Q97 > 4.5
         return 0.07865168539325842 # (7.0 out of 89.0)
      end     else  # if Q96 > 7.5
       return 0.2222222222222222 # (18.0 out of 81.0)
    end   else  # if Q87 > 7.5
    case when Q71 <= 8.5 then
      case when Q92 <= 9.5 then
         return 0.2517482517482518 # (36.0 out of 143.0)
      else  # if Q92 > 9.5
        case when Q99 <= 10.5 then
           return 0.1919191919191919 # (19.0 out of 99.0)
        else  # if Q99 > 10.5
           return 0.08737864077669903 # (9.0 out of 103.0)
        end       end     else  # if Q71 > 8.5
      case when Q93 <= 9.5 then
        case when Q87 <= 9.5 then
           return 0.4017857142857143 # (45.0 out of 112.0)
        else  # if Q87 > 9.5
           return 0.20689655172413793 # (18.0 out of 87.0)
        end       else  # if Q93 > 9.5
         return 0.5094339622641509 # (54.0 out of 106.0)
      end     end   end )