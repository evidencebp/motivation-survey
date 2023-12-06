create or replace function rf__63 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 9.5 then
    case when Q91 <= 10.5 then
      case when Q85 <= 8.5 then
        case when Q1 <= 2.5 then
           return 0.13675213675213677 # (80.0 out of 585.0)
        else  # if Q1 > 2.5
          case when Q89 <= 6.5 then
             return 0.0898876404494382 # (8.0 out of 89.0)
          else  # if Q89 > 6.5
             return 0.125 # (11.0 out of 88.0)
          end         end       else  # if Q85 > 8.5
         return 0.2 # (34.0 out of 170.0)
      end     else  # if Q91 > 10.5
      case when Q1 <= 3.5 then
         return 0.3211009174311927 # (35.0 out of 109.0)
      else  # if Q1 > 3.5
         return 0.21686746987951808 # (18.0 out of 83.0)
      end     end   else  # if Q93 > 9.5
    case when Q83 <= 9.5 then
      case when Q99 <= 9.5 then
         return 0.6463414634146342 # (53.0 out of 82.0)
      else  # if Q99 > 9.5
         return 0.23157894736842105 # (22.0 out of 95.0)
      end     else  # if Q83 > 9.5
       return 0.3717948717948718 # (29.0 out of 78.0)
    end   end )