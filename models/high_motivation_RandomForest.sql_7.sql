create or replace function rf__7 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q84.1 <= 9.5 then
    case when Q1 <= 5.5 then
      case when Q84.1 <= 5.5 then
        case when Q68 <= 2.5 then
          case when Q84 <= 9.5 then
              0.0 
          else  # if Q84 > 9.5
              0.6 
          end         else  # if Q68 > 2.5
          case when Q102 <= 5.5 then
              0.875 
          else  # if Q102 > 5.5
            case when Q84 <= 6.5 then
              case when Q98.1 <= 10.0 then
                  0.8 
              else  # if Q98.1 > 10.0
                  0.25 
              end             else  # if Q84 > 6.5
              case when Q79 <= 7.5 then
                  0.4 
              else  # if Q79 > 7.5
                  0.0 
              end             end           end         end       else  # if Q84.1 > 5.5
        case when Q71 <= 10.5 then
          case when Q75 <= 8.5 then
            case when Q77 <= 5.5 then
              case when Q85 <= 7.5 then
                case when Q1 <= 3.5 then
                    0.0 
                else  # if Q1 > 3.5
                    0.6666666666666666 
                end               else  # if Q85 > 7.5
                  0.0 
              end             else  # if Q77 > 5.5
              case when Q67 <= 8.5 then
                case when Q71 <= 8.5 then
                  case when Q76 <= 7.5 then
                    case when Q1 <= 3.5 then
                        0.0 
                    else  # if Q1 > 3.5
                        0.5 
                    end                   else  # if Q76 > 7.5
                    case when Q98.1 <= 7.0 then
                        0.25 
                    else  # if Q98.1 > 7.0
                      case when Q89 <= 8.5 then
                          0.75 
                      else  # if Q89 > 8.5
                          1.0 
                      end                     end                   end                 else  # if Q71 > 8.5
                  case when Q79 <= 8.5 then
                      0.0 
                  else  # if Q79 > 8.5
                    case when Q71 <= 9.5 then
                        0.5 
                    else  # if Q71 > 9.5
                        0.16666666666666666 
                    end                   end                 end               else  # if Q67 > 8.5
                case when Q73 <= 8.5 then
                    0.3333333333333333 
                else  # if Q73 > 8.5
                  case when Q72 <= 7.5 then
                      0.6666666666666666 
                  else  # if Q72 > 7.5
                      1.0 
                  end                 end               end             end           else  # if Q75 > 8.5
            case when Q85 <= 8.5 then
                1.0 
            else  # if Q85 > 8.5
              case when Q77 <= 9.5 then
                case when Q88 <= 8.5 then
                    1.0 
                else  # if Q88 > 8.5
                    0.75 
                end               else  # if Q77 > 9.5
                case when Q78 <= 10.5 then
                    0.0 
                else  # if Q78 > 10.5
                    0.6666666666666666 
                end               end             end           end         else  # if Q71 > 10.5
          case when Q79 <= 8.5 then
              0.3333333333333333 
          else  # if Q79 > 8.5
            case when Q84 <= 8.5 then
                0.8571428571428571 
            else  # if Q84 > 8.5
                1.0 
            end           end         end       end     else  # if Q1 > 5.5
      case when Q95.1 <= 8.5 then
        case when Q67 <= 10.5 then
          case when Q68 <= 0.0 then
            case when Q71 <= 8.0 then
                0.0 
            else  # if Q71 > 8.0
                0.75 
            end           else  # if Q68 > 0.0
            case when Q97.1 <= 10.5 then
              case when Q81 <= 3.5 then
                  0.16666666666666666 
              else  # if Q81 > 3.5
                  0.0 
              end             else  # if Q97.1 > 10.5
                0.6 
            end           end         else  # if Q67 > 10.5
          case when Q84.1 <= 7.0 then
            case when Q96 <= 9.5 then
                0.25 
            else  # if Q96 > 9.5
                0.5 
            end           else  # if Q84.1 > 7.0
              0.8888888888888888 
          end         end       else  # if Q95.1 > 8.5
          1.0 
      end     end   else  # if Q84.1 > 9.5
    case when Q73 <= 3.5 then
        0.6 
    else  # if Q73 > 3.5
      case when Q74 <= 8.5 then
          0.5714285714285714 
      else  # if Q74 > 8.5
        case when Q1 <= 8.5 then
            1.0 
        else  # if Q1 > 8.5
          case when Q65_1 <= 4.5 then
              0.5 
          else  # if Q65_1 > 4.5
              1.0 
          end         end       end     end   end )