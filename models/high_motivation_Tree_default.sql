create or replace function continue.tree (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q72 <= 8.5 then
    case when Q97 <= 5.0 then
        1.0 
    else  # if Q97 > 5.0
      case when Q83.1 <= 9.5 then
        case when Q1 <= 2.5 then
          case when Q82 <= 8.5 then
            case when Q97.1 <= 10.5 then
                0.0 
            else  # if Q97.1 > 10.5
                1.0 
            end           else  # if Q82 > 8.5
            case when Q73 <= 8.5 then
              case when Q102 <= 6.5 then
                  1.0 
              else  # if Q102 > 6.5
                  0.0 
              end             else  # if Q73 > 8.5
                1.0 
            end           end         else  # if Q1 > 2.5
          case when Q92 <= 8.5 then
            case when Q70 <= 10.5 then
              case when Q61_1 <= 22.5 then
                case when Q81 <= 7.5 then
                  case when Q77 <= 3.0 then
                      0.0 
                  else  # if Q77 > 3.0
                      1.0 
                  end                 else  # if Q81 > 7.5
                    0.0 
                end               else  # if Q61_1 > 22.5
                  0.0 
              end             else  # if Q70 > 10.5
                1.0 
            end           else  # if Q92 > 8.5
            case when Q81 <= 2.0 then
              case when Q72 <= 6.5 then
                  1.0 
              else  # if Q72 > 6.5
                  0.0 
              end             else  # if Q81 > 2.0
              case when Is_Paid <= -0.5 then
                case when Q76 <= 7.0 then
                    1.0 
                else  # if Q76 > 7.0
                    0.0 
                end               else  # if Is_Paid > -0.5
                  0.0 
              end             end           end         end       else  # if Q83.1 > 9.5
          1.0 
      end     end   else  # if Q72 > 8.5
    case when Q84.1 <= 6.5 then
      case when Q89 <= 7.5 then
        case when Q70 <= 9.5 then
          case when Q87 <= 4.0 then
              1.0 
          else  # if Q87 > 4.0
            case when Q61_1 <= 7.5 then
              case when Q77 <= 4.5 then
                  0.0 
              else  # if Q77 > 4.5
                  1.0 
              end             else  # if Q61_1 > 7.5
              case when Q71.1 <= 10.0 then
                  0.0 
              else  # if Q71.1 > 10.0
                case when Q90 <= 6.5 then
                    0.0 
                else  # if Q90 > 6.5
                    1.0 
                end               end             end           end         else  # if Q70 > 9.5
          case when Q1 <= 7.0 then
            case when Q84 <= 5.5 then
                0.0 
            else  # if Q84 > 5.5
                1.0 
            end           else  # if Q1 > 7.0
              0.0 
          end         end       else  # if Q89 > 7.5
        case when Q72 <= 10.5 then
          case when Q98 <= 8.5 then
            case when Q82 <= 6.5 then
              case when Q69 <= 6.5 then
                  1.0 
              else  # if Q69 > 6.5
                  0.0 
              end             else  # if Q82 > 6.5
              case when Q83.1 <= 5.5 then
                case when Q93 <= 4.5 then
                    1.0 
                else  # if Q93 > 4.5
                    0.0 
                end               else  # if Q83.1 > 5.5
                case when Q75 <= 2.5 then
                    0.0 
                else  # if Q75 > 2.5
                    1.0 
                end               end             end           else  # if Q98 > 8.5
            case when Q65_1 <= 9.5 then
              case when Q34 <= 2.5 then
                case when Q67 <= 4.5 then
                    0.0 
                else  # if Q67 > 4.5
                    1.0 
                end               else  # if Q34 > 2.5
                case when Q82 <= 10.5 then
                  case when Q84 <= 9.5 then
                      0.0 
                  else  # if Q84 > 9.5
                      1.0 
                  end                 else  # if Q82 > 10.5
                    1.0 
                end               end             else  # if Q65_1 > 9.5
                1.0 
            end           end         else  # if Q72 > 10.5
          case when Q96 <= 3.5 then
              0.0 
          else  # if Q96 > 3.5
              1.0 
          end         end       end     else  # if Q84.1 > 6.5
      case when Q82 <= 8.5 then
        case when Q1 <= 5.5 then
          case when Q98 <= 9.5 then
            case when Q85 <= 9.5 then
                1.0 
            else  # if Q85 > 9.5
              case when Q70 <= 9.5 then
                  0.0 
              else  # if Q70 > 9.5
                  1.0 
              end             end           else  # if Q98 > 9.5
            case when Q84.1 <= 10.0 then
                0.0 
            else  # if Q84.1 > 10.0
                1.0 
            end           end         else  # if Q1 > 5.5
          case when Q91 <= 9.5 then
              0.0 
          else  # if Q91 > 9.5
            case when Q72 <= 10.5 then
                0.0 
            else  # if Q72 > 10.5
                1.0 
            end           end         end       else  # if Q82 > 8.5
        case when Q67 <= 1.5 then
          case when Q73 <= 10.5 then
              1.0 
          else  # if Q73 > 10.5
              0.0 
          end         else  # if Q67 > 1.5
          case when Q1 <= 2.5 then
            case when Q84 <= 4.5 then
                0.0 
            else  # if Q84 > 4.5
              case when Q99 <= 9.5 then
                case when Q79 <= 10.0 then
                    1.0 
                else  # if Q79 > 10.0
                    0.0 
                end               else  # if Q99 > 9.5
                  1.0 
              end             end           else  # if Q1 > 2.5
            case when Q92 <= 5.5 then
                0.0 
            else  # if Q92 > 5.5
              case when Q76 <= 3.5 then
                case when Q95.1 <= 1.5 then
                  case when Q67 <= 6.5 then
                    case when Q101 <= 10.0 then
                        0.0 
                    else  # if Q101 > 10.0
                        1.0 
                    end                   else  # if Q67 > 6.5
                      1.0 
                  end                 else  # if Q95.1 > 1.5
                    0.0 
                end               else  # if Q76 > 3.5
                  1.0 
              end             end           end         end       end     end   end )