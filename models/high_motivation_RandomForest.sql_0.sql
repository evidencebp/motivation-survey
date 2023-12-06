create or replace function rf__0 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q84 <= 8.5 then
    case when Q74 <= 9.5 then
      case when Q77 <= 7.5 then
        case when Q102 <= 8.5 then
          case when Q97.1 <= 8.5 then
              0.0 
          else  # if Q97.1 > 8.5
              0.2 
          end         else  # if Q102 > 8.5
          case when Q85 <= 5.5 then
              0.6666666666666666 
          else  # if Q85 > 5.5
            case when Q65_1 <= 0.0 then
                0.5 
            else  # if Q65_1 > 0.0
              case when Q97 <= 8.5 then
                case when Q73 <= 7.5 then
                    0.2857142857142857 
                else  # if Q73 > 7.5
                    0.0 
                end               else  # if Q97 > 8.5
                  0.0 
              end             end           end         end       else  # if Q77 > 7.5
        case when Q97.1 <= 0.0 then
          case when Q89 <= 8.5 then
              0.6666666666666666 
          else  # if Q89 > 8.5
              0.8888888888888888 
          end         else  # if Q97.1 > 0.0
          case when Q97.1 <= 10.5 then
            case when Q81 <= 6.5 then
              case when Is_Paid <= 0.5 then
                  0.125 
              else  # if Is_Paid > 0.5
                case when Q83 <= 6.5 then
                    0.8571428571428571 
                else  # if Q83 > 6.5
                    0.4 
                end               end             else  # if Q81 > 6.5
              case when Q98.1 <= 9.5 then
                  0.0 
              else  # if Q98.1 > 9.5
                  0.2 
              end             end           else  # if Q97.1 > 10.5
              1.0 
          end         end       end     else  # if Q74 > 9.5
      case when Q101 <= 7.5 then
          0.14285714285714285 
      else  # if Q101 > 7.5
        case when Q65_1 <= 8.5 then
          case when Q72 <= 9.5 then
            case when Q95 <= 4.5 then
                0.8 
            else  # if Q95 > 4.5
              case when Q85 <= 8.5 then
                  0.0 
              else  # if Q85 > 8.5
                  0.25 
              end             end           else  # if Q72 > 9.5
            case when Q94 <= 9.5 then
              case when Q65_1 <= 0.0 then
                  0.3333333333333333 
              else  # if Q65_1 > 0.0
                case when Q84 <= 5.5 then
                    0.5 
                else  # if Q84 > 5.5
                  case when Q102 <= 8.5 then
                      0.75 
                  else  # if Q102 > 8.5
                      1.0 
                  end                 end               end             else  # if Q94 > 9.5
                0.14285714285714285 
            end           end         else  # if Q65_1 > 8.5
          case when Q79 <= 7.5 then
              0.6666666666666666 
          else  # if Q79 > 7.5
              1.0 
          end         end       end     end   else  # if Q84 > 8.5
    case when Q72 <= 8.5 then
      case when Q91 <= 10.5 then
        case when Q76 <= 0.0 then
            0.25 
        else  # if Q76 > 0.0
            0.0 
        end       else  # if Q91 > 10.5
        case when Q75 <= 7.5 then
            0.0 
        else  # if Q75 > 7.5
            1.0 
        end       end     else  # if Q72 > 8.5
      case when Q98 <= 5.0 then
        case when Q79 <= 6.5 then
            0.2 
        else  # if Q79 > 6.5
          case when Q68 <= 4.5 then
            case when Q91 <= 9.5 then
                0.6666666666666666 
            else  # if Q91 > 9.5
                1.0 
            end           else  # if Q68 > 4.5
            case when Q82 <= 7.5 then
                0.0 
            else  # if Q82 > 7.5
                0.75 
            end           end         end       else  # if Q98 > 5.0
        case when Q61_1 <= 17.0 then
            1.0 
        else  # if Q61_1 > 17.0
          case when Q72 <= 10.5 then
            case when Q95 <= 4.0 then
                0.25 
            else  # if Q95 > 4.0
              case when Q84.1 <= 9.5 then
                case when Q65_1 <= 9.5 then
                  case when Q71 <= 7.5 then
                      0.0 
                  else  # if Q71 > 7.5
                    case when Q78 <= 10.0 then
                        0.3333333333333333 
                    else  # if Q78 > 10.0
                      case when Q90 <= 9.5 then
                          0.6666666666666666 
                      else  # if Q90 > 9.5
                          1.0 
                      end                     end                   end                 else  # if Q65_1 > 9.5
                    1.0 
                end               else  # if Q84.1 > 9.5
                  1.0 
              end             end           else  # if Q72 > 10.5
            case when Q81 <= 9.5 then
              case when Q99 <= 9.5 then
                  0.6 
              else  # if Q99 > 9.5
                case when Q1 <= 8.5 then
                    1.0 
                else  # if Q1 > 8.5
                    0.6 
                end               end             else  # if Q81 > 9.5
                1.0 
            end           end         end       end     end   end )