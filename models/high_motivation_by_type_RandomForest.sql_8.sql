create or replace function rf__8 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Importance <= 0.5 then
    case when Enjoyment <= 0.5 then
      case when Ownership <= 0.5 then
        case when Ideology <= 0.5 then
          case when Payment <= -0.5 then
             return 0.10526315789473684 # (2.0 out of 19.0)
          else  # if Payment > -0.5
             return 0.0 # (0.0 out of 8.0)
          end         else  # if Ideology > 0.5
          case when Self-use <= 0.5 then
             return 0.0 # (0.0 out of 4.0)
          else  # if Self-use > 0.5
             return 0.3333333333333333 # (2.0 out of 6.0)
          end         end       else  # if Ownership > 0.5
        case when Challenge <= 0.5 then
          case when Ideology <= 0.5 then
            case when Community <= -0.5 then
               return 0.3333333333333333 # (1.0 out of 3.0)
            else  # if Community > -0.5
               return 0.0 # (0.0 out of 6.0)
            end           else  # if Ideology > 0.5
             return 0.375 # (3.0 out of 8.0)
          end         else  # if Challenge > 0.5
           return 0.42857142857142855 # (3.0 out of 7.0)
        end       end     else  # if Enjoyment > 0.5
      case when Payment <= -0.5 then
        case when Ideology <= 0.5 then
          case when Challenge <= 0.5 then
             return 0.0 # (0.0 out of 9.0)
          else  # if Challenge > 0.5
            case when Community <= -0.5 then
               return 0.2 # (2.0 out of 10.0)
            else  # if Community > -0.5
               return 0.6428571428571429 # (9.0 out of 14.0)
            end           end         else  # if Ideology > 0.5
          case when Self-use <= 0.5 then
             return 0.0 # (0.0 out of 4.0)
          else  # if Self-use > 0.5
             return 0.8125 # (13.0 out of 16.0)
          end         end       else  # if Payment > -0.5
        case when Recognition <= 0.5 then
          case when Self-use <= 0.5 then
             return 0.6363636363636364 # (7.0 out of 11.0)
          else  # if Self-use > 0.5
             return 0.5 # (3.0 out of 6.0)
          end         else  # if Recognition > 0.5
           return 0.8571428571428571 # (6.0 out of 7.0)
        end       end     end   else  # if Importance > 0.5
    case when Enjoyment <= 0.5 then
      case when Community <= 0.5 then
        case when Challenge <= 0.5 then
          case when Ideology <= 0.5 then
            case when Learning <= 0.5 then
               return 0.0 # (0.0 out of 4.0)
            else  # if Learning > 0.5
               return 0.375 # (3.0 out of 8.0)
            end           else  # if Ideology > 0.5
             return 0.4 # (6.0 out of 15.0)
          end         else  # if Challenge > 0.5
          case when Self-use <= 0.5 then
            case when Ideology <= 0.5 then
               return 0.45454545454545453 # (5.0 out of 11.0)
            else  # if Ideology > 0.5
               return 0.23076923076923078 # (3.0 out of 13.0)
            end           else  # if Self-use > 0.5
            case when Payment <= -0.5 then
               return 0.4 # (2.0 out of 5.0)
            else  # if Payment > -0.5
               return 1.0 # (4.0 out of 4.0)
            end           end         end       else  # if Community > 0.5
         return 0.8 # (8.0 out of 10.0)
      end     else  # if Enjoyment > 0.5
      case when Community <= 0.5 then
        case when Hostility <= -0.5 then
          case when Recognition <= 0.5 then
            case when Ideology <= 0.5 then
               return 0.7142857142857143 # (5.0 out of 7.0)
            else  # if Ideology > 0.5
               return 0.7 # (7.0 out of 10.0)
            end           else  # if Recognition > 0.5
             return 1.0 # (11.0 out of 11.0)
          end         else  # if Hostility > -0.5
          case when Ideology <= -0.5 then
             return 0.9166666666666666 # (11.0 out of 12.0)
          else  # if Ideology > -0.5
            case when Learning <= 0.5 then
              case when Self-use <= 0.5 then
                 return 0.6 # (3.0 out of 5.0)
              else  # if Self-use > 0.5
                 return 0.9166666666666666 # (11.0 out of 12.0)
              end             else  # if Learning > 0.5
              case when Ownership <= 0.5 then
                 return 0.4090909090909091 # (9.0 out of 22.0)
              else  # if Ownership > 0.5
                case when Payment <= -0.5 then
                  case when Challenge <= 0.5 then
                    case when Recognition <= 0.5 then
                       return 0.14285714285714285 # (1.0 out of 7.0)
                    else  # if Recognition > 0.5
                       return 0.4 # (2.0 out of 5.0)
                    end                   else  # if Challenge > 0.5
                    case when Recognition <= 0.5 then
                       return 0.6923076923076923 # (9.0 out of 13.0)
                    else  # if Recognition > 0.5
                       return 0.5 # (2.0 out of 4.0)
                    end                   end                 else  # if Payment > -0.5
                  case when Self-use <= 0.5 then
                     return 0.7692307692307693 # (10.0 out of 13.0)
                  else  # if Self-use > 0.5
                     return 0.5714285714285714 # (8.0 out of 14.0)
                  end                 end               end             end           end         end       else  # if Community > 0.5
        case when Learning <= 0.5 then
           return 1.0 # (6.0 out of 6.0)
        else  # if Learning > 0.5
          case when Ownership <= 0.5 then
            case when Recognition <= 0.5 then
               return 0.6666666666666666 # (4.0 out of 6.0)
            else  # if Recognition > 0.5
              case when Payment <= -0.5 then
                 return 0.75 # (3.0 out of 4.0)
              else  # if Payment > -0.5
                 return 1.0 # (8.0 out of 8.0)
              end             end           else  # if Ownership > 0.5
            case when Challenge <= 0.5 then
              case when Recognition <= 0.5 then
                 return 1.0 # (5.0 out of 5.0)
              else  # if Recognition > 0.5
                 return 0.8571428571428571 # (6.0 out of 7.0)
              end             else  # if Challenge > 0.5
              case when Self-use <= 0.5 then
                case when Recognition <= 0.5 then
                   return 1.0 # (15.0 out of 15.0)
                else  # if Recognition > 0.5
                   return 0.875 # (7.0 out of 8.0)
                end               else  # if Self-use > 0.5
                 return 1.0 # (13.0 out of 13.0)
              end             end           end         end       end     end   end )