create or replace function rf__89 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q93 <= 9.5 then
      case when Q96 <= 8.5 then
        case when Q83 <= 6.5 then
           return 0.11498257839721254 # (66.0 out of 574.0)
        else  # if Q83 > 6.5
           return 0.040268456375838924 # (6.0 out of 149.0)
        end       else  # if Q96 > 8.5
         return 0.17054263565891473 # (22.0 out of 129.0)
      end     else  # if Q93 > 9.5
       return 0.24822695035460993 # (35.0 out of 141.0)
    end   else  # if Q71 > 8.5
    case when Q97 <= 9.5 then
      case when Q92 <= 10.5 then
         return 0.2111111111111111 # (19.0 out of 90.0)
      else  # if Q92 > 10.5
         return 0.24675324675324675 # (19.0 out of 77.0)
      end     else  # if Q97 > 9.5
      case when Q95 <= 7.5 then
         return 0.32592592592592595 # (44.0 out of 135.0)
      else  # if Q95 > 7.5
         return 0.5357142857142857 # (45.0 out of 84.0)
      end     end   end )