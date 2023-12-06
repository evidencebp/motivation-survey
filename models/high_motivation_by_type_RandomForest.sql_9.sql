create or replace function rf__9 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Enjoyment <= 0.5 then
    case when Payment <= -0.5 then
      case when Hostility <= -0.5 then
         return 0.5555555555555556 # (5.0 out of 9.0)
      else  # if Hostility > -0.5
        case when Learning <= 0.5 then
          case when Self-use <= 0.5 then
             return 0.0 # (0.0 out of 13.0)
          else  # if Self-use > 0.5
             return 0.07692307692307693 # (1.0 out of 13.0)
          end         else  # if Learning > 0.5
          case when Ownership <= 0.5 then
            case when Ideology <= 0.5 then
               return 0.0625 # (1.0 out of 16.0)
            else  # if Ideology > 0.5
              case when Challenge <= 0.5 then
                 return 0.125 # (1.0 out of 8.0)
              else  # if Challenge > 0.5
                 return 0.375 # (3.0 out of 8.0)
              end             end           else  # if Ownership > 0.5
             return 0.0 # (0.0 out of 10.0)
          end         end       end     else  # if Payment > -0.5
      case when Learning <= 0.5 then
        case when Ownership <= 0.5 then
          case when Challenge <= 0.5 then
             return 0.0 # (0.0 out of 6.0)
          else  # if Challenge > 0.5
             return 0.25 # (1.0 out of 4.0)
          end         else  # if Ownership > 0.5
           return 0.46153846153846156 # (6.0 out of 13.0)
        end       else  # if Learning > 0.5
        case when Importance <= 0.5 then
          case when Self-use <= 0.5 then
             return 0.0 # (0.0 out of 6.0)
          else  # if Self-use > 0.5
             return 0.1111111111111111 # (1.0 out of 9.0)
          end         else  # if Importance > 0.5
          case when Challenge <= 0.5 then
            case when Ideology <= 0.5 then
               return 0.3333333333333333 # (1.0 out of 3.0)
            else  # if Ideology > 0.5
               return 0.6666666666666666 # (2.0 out of 3.0)
            end           else  # if Challenge > 0.5
            case when Ideology <= 0.5 then
              case when Ownership <= 0.5 then
                 return 0.8 # (4.0 out of 5.0)
              else  # if Ownership > 0.5
                 return 0.6 # (3.0 out of 5.0)
              end             else  # if Ideology > 0.5
               return 0.5555555555555556 # (5.0 out of 9.0)
            end           end         end       end     end   else  # if Enjoyment > 0.5
    case when Community <= 0.5 then
      case when Ideology <= 0.5 then
        case when Recognition <= 0.5 then
          case when Ideology <= -0.5 then
            case when Ownership <= 0.5 then
               return 0.8333333333333334 # (5.0 out of 6.0)
            else  # if Ownership > 0.5
               return 0.6666666666666666 # (2.0 out of 3.0)
            end           else  # if Ideology > -0.5
            case when Self-use <= 0.5 then
              case when Importance <= 0.5 then
                case when Payment <= -0.5 then
                   return 0.16666666666666666 # (1.0 out of 6.0)
                else  # if Payment > -0.5
                   return 1.0 # (4.0 out of 4.0)
                end               else  # if Importance > 0.5
                case when Learning <= 0.5 then
                   return 0.5 # (5.0 out of 10.0)
                else  # if Learning > 0.5
                  case when Ownership <= 0.5 then
                     return 0.6666666666666666 # (2.0 out of 3.0)
                  else  # if Ownership > 0.5
                     return 0.8333333333333334 # (5.0 out of 6.0)
                  end                 end               end             else  # if Self-use > 0.5
              case when Payment <= -0.5 then
                 return 0.6521739130434783 # (15.0 out of 23.0)
              else  # if Payment > -0.5
                case when Importance <= 0.5 then
                   return 0.0 # (0.0 out of 3.0)
                else  # if Importance > 0.5
                   return 0.6666666666666666 # (8.0 out of 12.0)
                end               end             end           end         else  # if Recognition > 0.5
          case when Payment <= -0.5 then
            case when Challenge <= 0.5 then
               return 0.0 # (0.0 out of 4.0)
            else  # if Challenge > 0.5
               return 0.2857142857142857 # (2.0 out of 7.0)
            end           else  # if Payment > -0.5
             return 0.42857142857142855 # (3.0 out of 7.0)
          end         end       else  # if Ideology > 0.5
        case when Challenge <= 0.5 then
          case when Self-use <= 0.5 then
            case when Ownership <= 0.5 then
               return 0.0 # (0.0 out of 7.0)
            else  # if Ownership > 0.5
               return 0.5714285714285714 # (4.0 out of 7.0)
            end           else  # if Self-use > 0.5
             return 0.5625 # (9.0 out of 16.0)
          end         else  # if Challenge > 0.5
          case when Hostility <= -0.5 then
            case when Payment <= -0.5 then
               return 0.92 # (23.0 out of 25.0)
            else  # if Payment > -0.5
               return 1.0 # (4.0 out of 4.0)
            end           else  # if Hostility > -0.5
            case when Self-use <= 0.5 then
              case when Payment <= -0.5 then
                 return 0.2 # (1.0 out of 5.0)
              else  # if Payment > -0.5
                case when Ownership <= 0.5 then
                   return 0.5 # (3.0 out of 6.0)
                else  # if Ownership > 0.5
                   return 0.6666666666666666 # (4.0 out of 6.0)
                end               end             else  # if Self-use > 0.5
              case when Community <= -0.5 then
                 return 0.6666666666666666 # (4.0 out of 6.0)
              else  # if Community > -0.5
                case when Ownership <= 0.5 then
                   return 1.0 # (4.0 out of 4.0)
                else  # if Ownership > 0.5
                  case when Learning <= 0.5 then
                     return 0.6666666666666666 # (4.0 out of 6.0)
                  else  # if Learning > 0.5
                    case when Payment <= -0.5 then
                       return 0.8666666666666667 # (13.0 out of 15.0)
                    else  # if Payment > -0.5
                       return 0.8571428571428571 # (6.0 out of 7.0)
                    end                   end                 end               end             end           end         end       end     else  # if Community > 0.5
      case when Recognition <= 0.5 then
        case when Ideology <= 0.5 then
          case when Self-use <= 0.5 then
             return 1.0 # (9.0 out of 9.0)
          else  # if Self-use > 0.5
             return 0.5384615384615384 # (7.0 out of 13.0)
          end         else  # if Ideology > 0.5
          case when Self-use <= 0.5 then
             return 0.5714285714285714 # (4.0 out of 7.0)
          else  # if Self-use > 0.5
             return 1.0 # (8.0 out of 8.0)
          end         end       else  # if Recognition > 0.5
        case when Challenge <= 0.5 then
           return 0.8333333333333334 # (5.0 out of 6.0)
        else  # if Challenge > 0.5
           return 1.0 # (24.0 out of 24.0)
        end       end     end   end )