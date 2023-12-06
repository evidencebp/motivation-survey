create or replace function rf__8 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q93 <= 9.5 then
    case when Q95 <= 1.5 then
      case when Q98 <= 8.5 then
        case when Q96 <= 10.5 then
          case when Q97 <= 10.5 then
            case when Q92 <= 1.0 then
               return 0.09027777777777778 # (52.0 out of 576.0)
            else  # if Q92 > 1.0
               return 0.0 # (0.0 out of 45.0)
            end           else  # if Q97 > 10.5
            case when Q84 <= 7.5 then
               return 0.0 # (0.0 out of 14.0)
            else  # if Q84 > 7.5
              case when Q91 <= 9.5 then
                 return 1.0 # (5.0 out of 5.0)
              else  # if Q91 > 9.5
                 return 0.125 # (1.0 out of 8.0)
              end             end           end         else  # if Q96 > 10.5
          case when Q92 <= 9.5 then
             return 0.25 # (1.0 out of 4.0)
          else  # if Q92 > 9.5
             return 0.2 # (1.0 out of 5.0)
          end         end       else  # if Q98 > 8.5
         return 0.0 # (0.0 out of 23.0)
      end     else  # if Q95 > 1.5
      case when Q83 <= 6.5 then
        case when Q96 <= 6.5 then
          case when Q88 <= 8.5 then
             return 0.0 # (0.0 out of 12.0)
          else  # if Q88 > 8.5
            case when Q97 <= 8.5 then
               return 0.625 # (5.0 out of 8.0)
            else  # if Q97 > 8.5
              case when Q93 <= 6.5 then
                 return 0.0 # (0.0 out of 8.0)
              else  # if Q93 > 6.5
                case when Q94 <= 7.5 then
                   return 0.0 # (0.0 out of 5.0)
                else  # if Q94 > 7.5
                   return 0.2857142857142857 # (2.0 out of 7.0)
                end               end             end           end         else  # if Q96 > 6.5
          case when Q95 <= 4.5 then
            case when Q93 <= 8.5 then
               return 1.0 # (9.0 out of 9.0)
            else  # if Q93 > 8.5
               return 0.6666666666666666 # (2.0 out of 3.0)
            end           else  # if Q95 > 4.5
            case when Q89 <= 3.5 then
               return 0.0 # (0.0 out of 8.0)
            else  # if Q89 > 3.5
              case when Q1 <= 1.5 then
                 return 0.0 # (0.0 out of 6.0)
              else  # if Q1 > 1.5
                case when Q91 <= 8.5 then
                  case when Q87 <= 8.5 then
                     return 0.6 # (3.0 out of 5.0)
                  else  # if Q87 > 8.5
                     return 0.8571428571428571 # (6.0 out of 7.0)
                  end                 else  # if Q91 > 8.5
                  case when Q91 <= 10.5 then
                    case when Q85 <= 8.5 then
                       return 0.0 # (0.0 out of 8.0)
                    else  # if Q85 > 8.5
                       return 0.5 # (3.0 out of 6.0)
                    end                   else  # if Q91 > 10.5
                    case when Q93 <= 8.5 then
                      case when Q93 <= 7.5 then
                         return 0.5 # (3.0 out of 6.0)
                      else  # if Q93 > 7.5
                         return 0.0 # (0.0 out of 3.0)
                      end                     else  # if Q93 > 8.5
                       return 0.8333333333333334 # (5.0 out of 6.0)
                    end                   end                 end               end             end           end         end       else  # if Q83 > 6.5
        case when Q85 <= 10.5 then
          case when Q71 <= 10.5 then
            case when Q95 <= 9.5 then
              case when Q99 <= 6.5 then
                case when Q96 <= 10.5 then
                  case when Q95 <= 5.5 then
                     return 1.0 # (3.0 out of 3.0)
                  else  # if Q95 > 5.5
                    case when Q85 <= 6.5 then
                       return 0.14285714285714285 # (1.0 out of 7.0)
                    else  # if Q85 > 6.5
                       return 0.3333333333333333 # (1.0 out of 3.0)
                    end                   end                 else  # if Q96 > 10.5
                   return 0.0 # (0.0 out of 4.0)
                end               else  # if Q99 > 6.5
                case when Q87 <= 8.5 then
                  case when Q84 <= 3.5 then
                    case when Q95 <= 6.5 then
                       return 0.5 # (2.0 out of 4.0)
                    else  # if Q95 > 6.5
                       return 0.3333333333333333 # (1.0 out of 3.0)
                    end                   else  # if Q84 > 3.5
                    case when Q89 <= 8.5 then
                       return 0.0 # (0.0 out of 74.0)
                    else  # if Q89 > 8.5
                      case when Q83 <= 9.5 then
                         return 0.42857142857142855 # (3.0 out of 7.0)
                      else  # if Q83 > 9.5
                         return 0.0 # (0.0 out of 16.0)
                      end                     end                   end                 else  # if Q87 > 8.5
                  case when Q98 <= 10.5 then
                    case when Q84 <= 4.5 then
                       return 0.375 # (3.0 out of 8.0)
                    else  # if Q84 > 4.5
                      case when Q85 <= 9.5 then
                        case when Q88 <= 6.5 then
                           return 0.2 # (1.0 out of 5.0)
                        else  # if Q88 > 6.5
                          case when Q89 <= 9.5 then
                            case when Q71 <= 8.5 then
                               return 0.0 # (0.0 out of 41.0)
                            else  # if Q71 > 8.5
                              case when Q94 <= 7.5 then
                                 return 0.3333333333333333 # (1.0 out of 3.0)
                              else  # if Q94 > 7.5
                                 return 0.0 # (0.0 out of 11.0)
                              end                             end                           else  # if Q89 > 9.5
                            case when Q85 <= 8.5 then
                               return 0.2 # (1.0 out of 5.0)
                            else  # if Q85 > 8.5
                               return 0.0 # (0.0 out of 7.0)
                            end                           end                         end                       else  # if Q85 > 9.5
                        case when Q98 <= 6.5 then
                           return 0.0 # (0.0 out of 9.0)
                        else  # if Q98 > 6.5
                          case when Q97 <= 10.5 then
                            case when Q84 <= 8.5 then
                               return 0.6666666666666666 # (2.0 out of 3.0)
                            else  # if Q84 > 8.5
                               return 0.3333333333333333 # (2.0 out of 6.0)
                            end                           else  # if Q97 > 10.5
                             return 0.0 # (0.0 out of 4.0)
                          end                         end                       end                     end                   else  # if Q98 > 10.5
                     return 0.5714285714285714 # (4.0 out of 7.0)
                  end                 end               end             else  # if Q95 > 9.5
              case when Q99 <= 9.5 then
                case when Q96 <= 7.0 then
                   return 0.0 # (0.0 out of 4.0)
                else  # if Q96 > 7.0
                   return 0.8333333333333334 # (5.0 out of 6.0)
                end               else  # if Q99 > 9.5
                 return 0.16666666666666666 # (1.0 out of 6.0)
              end             end           else  # if Q71 > 10.5
            case when Q98 <= 9.5 then
              case when Q97 <= 8.0 then
                 return 0.4 # (2.0 out of 5.0)
              else  # if Q97 > 8.0
                case when Q95 <= 6.5 then
                   return 0.16666666666666666 # (1.0 out of 6.0)
                else  # if Q95 > 6.5
                   return 0.0 # (0.0 out of 19.0)
                end               end             else  # if Q98 > 9.5
              case when Q1 <= 7.5 then
                case when Q93 <= 7.0 then
                   return 0.0 # (0.0 out of 4.0)
                else  # if Q93 > 7.0
                   return 0.7142857142857143 # (5.0 out of 7.0)
                end               else  # if Q1 > 7.5
                 return 1.0 # (10.0 out of 10.0)
              end             end           end         else  # if Q85 > 10.5
          case when Q95 <= 7.5 then
            case when Q99 <= 9.5 then
               return 0.2 # (1.0 out of 5.0)
            else  # if Q99 > 9.5
              case when Q96 <= 9.5 then
                 return 0.0 # (0.0 out of 4.0)
              else  # if Q96 > 9.5
                 return 0.8461538461538461 # (11.0 out of 13.0)
              end             end           else  # if Q95 > 7.5
             return 0.0 # (0.0 out of 5.0)
          end         end       end     end   else  # if Q93 > 9.5
    case when Q88 <= 7.5 then
      case when Q85 <= 7.5 then
        case when Q97 <= 8.5 then
           return 0.2857142857142857 # (2.0 out of 7.0)
        else  # if Q97 > 8.5
          case when Q99 <= 9.5 then
             return 1.0 # (8.0 out of 8.0)
          else  # if Q99 > 9.5
             return 0.16666666666666666 # (1.0 out of 6.0)
          end         end       else  # if Q85 > 7.5
        case when Q91 <= 10.5 then
           return 0.0 # (0.0 out of 21.0)
        else  # if Q91 > 10.5
           return 0.25 # (2.0 out of 8.0)
        end       end     else  # if Q88 > 7.5
      case when Q71 <= 8.5 then
        case when Q1 <= 2.5 then
          case when Q83 <= 10.0 then
             return 0.0 # (0.0 out of 16.0)
          else  # if Q83 > 10.0
             return 0.2 # (1.0 out of 5.0)
          end         else  # if Q1 > 2.5
          case when Q92 <= 7.0 then
             return 0.7142857142857143 # (5.0 out of 7.0)
          else  # if Q92 > 7.0
            case when Q94 <= 4.5 then
              case when Q90 <= 10.5 then
                 return 0.14285714285714285 # (1.0 out of 7.0)
              else  # if Q90 > 10.5
                 return 0.8571428571428571 # (6.0 out of 7.0)
              end             else  # if Q94 > 4.5
              case when Q88 <= 10.5 then
                case when Q1 <= 3.5 then
                  case when Q92 <= 10.5 then
                     return 0.75 # (3.0 out of 4.0)
                  else  # if Q92 > 10.5
                     return 0.125 # (1.0 out of 8.0)
                  end                 else  # if Q1 > 3.5
                  case when Q96 <= 4.5 then
                     return 0.25 # (1.0 out of 4.0)
                  else  # if Q96 > 4.5
                     return 0.0 # (0.0 out of 31.0)
                  end                 end               else  # if Q88 > 10.5
                 return 0.5 # (3.0 out of 6.0)
              end             end           end         end       else  # if Q71 > 8.5
        case when Q83 <= 8.5 then
          case when Q99 <= 8.5 then
             return 1.0 # (18.0 out of 18.0)
          else  # if Q99 > 8.5
            case when Q1 <= 1.5 then
              case when Q94 <= 7.0 then
                 return 0.6666666666666666 # (2.0 out of 3.0)
              else  # if Q94 > 7.0
                 return 0.0 # (0.0 out of 4.0)
              end             else  # if Q1 > 1.5
              case when Q95 <= 10.5 then
                case when Q85 <= 6.5 then
                   return 1.0 # (5.0 out of 5.0)
                else  # if Q85 > 6.5
                  case when Q97 <= 9.5 then
                     return 0.3333333333333333 # (1.0 out of 3.0)
                  else  # if Q97 > 9.5
                    case when Q90 <= 10.0 then
                       return 0.875 # (7.0 out of 8.0)
                    else  # if Q90 > 10.0
                       return 1.0 # (8.0 out of 8.0)
                    end                   end                 end               else  # if Q95 > 10.5
                 return 0.4 # (2.0 out of 5.0)
              end             end           end         else  # if Q83 > 8.5
          case when Q94 <= 8.5 then
            case when Q96 <= 4.0 then
               return 0.0 # (0.0 out of 5.0)
            else  # if Q96 > 4.0
              case when Q71 <= 10.5 then
                case when Q1 <= 5.0 then
                  case when Q95 <= 8.5 then
                     return 0.4 # (2.0 out of 5.0)
                  else  # if Q95 > 8.5
                     return 0.16666666666666666 # (1.0 out of 6.0)
                  end                 else  # if Q1 > 5.0
                   return 1.0 # (8.0 out of 8.0)
                end               else  # if Q71 > 10.5
                 return 1.0 # (13.0 out of 13.0)
              end             end           else  # if Q94 > 8.5
            case when Q97 <= 8.5 then
               return 0.75 # (3.0 out of 4.0)
            else  # if Q97 > 8.5
              case when Q89 <= 10.5 then
                case when Q96 <= 7.5 then
                   return 0.75 # (3.0 out of 4.0)
                else  # if Q96 > 7.5
                   return 0.0 # (0.0 out of 20.0)
                end               else  # if Q89 > 10.5
                 return 0.5 # (2.0 out of 4.0)
              end             end           end         end       end     end   end )