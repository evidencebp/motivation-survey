create or replace function rf__5 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Self-use <= 0.5 then
    case when Enjoyment <= 0.5 then
      case when Payment <= -0.5 then
        case when Learning <= 0.5 then
           return 0.07142857142857142 # (1.0 out of 14.0)
        else  # if Learning > 0.5
          case when Importance <= 0.5 then
             return 0.16666666666666666 # (1.0 out of 6.0)
          else  # if Importance > 0.5
             return 0.08333333333333333 # (1.0 out of 12.0)
          end         end       else  # if Payment > -0.5
        case when Challenge <= 0.5 then
          case when Ideology <= 0.5 then
            case when Importance <= 0.5 then
               return 0.0 # (0.0 out of 3.0)
            else  # if Importance > 0.5
               return 0.25 # (3.0 out of 12.0)
            end           else  # if Ideology > 0.5
             return 0.26666666666666666 # (4.0 out of 15.0)
          end         else  # if Challenge > 0.5
           return 0.2857142857142857 # (6.0 out of 21.0)
        end       end     else  # if Enjoyment > 0.5
      case when Payment <= -0.5 then
        case when Community <= 0.5 then
          case when Ownership <= 0.5 then
             return 0.5 # (5.0 out of 10.0)
          else  # if Ownership > 0.5
            case when Challenge <= 0.5 then
               return 0.07692307692307693 # (1.0 out of 13.0)
            else  # if Challenge > 0.5
              case when Importance <= 0.5 then
                 return 0.7142857142857143 # (5.0 out of 7.0)
              else  # if Importance > 0.5
                 return 0.375 # (3.0 out of 8.0)
              end             end           end         else  # if Community > 0.5
           return 0.8888888888888888 # (8.0 out of 9.0)
        end       else  # if Payment > -0.5
        case when Community <= 0.5 then
          case when Ownership <= 0.5 then
             return 0.5 # (3.0 out of 6.0)
          else  # if Ownership > 0.5
             return 0.7777777777777778 # (21.0 out of 27.0)
          end         else  # if Community > 0.5
          case when Ownership <= 0.5 then
             return 0.875 # (7.0 out of 8.0)
          else  # if Ownership > 0.5
             return 0.9285714285714286 # (13.0 out of 14.0)
          end         end       end     end   else  # if Self-use > 0.5
    case when Challenge <= 0.5 then
      case when Community <= -0.5 then
         return 0.9 # (9.0 out of 10.0)
      else  # if Community > -0.5
        case when Recognition <= 0.5 then
          case when Importance <= 0.5 then
            case when Ideology <= 0.5 then
               return 0.0 # (0.0 out of 11.0)
            else  # if Ideology > 0.5
              case when Payment <= -0.5 then
                 return 0.6 # (3.0 out of 5.0)
              else  # if Payment > -0.5
                 return 0.8333333333333334 # (5.0 out of 6.0)
              end             end           else  # if Importance > 0.5
            case when Learning <= 0.5 then
              case when Ideology <= 0.5 then
                 return 0.625 # (5.0 out of 8.0)
              else  # if Ideology > 0.5
                 return 0.5714285714285714 # (4.0 out of 7.0)
              end             else  # if Learning > 0.5
               return 0.5384615384615384 # (7.0 out of 13.0)
            end           end         else  # if Recognition > 0.5
          case when Community <= 0.5 then
             return 0.4 # (2.0 out of 5.0)
          else  # if Community > 0.5
             return 0.4 # (2.0 out of 5.0)
          end         end       end     else  # if Challenge > 0.5
      case when Hostility <= -0.5 then
        case when Recognition <= 0.5 then
          case when Enjoyment <= 0.5 then
             return 0.0 # (0.0 out of 6.0)
          else  # if Enjoyment > 0.5
             return 0.6551724137931034 # (19.0 out of 29.0)
          end         else  # if Recognition > 0.5
           return 1.0 # (7.0 out of 7.0)
        end       else  # if Hostility > -0.5
        case when Ideology <= -0.5 then
           return 1.0 # (5.0 out of 5.0)
        else  # if Ideology > -0.5
          case when Community <= 0.5 then
            case when Community <= -0.5 then
               return 0.8181818181818182 # (9.0 out of 11.0)
            else  # if Community > -0.5
              case when Ownership <= 0.5 then
                case when Learning <= 0.5 then
                   return 0.42857142857142855 # (3.0 out of 7.0)
                else  # if Learning > 0.5
                   return 0.4 # (4.0 out of 10.0)
                end               else  # if Ownership > 0.5
                case when Enjoyment <= 0.5 then
                   return 0.5555555555555556 # (5.0 out of 9.0)
                else  # if Enjoyment > 0.5
                  case when Payment <= -0.5 then
                    case when Learning <= 0.5 then
                       return 0.6666666666666666 # (6.0 out of 9.0)
                    else  # if Learning > 0.5
                      case when Importance <= 0.5 then
                         return 0.0 # (0.0 out of 4.0)
                      else  # if Importance > 0.5
                         return 0.8 # (8.0 out of 10.0)
                      end                     end                   else  # if Payment > -0.5
                    case when Ideology <= 0.5 then
                       return 1.0 # (6.0 out of 6.0)
                    else  # if Ideology > 0.5
                       return 0.8888888888888888 # (8.0 out of 9.0)
                    end                   end                 end               end             end           else  # if Community > 0.5
             return 0.9736842105263158 # (37.0 out of 38.0)
          end         end       end     end   end )