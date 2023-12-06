create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Recognition <= 0.5 then
     return 0.0 # (0.0 out of 15.0)
  else  # if Recognition > 0.5
    case when Self-use <= 0.5 then
      case when Hostility <= 0.5 then
        case when Challenge <= 0.5 then
          case when Learning <= 0.5 then
            case when Enjoyment <= 0.5 then
              case when Importance <= 0.5 then
                 return 0.0 # (0.0 out of 1.0)
              else  # if Importance > 0.5
                 return 1.0 # (1.0 out of 1.0)
              end             else  # if Enjoyment > 0.5
               return 1.0 # (2.0 out of 2.0)
            end           else  # if Learning > 0.5
            case when Ownership <= 0.5 then
               return 1.0 # (1.0 out of 1.0)
            else  # if Ownership > 0.5
               return 0.0 # (0.0 out of 2.0)
            end           end         else  # if Challenge > 0.5
           return 0.0 # (0.0 out of 2.0)
        end       else  # if Hostility > 0.5
        case when Ownership <= 0.5 then
           return 0.0 # (0.0 out of 6.0)
        else  # if Ownership > 0.5
          case when Challenge <= 0.5 then
            case when Learning <= 0.5 then
               return 0.5 # (1.0 out of 2.0)
            else  # if Learning > 0.5
               return 0.0 # (0.0 out of 1.0)
            end           else  # if Challenge > 0.5
             return 0.0 # (0.0 out of 1.0)
          end         end       end     else  # if Self-use > 0.5
      case when Hostility <= 0.5 then
        case when Ideology <= 0.5 then
           return 0.0 # (0.0 out of 3.0)
        else  # if Ideology > 0.5
          case when Learning <= 0.5 then
             return 0.0 # (0.0 out of 1.0)
          else  # if Learning > 0.5
             return 1.0 # (2.0 out of 2.0)
          end         end       else  # if Hostility > 0.5
         return 1.0 # (2.0 out of 2.0)
      end     end   end )