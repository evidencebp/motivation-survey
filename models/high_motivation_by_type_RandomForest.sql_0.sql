create or replace function rf__0 (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Community <= 0.5 then
    case when Importance <= 0.5 then
      case when Learning <= 0.5 then
        case when Community <= -0.5 then
           return 0.3333333333333333 # (3.0 out of 9.0)
        else  # if Community > -0.5
          case when Ideology <= 0.5 then
            case when Self-use <= 0.5 then
               return 0.0 # (0.0 out of 19.0)
            else  # if Self-use > 0.5
               return 0.1111111111111111 # (1.0 out of 9.0)
            end           else  # if Ideology > 0.5
            case when Self-use <= 0.5 then
               return 0.16666666666666666 # (2.0 out of 12.0)
            else  # if Self-use > 0.5
               return 0.625 # (5.0 out of 8.0)
            end           end         end       else  # if Learning > 0.5
        case when Recognition <= 0.5 then
          case when Community <= -0.5 then
             return 0.34615384615384615 # (9.0 out of 26.0)
          else  # if Community > -0.5
            case when Self-use <= 0.5 then
              case when Enjoyment <= 0.5 then
                case when Payment <= -0.5 then
                   return 0.3333333333333333 # (2.0 out of 6.0)
                else  # if Payment > -0.5
                   return 0.0 # (0.0 out of 10.0)
                end               else  # if Enjoyment > 0.5
                case when Ideology <= 0.5 then
                   return 0.8888888888888888 # (8.0 out of 9.0)
                else  # if Ideology > 0.5
                   return 0.14285714285714285 # (1.0 out of 7.0)
                end               end             else  # if Self-use > 0.5
              case when Challenge <= 0.5 then
                 return 0.0 # (0.0 out of 13.0)
              else  # if Challenge > 0.5
                 return 0.125 # (2.0 out of 16.0)
              end             end           end         else  # if Recognition > 0.5
           return 0.5555555555555556 # (5.0 out of 9.0)
        end       end     else  # if Importance > 0.5
      case when Self-use <= 0.5 then
        case when Payment <= -0.5 then
           return 0.2727272727272727 # (6.0 out of 22.0)
        else  # if Payment > -0.5
          case when Ideology <= 0.5 then
            case when Challenge <= 0.5 then
               return 0.2727272727272727 # (3.0 out of 11.0)
            else  # if Challenge > 0.5
              case when Learning <= 0.5 then
                 return 1.0 # (3.0 out of 3.0)
              else  # if Learning > 0.5
                 return 0.4 # (8.0 out of 20.0)
              end             end           else  # if Ideology > 0.5
            case when Ownership <= 0.5 then
               return 0.36363636363636365 # (4.0 out of 11.0)
            else  # if Ownership > 0.5
               return 1.0 # (9.0 out of 9.0)
            end           end         end       else  # if Self-use > 0.5
        case when Ownership <= 0.5 then
          case when Ideology <= 0.5 then
             return 0.15384615384615385 # (2.0 out of 13.0)
          else  # if Ideology > 0.5
             return 0.3333333333333333 # (3.0 out of 9.0)
          end         else  # if Ownership > 0.5
          case when Recognition <= 0.5 then
            case when Community <= -0.5 then
              case when Learning <= 0.5 then
                 return 0.5 # (3.0 out of 6.0)
              else  # if Learning > 0.5
                 return 0.9473684210526315 # (18.0 out of 19.0)
              end             else  # if Community > -0.5
              case when Learning <= 0.5 then
                 return 1.0 # (3.0 out of 3.0)
              else  # if Learning > 0.5
                case when Enjoyment <= 0.5 then
                   return 0.6666666666666666 # (4.0 out of 6.0)
                else  # if Enjoyment > 0.5
                   return 0.5263157894736842 # (10.0 out of 19.0)
                end               end             end           else  # if Recognition > 0.5
            case when Community <= -0.5 then
               return 0.9 # (9.0 out of 10.0)
            else  # if Community > -0.5
              case when Challenge <= 0.5 then
                 return 0.6666666666666666 # (2.0 out of 3.0)
              else  # if Challenge > 0.5
                 return 1.0 # (9.0 out of 9.0)
              end             end           end         end       end     end   else  # if Community > 0.5
    case when Importance <= 0.5 then
       return 0.3333333333333333 # (1.0 out of 3.0)
    else  # if Importance > 0.5
      case when Enjoyment <= 0.5 then
        case when Recognition <= 0.5 then
           return 0.4 # (2.0 out of 5.0)
        else  # if Recognition > 0.5
           return 0.8 # (4.0 out of 5.0)
        end       else  # if Enjoyment > 0.5
        case when Ideology <= 0.5 then
          case when Recognition <= 0.5 then
             return 0.8666666666666667 # (13.0 out of 15.0)
          else  # if Recognition > 0.5
             return 1.0 # (14.0 out of 14.0)
          end         else  # if Ideology > 0.5
          case when Ownership <= 0.5 then
            case when Challenge <= 0.5 then
               return 0.42857142857142855 # (3.0 out of 7.0)
            else  # if Challenge > 0.5
               return 1.0 # (12.0 out of 12.0)
            end           else  # if Ownership > 0.5
             return 0.8928571428571429 # (25.0 out of 28.0)
          end         end       end     end   end )