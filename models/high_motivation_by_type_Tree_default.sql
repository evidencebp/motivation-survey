create or replace function continue.tree (Challenge int64, Community int64, Enjoyment int64, Hostility int64, Ideology int64, Importance int64, Learning int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Enjoyment <= 0.5 then
    case when Recognition <= 0.5 then
      case when Challenge <= 0.5 then
        case when Community <= -0.5 then
          case when Payment <= -0.5 then
            case when Importance <= 0.5 then
              case when Learning <= 0.5 then
                 return 1.0 # (1.0 out of 1.0)
              else  # if Learning > 0.5
                 return 0.5 # (1.0 out of 2.0)
              end             else  # if Importance > 0.5
               return 1.0 # (1.0 out of 1.0)
            end           else  # if Payment > -0.5
             return 0.0 # (0.0 out of 1.0)
          end         else  # if Community > -0.5
          case when Payment <= -0.5 then
            case when Learning <= 0.5 then
              case when Ownership <= 0.5 then
                 return 0.0 # (0.0 out of 18.0)
              else  # if Ownership > 0.5
                case when Self-use <= 0.5 then
                   return 0.0 # (0.0 out of 3.0)
                else  # if Self-use > 0.5
                  case when Ideology <= 0.5 then
                     return 0.0 # (0.0 out of 1.0)
                  else  # if Ideology > 0.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 end               end             else  # if Learning > 0.5
              case when Ideology <= 0.5 then
                case when Ownership <= 0.5 then
                  case when Importance <= 0.5 then
                    case when Self-use <= 0.5 then
                       return 0.3333333333333333 # (1.0 out of 3.0)
                    else  # if Self-use > 0.5
                       return 0.25 # (1.0 out of 4.0)
                    end                   else  # if Importance > 0.5
                     return 0.0 # (0.0 out of 2.0)
                  end                 else  # if Ownership > 0.5
                  case when Self-use <= 0.5 then
                     return 0.0 # (0.0 out of 1.0)
                  else  # if Self-use > 0.5
                    case when Importance <= 0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Importance > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   end                 end               else  # if Ideology > 0.5
                 return 0.0 # (0.0 out of 9.0)
              end             end           else  # if Payment > -0.5
            case when Ideology <= 0.5 then
              case when Importance <= 0.5 then
                 return 0.0 # (0.0 out of 11.0)
              else  # if Importance > 0.5
                case when Learning <= 0.5 then
                   return 0.0 # (0.0 out of 3.0)
                else  # if Learning > 0.5
                  case when Ownership <= 0.5 then
                     return 0.5 # (2.0 out of 4.0)
                  else  # if Ownership > 0.5
                     return 0.0 # (0.0 out of 1.0)
                  end                 end               end             else  # if Ideology > 0.5
              case when Self-use <= 0.5 then
                case when Ownership <= 0.5 then
                   return 0.0 # (0.0 out of 6.0)
                else  # if Ownership > 0.5
                   return 1.0 # (1.0 out of 1.0)
                end               else  # if Self-use > 0.5
                case when Learning <= 0.5 then
                   return 1.0 # (1.0 out of 1.0)
                else  # if Learning > 0.5
                  case when Ownership <= 0.5 then
                    case when Importance <= 0.5 then
                       return 0.5 # (1.0 out of 2.0)
                    else  # if Importance > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   else  # if Ownership > 0.5
                     return 0.5 # (1.0 out of 2.0)
                  end                 end               end             end           end         end       else  # if Challenge > 0.5
        case when Ideology <= -0.5 then
           return 1.0 # (1.0 out of 1.0)
        else  # if Ideology > -0.5
          case when Hostility <= 0.5 then
            case when Importance <= 0.5 then
              case when Self-use <= 0.5 then
                 return 0.0 # (0.0 out of 6.0)
              else  # if Self-use > 0.5
                case when Learning <= 0.5 then
                  case when Ownership <= 0.5 then
                    case when Hostility <= -0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Hostility > -0.5
                       return 0.5 # (1.0 out of 2.0)
                    end                   else  # if Ownership > 0.5
                     return 1.0 # (2.0 out of 2.0)
                  end                 else  # if Learning > 0.5
                  case when Community <= -0.5 then
                     return 1.0 # (1.0 out of 1.0)
                  else  # if Community > -0.5
                     return 0.0 # (0.0 out of 6.0)
                  end                 end               end             else  # if Importance > 0.5
              case when Ideology <= 0.5 then
                case when Payment <= -0.5 then
                   return 0.0 # (0.0 out of 4.0)
                else  # if Payment > -0.5
                  case when Self-use <= 0.5 then
                    case when Hostility <= -0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Hostility > -0.5
                      case when Community <= 0.5 then
                        case when Learning <= 0.5 then
                          case when Ownership <= 0.5 then
                             return 0.0 # (0.0 out of 2.0)
                          else  # if Ownership > 0.5
                             return 1.0 # (1.0 out of 1.0)
                          end                         else  # if Learning > 0.5
                          case when Ownership <= 0.5 then
                             return 0.5 # (2.0 out of 4.0)
                          else  # if Ownership > 0.5
                             return 0.0 # (0.0 out of 2.0)
                          end                         end                       else  # if Community > 0.5
                         return 0.0 # (0.0 out of 1.0)
                      end                     end                   else  # if Self-use > 0.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 end               else  # if Ideology > 0.5
                case when Learning <= 0.5 then
                  case when Payment <= -0.5 then
                     return 0.0 # (0.0 out of 3.0)
                  else  # if Payment > -0.5
                    case when Community <= 0.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Community > 0.5
                       return 0.0 # (0.0 out of 1.0)
                    end                   end                 else  # if Learning > 0.5
                  case when Community <= -0.5 then
                     return 1.0 # (2.0 out of 2.0)
                  else  # if Community > -0.5
                    case when Community <= 0.5 then
                      case when Payment <= -0.5 then
                        case when Self-use <= 0.5 then
                           return 0.5 # (2.0 out of 4.0)
                        else  # if Self-use > 0.5
                           return 0.5 # (1.0 out of 2.0)
                        end                       else  # if Payment > -0.5
                         return 0.0 # (0.0 out of 2.0)
                      end                     else  # if Community > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   end                 end               end             end           else  # if Hostility > 0.5
             return 1.0 # (1.0 out of 1.0)
          end         end       end     else  # if Recognition > 0.5
      case when Challenge <= 0.5 then
        case when Importance <= 0.5 then
          case when Learning <= 0.5 then
             return 0.0 # (0.0 out of 1.0)
          else  # if Learning > 0.5
             return 1.0 # (1.0 out of 1.0)
          end         else  # if Importance > 0.5
           return 1.0 # (4.0 out of 4.0)
        end       else  # if Challenge > 0.5
        case when Ownership <= 0.5 then
          case when Community <= 0.5 then
             return 1.0 # (1.0 out of 1.0)
          else  # if Community > 0.5
            case when Payment <= -0.5 then
               return 1.0 # (1.0 out of 1.0)
            else  # if Payment > -0.5
               return 0.0 # (0.0 out of 1.0)
            end           end         else  # if Ownership > 0.5
           return 0.0 # (0.0 out of 3.0)
        end       end     end   else  # if Enjoyment > 0.5
    case when Community <= 0.5 then
      case when Importance <= 0.5 then
        case when Challenge <= 0.5 then
          case when Payment <= -0.5 then
            case when Learning <= -0.5 then
               return 1.0 # (1.0 out of 1.0)
            else  # if Learning > -0.5
              case when Self-use <= 0.5 then
                 return 0.0 # (0.0 out of 10.0)
              else  # if Self-use > 0.5
                case when Ideology <= 0.5 then
                   return 0.0 # (0.0 out of 3.0)
                else  # if Ideology > 0.5
                  case when Recognition <= 0.5 then
                    case when Community <= -0.5 then
                       return 0.5 # (1.0 out of 2.0)
                    else  # if Community > -0.5
                       return 0.0 # (0.0 out of 1.0)
                    end                   else  # if Recognition > 0.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 end               end             end           else  # if Payment > -0.5
            case when Self-use <= 0.5 then
              case when Ideology <= 0.5 then
                 return 1.0 # (5.0 out of 5.0)
              else  # if Ideology > 0.5
                case when Hostility <= -0.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if Hostility > -0.5
                   return 0.0 # (0.0 out of 2.0)
                end               end             else  # if Self-use > 0.5
              case when Learning <= 0.5 then
                 return 0.5 # (1.0 out of 2.0)
              else  # if Learning > 0.5
                 return 0.0 # (0.0 out of 2.0)
              end             end           end         else  # if Challenge > 0.5
          case when Ideology <= 0.5 then
            case when Community <= -0.5 then
              case when Self-use <= 0.5 then
                case when Recognition <= 0.5 then
                   return 0.5 # (1.0 out of 2.0)
                else  # if Recognition > 0.5
                   return 1.0 # (1.0 out of 1.0)
                end               else  # if Self-use > 0.5
                 return 0.0 # (0.0 out of 5.0)
              end             else  # if Community > -0.5
              case when Ownership <= 0.5 then
                 return 1.0 # (2.0 out of 2.0)
              else  # if Ownership > 0.5
                case when Payment <= -0.5 then
                  case when Recognition <= 0.5 then
                    case when Self-use <= 0.5 then
                      case when Learning <= 0.5 then
                         return 0.0 # (0.0 out of 1.0)
                      else  # if Learning > 0.5
                         return 0.6666666666666666 # (2.0 out of 3.0)
                      end                     else  # if Self-use > 0.5
                      case when Learning <= 0.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Learning > 0.5
                         return 0.25 # (1.0 out of 4.0)
                      end                     end                   else  # if Recognition > 0.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 else  # if Payment > -0.5
                   return 0.0 # (0.0 out of 2.0)
                end               end             end           else  # if Ideology > 0.5
            case when Hostility <= 0.5 then
              case when Learning <= 0.5 then
                case when Self-use <= 0.5 then
                   return 0.0 # (0.0 out of 1.0)
                else  # if Self-use > 0.5
                  case when Ownership <= 0.5 then
                     return 1.0 # (1.0 out of 1.0)
                  else  # if Ownership > 0.5
                     return 0.5 # (1.0 out of 2.0)
                  end                 end               else  # if Learning > 0.5
                case when Self-use <= 0.5 then
                   return 1.0 # (4.0 out of 4.0)
                else  # if Self-use > 0.5
                  case when Community <= -0.5 then
                    case when Hostility <= -0.5 then
                       return 0.8333333333333334 # (5.0 out of 6.0)
                    else  # if Hostility > -0.5
                       return 1.0 # (3.0 out of 3.0)
                    end                   else  # if Community > -0.5
                    case when Payment <= -0.5 then
                      case when Ownership <= 0.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Ownership > 0.5
                         return 0.5 # (2.0 out of 4.0)
                      end                     else  # if Payment > -0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   end                 end               end             else  # if Hostility > 0.5
               return 0.0 # (0.0 out of 1.0)
            end           end         end       else  # if Importance > 0.5
        case when Self-use <= 0.5 then
          case when Hostility <= -0.5 then
            case when Recognition <= 0.5 then
               return 0.0 # (0.0 out of 3.0)
            else  # if Recognition > 0.5
              case when Challenge <= 0.5 then
                 return 1.0 # (1.0 out of 1.0)
              else  # if Challenge > 0.5
                 return 0.0 # (0.0 out of 1.0)
              end             end           else  # if Hostility > -0.5
            case when Payment <= -0.5 then
              case when Challenge <= 0.5 then
                 return 0.0 # (0.0 out of 2.0)
              else  # if Challenge > 0.5
                case when Ideology <= 0.5 then
                  case when Ownership <= 0.5 then
                     return 1.0 # (2.0 out of 2.0)
                  else  # if Ownership > 0.5
                    case when Hostility <= 0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Hostility > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   end                 else  # if Ideology > 0.5
                  case when Ownership <= 0.5 then
                     return 0.0 # (0.0 out of 1.0)
                  else  # if Ownership > 0.5
                    case when Recognition <= 0.5 then
                       return 0.5 # (1.0 out of 2.0)
                    else  # if Recognition > 0.5
                       return 0.0 # (0.0 out of 1.0)
                    end                   end                 end               end             else  # if Payment > -0.5
              case when Ownership <= 0.5 then
                case when Learning <= 0.5 then
                   return 0.0 # (0.0 out of 1.0)
                else  # if Learning > 0.5
                  case when Challenge <= 0.5 then
                     return 1.0 # (1.0 out of 1.0)
                  else  # if Challenge > 0.5
                    case when Ideology <= 0.5 then
                      case when Ideology <= -0.5 then
                         return 0.5 # (1.0 out of 2.0)
                      else  # if Ideology > -0.5
                         return 0.6666666666666666 # (2.0 out of 3.0)
                      end                     else  # if Ideology > 0.5
                       return 0.4 # (2.0 out of 5.0)
                    end                   end                 end               else  # if Ownership > 0.5
                case when Recognition <= 0.5 then
                  case when Ideology <= -0.5 then
                    case when Challenge <= 0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Challenge > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   else  # if Ideology > -0.5
                    case when Challenge <= 0.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Challenge > 0.5
                      case when Learning <= 0.5 then
                        case when Ideology <= 0.5 then
                           return 1.0 # (4.0 out of 4.0)
                        else  # if Ideology > 0.5
                           return 0.0 # (0.0 out of 1.0)
                        end                       else  # if Learning > 0.5
                        case when Ideology <= 0.5 then
                           return 0.6 # (3.0 out of 5.0)
                        else  # if Ideology > 0.5
                           return 1.0 # (3.0 out of 3.0)
                        end                       end                     end                   end                 else  # if Recognition > 0.5
                  case when Challenge <= 0.5 then
                     return 1.0 # (2.0 out of 2.0)
                  else  # if Challenge > 0.5
                     return 0.0 # (0.0 out of 2.0)
                  end                 end               end             end           end         else  # if Self-use > 0.5
          case when Hostility <= -0.5 then
            case when Learning <= 0.5 then
               return 0.6666666666666666 # (2.0 out of 3.0)
            else  # if Learning > 0.5
              case when Ideology <= 0.5 then
                case when Challenge <= 0.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if Challenge > 0.5
                  case when Payment <= -0.5 then
                    case when Recognition <= 0.5 then
                       return 0.6666666666666666 # (2.0 out of 3.0)
                    else  # if Recognition > 0.5
                       return 1.0 # (1.0 out of 1.0)
                    end                   else  # if Payment > -0.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 end               else  # if Ideology > 0.5
                 return 1.0 # (13.0 out of 13.0)
              end             end           else  # if Hostility > -0.5
            case when Community <= -0.5 then
               return 0.0 # (0.0 out of 1.0)
            else  # if Community > -0.5
              case when Learning <= -0.5 then
                 return 0.0 # (0.0 out of 1.0)
              else  # if Learning > -0.5
                case when Learning <= 0.5 then
                  case when Recognition <= 0.5 then
                     return 1.0 # (8.0 out of 8.0)
                  else  # if Recognition > 0.5
                    case when Ideology <= 0.5 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Ideology > 0.5
                       return 1.0 # (2.0 out of 2.0)
                    end                   end                 else  # if Learning > 0.5
                  case when Ideology <= -0.5 then
                     return 1.0 # (3.0 out of 3.0)
                  else  # if Ideology > -0.5
                    case when Ideology <= 0.5 then
                      case when Payment <= -0.5 then
                        case when Ownership <= 0.5 then
                           return 0.0 # (0.0 out of 2.0)
                        else  # if Ownership > 0.5
                          case when Challenge <= 0.5 then
                             return 0.0 # (0.0 out of 1.0)
                          else  # if Challenge > 0.5
                             return 0.5 # (1.0 out of 2.0)
                          end                         end                       else  # if Payment > -0.5
                        case when Ownership <= 0.5 then
                           return 0.3333333333333333 # (1.0 out of 3.0)
                        else  # if Ownership > 0.5
                           return 0.6666666666666666 # (4.0 out of 6.0)
                        end                       end                     else  # if Ideology > 0.5
                      case when Challenge <= 0.5 then
                        case when Ownership <= 0.5 then
                           return 1.0 # (2.0 out of 2.0)
                        else  # if Ownership > 0.5
                          case when Recognition <= 0.5 then
                             return 0.3333333333333333 # (1.0 out of 3.0)
                          else  # if Recognition > 0.5
                             return 0.3333333333333333 # (1.0 out of 3.0)
                          end                         end                       else  # if Challenge > 0.5
                        case when Recognition <= 0.5 then
                          case when Payment <= -0.5 then
                             return 0.7142857142857143 # (5.0 out of 7.0)
                          else  # if Payment > -0.5
                             return 0.75 # (3.0 out of 4.0)
                          end                         else  # if Recognition > 0.5
                           return 1.0 # (5.0 out of 5.0)
                        end                       end                     end                   end                 end               end             end           end         end       end     else  # if Community > 0.5
      case when Challenge <= 0.5 then
        case when Self-use <= 0.5 then
          case when Self-use <= -0.5 then
             return 1.0 # (1.0 out of 1.0)
          else  # if Self-use > -0.5
            case when Ownership <= 0.5 then
               return 0.0 # (0.0 out of 3.0)
            else  # if Ownership > 0.5
               return 1.0 # (1.0 out of 1.0)
            end           end         else  # if Self-use > 0.5
          case when Payment <= -0.5 then
             return 1.0 # (6.0 out of 6.0)
          else  # if Payment > -0.5
            case when Recognition <= 0.5 then
               return 1.0 # (1.0 out of 1.0)
            else  # if Recognition > 0.5
               return 0.0 # (0.0 out of 1.0)
            end           end         end       else  # if Challenge > 0.5
        case when Recognition <= 0.5 then
          case when Ownership <= 0.5 then
             return 1.0 # (4.0 out of 4.0)
          else  # if Ownership > 0.5
            case when Payment <= -0.5 then
               return 1.0 # (2.0 out of 2.0)
            else  # if Payment > -0.5
              case when Learning <= 0.5 then
                 return 1.0 # (2.0 out of 2.0)
              else  # if Learning > 0.5
                case when Hostility <= -0.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if Hostility > -0.5
                  case when Ideology <= -0.5 then
                     return 1.0 # (1.0 out of 1.0)
                  else  # if Ideology > -0.5
                    case when Self-use <= 0.5 then
                      case when Ideology <= 0.5 then
                         return 1.0 # (3.0 out of 3.0)
                      else  # if Ideology > 0.5
                         return 0.6666666666666666 # (2.0 out of 3.0)
                      end                     else  # if Self-use > 0.5
                      case when Ideology <= 0.5 then
                         return 0.5 # (2.0 out of 4.0)
                      else  # if Ideology > 0.5
                         return 1.0 # (3.0 out of 3.0)
                      end                     end                   end                 end               end             end           end         else  # if Recognition > 0.5
          case when Ideology <= 0.5 then
             return 1.0 # (11.0 out of 11.0)
          else  # if Ideology > 0.5
            case when Importance <= 0.5 then
               return 1.0 # (2.0 out of 2.0)
            else  # if Importance > 0.5
              case when Hostility <= 0.5 then
                case when Payment <= -0.5 then
                  case when Ownership <= 0.5 then
                    case when Self-use <= 0.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Self-use > 0.5
                       return 0.6666666666666666 # (2.0 out of 3.0)
                    end                   else  # if Ownership > 0.5
                     return 1.0 # (4.0 out of 4.0)
                  end                 else  # if Payment > -0.5
                  case when Ownership <= 0.5 then
                     return 1.0 # (4.0 out of 4.0)
                  else  # if Ownership > 0.5
                    case when Self-use <= 0.5 then
                       return 0.6666666666666666 # (2.0 out of 3.0)
                    else  # if Self-use > 0.5
                       return 1.0 # (3.0 out of 3.0)
                    end                   end                 end               else  # if Hostility > 0.5
                 return 1.0 # (1.0 out of 1.0)
              end             end           end         end       end     end   end )