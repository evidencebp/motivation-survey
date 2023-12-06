create or replace function rf__86 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q91 <= 8.5 then
       return 0.10355987055016182 # (64.0 out of 618.0)
    else  # if Q91 > 8.5
       return 0.14563106796116504 # (15.0 out of 103.0)
    end   else  # if Q95 > 1.5
    case when Q85 <= 9.5 then
      case when Q93 <= 10.5 then
        case when Q1 <= 3.5 then
          case when Q97 <= 9.5 then
             return 0.3855421686746988 # (32.0 out of 83.0)
          else  # if Q97 > 9.5
             return 0.24096385542168675 # (20.0 out of 83.0)
          end         else  # if Q1 > 3.5
          case when Q93 <= 7.5 then
             return 0.1206896551724138 # (14.0 out of 116.0)
          else  # if Q93 > 7.5
             return 0.21739130434782608 # (30.0 out of 138.0)
          end         end       else  # if Q93 > 10.5
         return 0.5054945054945055 # (46.0 out of 91.0)
      end     else  # if Q85 > 9.5
       return 0.41496598639455784 # (61.0 out of 147.0)
    end   end )