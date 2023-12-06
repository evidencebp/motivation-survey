create or replace function continue.tree (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q71 <= 8.5 then
    case when Q71 <= 1.5 then
      case when Q94 <= 6.5 then
        case when Q98 <= 10.0 then
          case when Q96 <= 10.0 then
            case when Q90 <= 8.5 then
              case when Q90 <= 7.5 then
                case when Q85 <= 0.0 then
                  case when Q99 <= 2.5 then
                    case when Q98 <= 0.0 then
                      case when Q97 <= 1.0 then
                        case when Q93 <= 5.0 then
                           return 0.10849909584086799 # (60.0 out of 553.0)
                        else  # if Q93 > 5.0
                           return 0.0 # (0.0 out of 1.0)
                        end                       else  # if Q97 > 1.0
                         return 0.0 # (0.0 out of 1.0)
                      end                     else  # if Q98 > 0.0
                       return 0.0 # (0.0 out of 1.0)
                    end                   else  # if Q99 > 2.5
                     return 0.0 # (0.0 out of 1.0)
                  end                 else  # if Q85 > 0.0
                   return 0.0 # (0.0 out of 17.0)
                end               else  # if Q90 > 7.5
                case when Q83 <= 10.5 then
                   return 1.0 # (3.0 out of 3.0)
                else  # if Q83 > 10.5
                   return 0.0 # (0.0 out of 1.0)
                end               end             else  # if Q90 > 8.5
               return 0.0 # (0.0 out of 22.0)
            end           else  # if Q96 > 10.0
            case when Q94 <= 4.5 then
               return 0.0 # (0.0 out of 5.0)
            else  # if Q94 > 4.5
               return 1.0 # (2.0 out of 2.0)
            end           end         else  # if Q98 > 10.0
          case when Q88 <= 10.0 then
             return 1.0 # (2.0 out of 2.0)
          else  # if Q88 > 10.0
             return 0.0 # (0.0 out of 1.0)
          end         end       else  # if Q94 > 6.5
        case when Q92 <= 6.5 then
          case when Q95 <= 8.5 then
             return 0.0 # (0.0 out of 3.0)
          else  # if Q95 > 8.5
             return 1.0 # (1.0 out of 1.0)
          end         else  # if Q92 > 6.5
           return 0.0 # (0.0 out of 60.0)
        end       end     else  # if Q71 > 1.5
      case when Q85 <= 9.5 then
        case when Q99 <= 9.5 then
          case when Q1 <= 8.5 then
            case when Q93 <= 6.5 then
              case when Q98 <= 10.0 then
                case when Q84 <= 4.5 then
                  case when Q97 <= 9.5 then
                     return 0.0 # (0.0 out of 7.0)
                  else  # if Q97 > 9.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 else  # if Q84 > 4.5
                   return 0.0 # (0.0 out of 33.0)
                end               else  # if Q98 > 10.0
                case when Q99 <= 8.5 then
                   return 0.0 # (0.0 out of 1.0)
                else  # if Q99 > 8.5
                   return 1.0 # (1.0 out of 1.0)
                end               end             else  # if Q93 > 6.5
              case when Q83 <= 6.5 then
                case when Q95 <= 5.5 then
                  case when Q89 <= 4.0 then
                     return 0.0 # (0.0 out of 1.0)
                  else  # if Q89 > 4.0
                    case when Q84 <= 8.5 then
                      case when Q96 <= 3.5 then
                         return 0.0 # (0.0 out of 1.0)
                      else  # if Q96 > 3.5
                         return 1.0 # (8.0 out of 8.0)
                      end                     else  # if Q84 > 8.5
                      case when Q88 <= 9.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Q88 > 9.5
                         return 0.0 # (0.0 out of 2.0)
                      end                     end                   end                 else  # if Q95 > 5.5
                  case when Q98 <= 5.0 then
                    case when Q97 <= 8.0 then
                       return 0.0 # (0.0 out of 1.0)
                    else  # if Q97 > 8.0
                       return 1.0 # (3.0 out of 3.0)
                    end                   else  # if Q98 > 5.0
                    case when Q94 <= 5.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Q94 > 5.5
                       return 0.0 # (0.0 out of 9.0)
                    end                   end                 end               else  # if Q83 > 6.5
                case when Q99 <= 7.5 then
                  case when Q94 <= 5.5 then
                     return 0.0 # (0.0 out of 6.0)
                  else  # if Q94 > 5.5
                    case when Q88 <= 7.5 then
                       return 0.0 # (0.0 out of 3.0)
                    else  # if Q88 > 7.5
                      case when Q95 <= 7.5 then
                         return 1.0 # (7.0 out of 7.0)
                      else  # if Q95 > 7.5
                         return 0.0 # (0.0 out of 2.0)
                      end                     end                   end                 else  # if Q99 > 7.5
                  case when Q90 <= 4.0 then
                    case when Q87 <= 9.0 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Q87 > 9.0
                       return 0.0 # (0.0 out of 1.0)
                    end                   else  # if Q90 > 4.0
                    case when Q89 <= 9.5 then
                      case when Q84 <= 8.5 then
                         return 0.0 # (0.0 out of 29.0)
                      else  # if Q84 > 8.5
                        case when Q93 <= 7.5 then
                          case when Q95 <= 4.5 then
                             return 1.0 # (1.0 out of 1.0)
                          else  # if Q95 > 4.5
                             return 0.0 # (0.0 out of 1.0)
                          end                         else  # if Q93 > 7.5
                           return 0.0 # (0.0 out of 4.0)
                        end                       end                     else  # if Q89 > 9.5
                      case when Q88 <= 9.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Q88 > 9.5
                         return 0.0 # (0.0 out of 2.0)
                      end                     end                   end                 end               end             end           else  # if Q1 > 8.5
            case when Q90 <= 8.5 then
              case when Q1 <= 10.5 then
                 return 1.0 # (6.0 out of 6.0)
              else  # if Q1 > 10.5
                 return 0.0 # (0.0 out of 1.0)
              end             else  # if Q90 > 8.5
              case when Q84 <= 4.5 then
                 return 1.0 # (2.0 out of 2.0)
              else  # if Q84 > 4.5
                case when Q93 <= 10.5 then
                   return 0.0 # (0.0 out of 9.0)
                else  # if Q93 > 10.5
                   return 1.0 # (1.0 out of 1.0)
                end               end             end           end         else  # if Q99 > 9.5
          case when Q84 <= 1.5 then
             return 1.0 # (1.0 out of 1.0)
          else  # if Q84 > 1.5
            case when Q98 <= 7.5 then
              case when Q1 <= 2.0 then
                case when Q71 <= 4.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if Q71 > 4.5
                   return 0.0 # (0.0 out of 7.0)
                end               else  # if Q1 > 2.0
                case when Q83 <= 3.5 then
                  case when Q71 <= 7.5 then
                     return 0.0 # (0.0 out of 3.0)
                  else  # if Q71 > 7.5
                     return 1.0 # (1.0 out of 1.0)
                  end                 else  # if Q83 > 3.5
                  case when Q92 <= 8.5 then
                    case when Q96 <= 9.5 then
                       return 0.0 # (0.0 out of 7.0)
                    else  # if Q96 > 9.5
                      case when Q90 <= 9.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Q90 > 9.5
                         return 0.0 # (0.0 out of 1.0)
                      end                     end                   else  # if Q92 > 8.5
                     return 0.0 # (0.0 out of 63.0)
                  end                 end               end             else  # if Q98 > 7.5
              case when Q89 <= 9.5 then
                case when Q91 <= 6.5 then
                   return 1.0 # (1.0 out of 1.0)
                else  # if Q91 > 6.5
                  case when Q87 <= 10.5 then
                    case when Q84 <= 4.5 then
                      case when Q89 <= 4.5 then
                         return 0.0 # (0.0 out of 4.0)
                      else  # if Q89 > 4.5
                        case when Q1 <= 2.0 then
                           return 0.0 # (0.0 out of 1.0)
                        else  # if Q1 > 2.0
                           return 1.0 # (3.0 out of 3.0)
                        end                       end                     else  # if Q84 > 4.5
                      case when Q99 <= 10.5 then
                        case when Q89 <= 8.5 then
                           return 0.0 # (0.0 out of 4.0)
                        else  # if Q89 > 8.5
                          case when Q88 <= 9.0 then
                            case when Q96 <= 5.0 then
                               return 0.0 # (0.0 out of 1.0)
                            else  # if Q96 > 5.0
                               return 1.0 # (2.0 out of 2.0)
                            end                           else  # if Q88 > 9.0
                             return 0.0 # (0.0 out of 2.0)
                          end                         end                       else  # if Q99 > 10.5
                         return 0.0 # (0.0 out of 32.0)
                      end                     end                   else  # if Q87 > 10.5
                    case when Q85 <= 8.5 then
                       return 0.0 # (0.0 out of 2.0)
                    else  # if Q85 > 8.5
                       return 1.0 # (2.0 out of 2.0)
                    end                   end                 end               else  # if Q89 > 9.5
                case when Q1 <= 2.5 then
                   return 0.0 # (0.0 out of 2.0)
                else  # if Q1 > 2.5
                   return 1.0 # (3.0 out of 3.0)
                end               end             end           end         end       else  # if Q85 > 9.5
        case when Q95 <= 5.5 then
          case when Q71 <= 7.5 then
             return 0.0 # (0.0 out of 12.0)
          else  # if Q71 > 7.5
            case when Q83 <= 7.5 then
               return 1.0 # (2.0 out of 2.0)
            else  # if Q83 > 7.5
               return 0.0 # (0.0 out of 2.0)
            end           end         else  # if Q95 > 5.5
          case when Q84 <= 10.5 then
            case when Q1 <= 7.0 then
              case when Q83 <= 10.5 then
                case when Q84 <= 7.5 then
                  case when Q96 <= 9.5 then
                     return 0.0 # (0.0 out of 3.0)
                  else  # if Q96 > 9.5
                     return 1.0 # (3.0 out of 3.0)
                  end                 else  # if Q84 > 7.5
                  case when Q83 <= 5.5 then
                    case when Q94 <= 2.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Q94 > 2.5
                       return 0.0 # (0.0 out of 1.0)
                    end                   else  # if Q83 > 5.5
                     return 1.0 # (14.0 out of 14.0)
                  end                 end               else  # if Q83 > 10.5
                 return 0.0 # (0.0 out of 2.0)
              end             else  # if Q1 > 7.0
               return 0.0 # (0.0 out of 3.0)
            end           else  # if Q84 > 10.5
             return 0.0 # (0.0 out of 5.0)
          end         end       end     end   else  # if Q71 > 8.5
    case when Q93 <= 9.5 then
      case when Q89 <= 5.5 then
        case when Q85 <= 10.5 then
          case when Q85 <= 3.5 then
            case when Q94 <= 4.5 then
               return 0.0 # (0.0 out of 2.0)
            else  # if Q94 > 4.5
               return 1.0 # (2.0 out of 2.0)
            end           else  # if Q85 > 3.5
            case when Q83 <= 7.0 then
              case when Q88 <= 7.0 then
                 return 0.0 # (0.0 out of 6.0)
              else  # if Q88 > 7.0
                case when Q92 <= 9.5 then
                   return 0.0 # (0.0 out of 2.0)
                else  # if Q92 > 9.5
                   return 1.0 # (2.0 out of 2.0)
                end               end             else  # if Q83 > 7.0
               return 0.0 # (0.0 out of 29.0)
            end           end         else  # if Q85 > 10.5
           return 1.0 # (1.0 out of 1.0)
        end       else  # if Q89 > 5.5
        case when Q90 <= 4.0 then
          case when Q93 <= 3.0 then
             return 0.0 # (0.0 out of 1.0)
          else  # if Q93 > 3.0
             return 1.0 # (6.0 out of 6.0)
          end         else  # if Q90 > 4.0
          case when Q97 <= 6.5 then
            case when Q1 <= 5.5 then
              case when Q95 <= 10.0 then
                 return 1.0 # (9.0 out of 9.0)
              else  # if Q95 > 10.0
                 return 0.0 # (0.0 out of 1.0)
              end             else  # if Q1 > 5.5
               return 0.0 # (0.0 out of 4.0)
            end           else  # if Q97 > 6.5
            case when Q94 <= 8.5 then
              case when Q99 <= 10.5 then
                case when Q85 <= 10.5 then
                  case when Q88 <= 5.0 then
                     return 1.0 # (2.0 out of 2.0)
                  else  # if Q88 > 5.0
                    case when Q93 <= 7.5 then
                      case when Q99 <= 5.0 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Q99 > 5.0
                        case when Q89 <= 6.5 then
                          case when Q1 <= 4.5 then
                             return 1.0 # (1.0 out of 1.0)
                          else  # if Q1 > 4.5
                             return 0.0 # (0.0 out of 5.0)
                          end                         else  # if Q89 > 6.5
                           return 0.0 # (0.0 out of 17.0)
                        end                       end                     else  # if Q93 > 7.5
                      case when Q94 <= 4.5 then
                         return 0.0 # (0.0 out of 6.0)
                      else  # if Q94 > 4.5
                        case when Q1 <= 3.5 then
                          case when Q95 <= 2.5 then
                             return 0.0 # (0.0 out of 1.0)
                          else  # if Q95 > 2.5
                            case when Q84 <= 8.5 then
                               return 1.0 # (5.0 out of 5.0)
                            else  # if Q84 > 8.5
                              case when Q95 <= 6.5 then
                                 return 0.0 # (0.0 out of 1.0)
                              else  # if Q95 > 6.5
                                 return 1.0 # (2.0 out of 2.0)
                              end                             end                           end                         else  # if Q1 > 3.5
                          case when Q87 <= 9.5 then
                             return 0.0 # (0.0 out of 6.0)
                          else  # if Q87 > 9.5
                             return 1.0 # (2.0 out of 2.0)
                          end                         end                       end                     end                   end                 else  # if Q85 > 10.5
                   return 1.0 # (3.0 out of 3.0)
                end               else  # if Q99 > 10.5
                case when Q92 <= 6.5 then
                   return 1.0 # (1.0 out of 1.0)
                else  # if Q92 > 6.5
                  case when Q98 <= 10.5 then
                    case when Q97 <= 8.5 then
                      case when Q89 <= 9.0 then
                         return 0.0 # (0.0 out of 6.0)
                      else  # if Q89 > 9.0
                         return 1.0 # (1.0 out of 1.0)
                      end                     else  # if Q97 > 8.5
                       return 0.0 # (0.0 out of 35.0)
                    end                   else  # if Q98 > 10.5
                    case when Q83 <= 10.5 then
                       return 0.0 # (0.0 out of 6.0)
                    else  # if Q83 > 10.5
                       return 1.0 # (3.0 out of 3.0)
                    end                   end                 end               end             else  # if Q94 > 8.5
              case when Q96 <= 9.5 then
                case when Q89 <= 7.5 then
                   return 0.0 # (0.0 out of 9.0)
                else  # if Q89 > 7.5
                  case when Q99 <= 8.5 then
                     return 1.0 # (3.0 out of 3.0)
                  else  # if Q99 > 8.5
                    case when Q97 <= 10.5 then
                      case when Q89 <= 8.5 then
                        case when Q92 <= 10.5 then
                           return 0.0 # (0.0 out of 2.0)
                        else  # if Q92 > 10.5
                           return 1.0 # (1.0 out of 1.0)
                        end                       else  # if Q89 > 8.5
                         return 0.0 # (0.0 out of 11.0)
                      end                     else  # if Q97 > 10.5
                      case when Q87 <= 10.5 then
                        case when Q91 <= 10.5 then
                          case when Q89 <= 8.5 then
                             return 1.0 # (1.0 out of 1.0)
                          else  # if Q89 > 8.5
                             return 0.0 # (0.0 out of 3.0)
                          end                         else  # if Q91 > 10.5
                           return 1.0 # (4.0 out of 4.0)
                        end                       else  # if Q87 > 10.5
                        case when Q89 <= 10.0 then
                          case when Q96 <= 6.5 then
                             return 1.0 # (2.0 out of 2.0)
                          else  # if Q96 > 6.5
                             return 0.0 # (0.0 out of 3.0)
                          end                         else  # if Q89 > 10.0
                           return 0.0 # (0.0 out of 6.0)
                        end                       end                     end                   end                 end               else  # if Q96 > 9.5
                case when Q84 <= 10.5 then
                  case when Q87 <= 9.5 then
                    case when Q95 <= 10.5 then
                      case when Q89 <= 6.5 then
                         return 0.0 # (0.0 out of 1.0)
                      else  # if Q89 > 6.5
                        case when Q1 <= 6.5 then
                           return 1.0 # (10.0 out of 10.0)
                        else  # if Q1 > 6.5
                          case when Q88 <= 8.5 then
                             return 0.0 # (0.0 out of 1.0)
                          else  # if Q88 > 8.5
                             return 1.0 # (2.0 out of 2.0)
                          end                         end                       end                     else  # if Q95 > 10.5
                      case when Q88 <= 8.5 then
                         return 1.0 # (1.0 out of 1.0)
                      else  # if Q88 > 8.5
                         return 0.0 # (0.0 out of 3.0)
                      end                     end                   else  # if Q87 > 9.5
                    case when Q88 <= 8.5 then
                       return 1.0 # (1.0 out of 1.0)
                    else  # if Q88 > 8.5
                       return 0.0 # (0.0 out of 9.0)
                    end                   end                 else  # if Q84 > 10.5
                   return 1.0 # (5.0 out of 5.0)
                end               end             end           end         end       end     else  # if Q93 > 9.5
      case when Q88 <= 6.5 then
         return 0.0 # (0.0 out of 5.0)
      else  # if Q88 > 6.5
        case when Q83 <= 8.5 then
          case when Q84 <= 10.5 then
            case when Q94 <= 5.5 then
              case when Q85 <= 8.5 then
                 return 1.0 # (2.0 out of 2.0)
              else  # if Q85 > 8.5
                case when Q93 <= 10.5 then
                   return 1.0 # (1.0 out of 1.0)
                else  # if Q93 > 10.5
                   return 0.0 # (0.0 out of 4.0)
                end               end             else  # if Q94 > 5.5
              case when Q94 <= 8.5 then
                 return 1.0 # (13.0 out of 13.0)
              else  # if Q94 > 8.5
                case when Q95 <= 9.5 then
                  case when Q90 <= 10.5 then
                     return 1.0 # (9.0 out of 9.0)
                  else  # if Q90 > 10.5
                    case when Q83 <= 6.5 then
                       return 1.0 # (2.0 out of 2.0)
                    else  # if Q83 > 6.5
                       return 0.0 # (0.0 out of 2.0)
                    end                   end                 else  # if Q95 > 9.5
                   return 0.0 # (0.0 out of 2.0)
                end               end             end           else  # if Q84 > 10.5
            case when Q96 <= 7.0 then
               return 1.0 # (1.0 out of 1.0)
            else  # if Q96 > 7.0
               return 0.0 # (0.0 out of 6.0)
            end           end         else  # if Q83 > 8.5
          case when Q97 <= 10.5 then
            case when Q92 <= 9.5 then
              case when Q84 <= 6.5 then
                case when Q94 <= 8.5 then
                   return 0.0 # (0.0 out of 1.0)
                else  # if Q94 > 8.5
                   return 1.0 # (1.0 out of 1.0)
                end               else  # if Q84 > 6.5
                 return 0.0 # (0.0 out of 9.0)
              end             else  # if Q92 > 9.5
              case when Q88 <= 9.5 then
                case when Q85 <= 10.5 then
                  case when Q91 <= 8.5 then
                     return 0.0 # (0.0 out of 2.0)
                  else  # if Q91 > 8.5
                    case when Q87 <= 8.5 then
                      case when Q90 <= 9.5 then
                         return 1.0 # (2.0 out of 2.0)
                      else  # if Q90 > 9.5
                         return 0.0 # (0.0 out of 1.0)
                      end                     else  # if Q87 > 8.5
                       return 1.0 # (6.0 out of 6.0)
                    end                   end                 else  # if Q85 > 10.5
                   return 0.0 # (0.0 out of 2.0)
                end               else  # if Q88 > 9.5
                case when Q98 <= 5.5 then
                   return 1.0 # (2.0 out of 2.0)
                else  # if Q98 > 5.5
                   return 0.0 # (0.0 out of 9.0)
                end               end             end           else  # if Q97 > 10.5
            case when Q91 <= 9.5 then
               return 1.0 # (7.0 out of 7.0)
            else  # if Q91 > 9.5
              case when Q96 <= 6.5 then
                case when Q92 <= 10.5 then
                  case when Q90 <= 7.0 then
                     return 1.0 # (1.0 out of 1.0)
                  else  # if Q90 > 7.0
                     return 0.0 # (0.0 out of 3.0)
                  end                 else  # if Q92 > 10.5
                   return 1.0 # (6.0 out of 6.0)
                end               else  # if Q96 > 6.5
                case when Q95 <= 9.5 then
                  case when Q89 <= 10.5 then
                    case when Q84 <= 10.5 then
                       return 0.0 # (0.0 out of 8.0)
                    else  # if Q84 > 10.5
                      case when Q95 <= 7.0 then
                         return 0.0 # (0.0 out of 3.0)
                      else  # if Q95 > 7.0
                         return 1.0 # (1.0 out of 1.0)
                      end                     end                   else  # if Q89 > 10.5
                     return 1.0 # (2.0 out of 2.0)
                  end                 else  # if Q95 > 9.5
                  case when Q89 <= 10.0 then
                     return 1.0 # (4.0 out of 4.0)
                  else  # if Q89 > 10.0
                     return 0.0 # (0.0 out of 1.0)
                  end                 end               end             end           end         end       end     end   end )