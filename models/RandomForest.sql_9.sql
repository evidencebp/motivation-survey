create or replace function rf__9 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 8.5 then
    case when Q97 <= 9.5 then
      case when Q87 <= 10.5 then
        case when Q89 <= 9.5 then
          case when Q98 <= 7.5 then
            case when Q91 <= 7.5 then
              case when Q91 <= 6.5 then
                case when Q93 <= 0.5 then
                   return 0.10124333925399645 # (57.0 out of 563.0)
                else  # if Q93 > 0.5
                   return 0.0 # (0.0 out of 27.0)
                end               else  # if Q91 > 6.5
                case when Q84 <= 4.5 then
                   return 0.7142857142857143 # (5.0 out of 7.0)
                else  # if Q84 > 4.5
                  case when Q94 <= 5.5 then
                     return 0.6666666666666666 # (2.0 out of 3.0)
                  else  # if Q94 > 5.5
                     return 0.0 # (0.0 out of 17.0)
                  end                 end               end             else  # if Q91 > 7.5
              case when Q83 <= 4.5 then
                 return 0.3333333333333333 # (2.0 out of 6.0)
              else  # if Q83 > 4.5
                case when Q95 <= 5.5 then
                  case when Q98 <= 6.5 then
                     return 0.0 # (0.0 out of 74.0)
                  else  # if Q98 > 6.5
                    case when Q89 <= 7.0 then
                       return 0.0 # (0.0 out of 8.0)
                    else  # if Q89 > 7.0
                       return 0.25 # (1.0 out of 4.0)
                    end                   end                 else  # if Q95 > 5.5
                  case when Q96 <= 9.5 then
                    case when Q99 <= 7.5 then
                      case when Q1 <= 5.5 then
                         return 0.5 # (2.0 out of 4.0)
                      else  # if Q1 > 5.5
                         return 0.0 # (0.0 out of 7.0)
                      end                     else  # if Q99 > 7.5
                       return 0.0 # (0.0 out of 21.0)
                    end                   else  # if Q96 > 9.5
                    case when Q95 <= 8.0 then
                       return 0.75 # (3.0 out of 4.0)
                    else  # if Q95 > 8.0
                       return 0.0 # (0.0 out of 4.0)
                    end                   end                 end               end             end           else  # if Q98 > 7.5
            case when Q93 <= 9.5 then
              case when Q89 <= 8.5 then
                case when Q95 <= 5.5 then
                  case when Q96 <= 7.0 then
                     return 0.6666666666666666 # (2.0 out of 3.0)
                  else  # if Q96 > 7.0
                     return 0.0 # (0.0 out of 6.0)
                  end                 else  # if Q95 > 5.5
                   return 0.0 # (0.0 out of 30.0)
                end               else  # if Q89 > 8.5
                case when Q97 <= 8.5 then
                   return 0.6666666666666666 # (2.0 out of 3.0)
                else  # if Q97 > 8.5
                   return 0.0 # (0.0 out of 6.0)
                end               end             else  # if Q93 > 9.5
               return 0.75 # (6.0 out of 8.0)
            end           end         else  # if Q89 > 9.5
          case when Q99 <= 10.0 then
            case when Q88 <= 9.5 then
               return 1.0 # (6.0 out of 6.0)
            else  # if Q88 > 9.5
               return 0.2 # (1.0 out of 5.0)
            end           else  # if Q99 > 10.0
             return 0.0 # (0.0 out of 11.0)
          end         end       else  # if Q87 > 10.5
        case when Q83 <= 7.5 then
          case when Q84 <= 8.5 then
             return 1.0 # (8.0 out of 8.0)
          else  # if Q84 > 8.5
             return 0.6 # (3.0 out of 5.0)
          end         else  # if Q83 > 7.5
          case when Q1 <= 4.0 then
             return 0.14285714285714285 # (1.0 out of 7.0)
          else  # if Q1 > 4.0
             return 0.0 # (0.0 out of 12.0)
          end         end       end     else  # if Q97 > 9.5
      case when Q98 <= 4.5 then
        case when Q87 <= 6.5 then
          case when Q71 <= 2.5 then
             return 0.42857142857142855 # (3.0 out of 7.0)
          else  # if Q71 > 2.5
             return 1.0 # (6.0 out of 6.0)
          end         else  # if Q87 > 6.5
          case when Q88 <= 8.5 then
            case when Q97 <= 10.5 then
               return 0.0 # (0.0 out of 11.0)
            else  # if Q97 > 10.5
              case when Q91 <= 10.0 then
                 return 0.5 # (2.0 out of 4.0)
              else  # if Q91 > 10.0
                 return 0.0 # (0.0 out of 6.0)
              end             end           else  # if Q88 > 8.5
            case when Q83 <= 9.5 then
              case when Q98 <= 2.0 then
                 return 0.0 # (0.0 out of 6.0)
              else  # if Q98 > 2.0
                case when Q93 <= 6.0 then
                   return 0.0 # (0.0 out of 6.0)
                else  # if Q93 > 6.0
                  case when Q84 <= 10.5 then
                    case when Q83 <= 8.0 then
                       return 1.0 # (13.0 out of 13.0)
                    else  # if Q83 > 8.0
                       return 0.6666666666666666 # (4.0 out of 6.0)
                    end                   else  # if Q84 > 10.5
                     return 0.25 # (1.0 out of 4.0)
                  end                 end               end             else  # if Q83 > 9.5
               return 0.0 # (0.0 out of 10.0)
            end           end         end       else  # if Q98 > 4.5
        case when Q94 <= 2.5 then
           return 0.75 # (6.0 out of 8.0)
        else  # if Q94 > 2.5
          case when Q99 <= 8.5 then
            case when Q97 <= 10.5 then
              case when Q93 <= 9.0 then
                 return 0.0 # (0.0 out of 3.0)
              else  # if Q93 > 9.0
                 return 1.0 # (4.0 out of 4.0)
              end             else  # if Q97 > 10.5
              case when Q91 <= 10.5 then
                 return 0.3333333333333333 # (2.0 out of 6.0)
              else  # if Q91 > 10.5
                 return 0.0 # (0.0 out of 7.0)
              end             end           else  # if Q99 > 8.5
            case when Q93 <= 4.5 then
              case when Q85 <= 9.5 then
                 return 0.25 # (1.0 out of 4.0)
              else  # if Q85 > 9.5
                 return 0.75 # (3.0 out of 4.0)
              end             else  # if Q93 > 4.5
              case when Q93 <= 10.5 then
                 return 0.0 # (0.0 out of 63.0)
              else  # if Q93 > 10.5
                case when Q95 <= 3.5 then
                   return 0.5714285714285714 # (4.0 out of 7.0)
                else  # if Q95 > 3.5
                  case when Q71 <= 8.5 then
                    case when Q89 <= 8.5 then
                       return 0.2857142857142857 # (2.0 out of 7.0)
                    else  # if Q89 > 8.5
                       return 0.0 # (0.0 out of 12.0)
                    end                   else  # if Q71 > 8.5
                     return 0.5 # (2.0 out of 4.0)
                  end                 end               end             end           end         end       end     end   else  # if Q98 > 8.5
    case when Q93 <= 8.5 then
      case when Q98 <= 9.5 then
        case when Q97 <= 10.5 then
          case when Q88 <= 8.5 then
             return 0.0 # (0.0 out of 20.0)
          else  # if Q88 > 8.5
            case when Q89 <= 9.5 then
               return 0.0 # (0.0 out of 12.0)
            else  # if Q89 > 9.5
               return 0.4 # (2.0 out of 5.0)
            end           end         else  # if Q97 > 10.5
          case when Q1 <= 3.5 then
             return 0.5714285714285714 # (4.0 out of 7.0)
          else  # if Q1 > 3.5
            case when Q84 <= 7.5 then
               return 0.0 # (0.0 out of 5.0)
            else  # if Q84 > 7.5
               return 0.16666666666666666 # (1.0 out of 6.0)
            end           end         end       else  # if Q98 > 9.5
        case when Q99 <= 9.5 then
          case when Q93 <= 3.5 then
             return 0.2 # (1.0 out of 5.0)
          else  # if Q93 > 3.5
            case when Q83 <= 7.5 then
               return 0.3333333333333333 # (1.0 out of 3.0)
            else  # if Q83 > 7.5
               return 1.0 # (7.0 out of 7.0)
            end           end         else  # if Q99 > 9.5
          case when Q71 <= 10.0 then
            case when Q95 <= 6.5 then
               return 0.16666666666666666 # (1.0 out of 6.0)
            else  # if Q95 > 6.5
               return 0.0 # (0.0 out of 13.0)
            end           else  # if Q71 > 10.0
            case when Q92 <= 10.0 then
              case when Q95 <= 8.0 then
                 return 0.3333333333333333 # (1.0 out of 3.0)
              else  # if Q95 > 8.0
                 return 1.0 # (7.0 out of 7.0)
              end             else  # if Q92 > 10.0
              case when Q91 <= 9.5 then
                 return 0.2857142857142857 # (2.0 out of 7.0)
              else  # if Q91 > 9.5
                 return 0.0 # (0.0 out of 10.0)
              end             end           end         end       end     else  # if Q93 > 8.5
      case when Q71 <= 4.5 then
        case when Q88 <= 7.5 then
          case when Q94 <= 7.0 then
             return 0.25 # (2.0 out of 8.0)
          else  # if Q94 > 7.0
             return 0.0 # (0.0 out of 5.0)
          end         else  # if Q88 > 7.5
           return 0.0 # (0.0 out of 20.0)
        end       else  # if Q71 > 4.5
        case when Q87 <= 8.5 then
          case when Q85 <= 7.5 then
            case when Q97 <= 9.5 then
              case when Q87 <= 6.5 then
                 return 0.2 # (1.0 out of 5.0)
              else  # if Q87 > 6.5
                 return 0.4 # (2.0 out of 5.0)
              end             else  # if Q97 > 9.5
               return 1.0 # (7.0 out of 7.0)
            end           else  # if Q85 > 7.5
            case when Q1 <= 4.5 then
               return 0.125 # (1.0 out of 8.0)
            else  # if Q1 > 4.5
               return 0.0 # (0.0 out of 9.0)
            end           end         else  # if Q87 > 8.5
          case when Q71 <= 8.5 then
            case when Q98 <= 9.5 then
              case when Q93 <= 9.5 then
                case when Q92 <= 9.5 then
                   return 0.6666666666666666 # (2.0 out of 3.0)
                else  # if Q92 > 9.5
                   return 0.25 # (1.0 out of 4.0)
                end               else  # if Q93 > 9.5
                 return 0.0 # (0.0 out of 8.0)
              end             else  # if Q98 > 9.5
              case when Q95 <= 7.0 then
                 return 0.375 # (3.0 out of 8.0)
              else  # if Q95 > 7.0
                 return 0.875 # (7.0 out of 8.0)
              end             end           else  # if Q71 > 8.5
            case when Q94 <= 9.5 then
              case when Q94 <= 5.5 then
                case when Q98 <= 10.0 then
                  case when Q71 <= 10.0 then
                     return 0.75 # (3.0 out of 4.0)
                  else  # if Q71 > 10.0
                     return 0.8333333333333334 # (5.0 out of 6.0)
                  end                 else  # if Q98 > 10.0
                  case when Q83 <= 8.5 then
                     return 0.0 # (0.0 out of 4.0)
                  else  # if Q83 > 8.5
                     return 0.42857142857142855 # (3.0 out of 7.0)
                  end                 end               else  # if Q94 > 5.5
                case when Q90 <= 8.5 then
                   return 1.0 # (10.0 out of 10.0)
                else  # if Q90 > 8.5
                  case when Q83 <= 7.5 then
                    case when Q84 <= 7.5 then
                       return 0.0 # (0.0 out of 4.0)
                    else  # if Q84 > 7.5
                      case when Q98 <= 10.0 then
                         return 0.5555555555555556 # (5.0 out of 9.0)
                      else  # if Q98 > 10.0
                         return 1.0 # (6.0 out of 6.0)
                      end                     end                   else  # if Q83 > 7.5
                    case when Q95 <= 6.5 then
                       return 0.5 # (3.0 out of 6.0)
                    else  # if Q95 > 6.5
                       return 1.0 # (16.0 out of 16.0)
                    end                   end                 end               end             else  # if Q94 > 9.5
              case when Q95 <= 8.5 then
                case when Q96 <= 10.0 then
                  case when Q91 <= 9.5 then
                     return 0.25 # (1.0 out of 4.0)
                  else  # if Q91 > 9.5
                     return 0.0 # (0.0 out of 9.0)
                  end                 else  # if Q96 > 10.0
                   return 0.6666666666666666 # (2.0 out of 3.0)
                end               else  # if Q95 > 8.5
                case when Q1 <= 4.5 then
                   return 0.6 # (3.0 out of 5.0)
                else  # if Q1 > 4.5
                   return 0.4 # (2.0 out of 5.0)
                end               end             end           end         end       end     end   end )