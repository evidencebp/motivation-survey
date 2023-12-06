create or replace function rf__6 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q96 <= 10.5 then
    case when Q82 <= 8.5 then
      case when Q81 <= 1.5 then
        case when Q83.1 <= 4.0 then
            0.3333333333333333 
        else  # if Q83.1 > 4.0
            1.0 
        end       else  # if Q81 > 1.5
        case when Q101 <= 9.5 then
          case when Q79 <= 6.5 then
            case when Q89 <= 8.0 then
              case when Q71.1 <= 8.0 then
                  0.0 
              else  # if Q71.1 > 8.0
                  0.3333333333333333 
              end             else  # if Q89 > 8.0
                0.5714285714285714 
            end           else  # if Q79 > 6.5
            case when Q72 <= 7.5 then
                0.0 
            else  # if Q72 > 7.5
              case when Q94 <= 8.5 then
                case when Q87 <= 7.5 then
                    0.0 
                else  # if Q87 > 7.5
                  case when Q90 <= 8.5 then
                      0.8 
                  else  # if Q90 > 8.5
                    case when Q84.1 <= 6.5 then
                        0.5 
                    else  # if Q84.1 > 6.5
                        0.1111111111111111 
                    end                   end                 end               else  # if Q94 > 8.5
                case when Q101 <= 8.5 then
                    0.0 
                else  # if Q101 > 8.5
                    0.16666666666666666 
                end               end             end           end         else  # if Q101 > 9.5
          case when Q95 <= 7.5 then
            case when Q69 <= 6.5 then
              case when Q89 <= 6.5 then
                  0.3333333333333333 
              else  # if Q89 > 6.5
                case when Q95.1 <= 2.5 then
                  case when Q81 <= 8.5 then
                      1.0 
                  else  # if Q81 > 8.5
                      0.75 
                  end                 else  # if Q95.1 > 2.5
                    0.6 
                end               end             else  # if Q69 > 6.5
                0.0 
            end           else  # if Q95 > 7.5
            case when Q92 <= 10.5 then
              case when Q84.1 <= 7.5 then
                  1.0 
              else  # if Q84.1 > 7.5
                  0.3333333333333333 
              end             else  # if Q92 > 10.5
                0.0 
            end           end         end       end     else  # if Q82 > 8.5
      case when Q101 <= 9.5 then
        case when Q75 <= 7.0 then
          case when Q61_1 <= 26.5 then
              1.0 
          else  # if Q61_1 > 26.5
            case when Q87 <= 7.5 then
              case when Q94 <= 6.5 then
                  0.0 
              else  # if Q94 > 6.5
                  0.75 
              end             else  # if Q87 > 7.5
                0.0 
            end           end         else  # if Q75 > 7.0
          case when Q84.1 <= 6.5 then
            case when Q101 <= 8.5 then
                0.0 
            else  # if Q101 > 8.5
                0.8571428571428571 
            end           else  # if Q84.1 > 6.5
              1.0 
          end         end       else  # if Q101 > 9.5
        case when Q97.1 <= 8.5 then
          case when Q89 <= 5.5 then
              0.25 
          else  # if Q89 > 5.5
            case when Q70 <= 8.5 then
              case when Q95 <= 8.5 then
                case when Q83 <= 7.5 then
                    0.0 
                else  # if Q83 > 7.5
                  case when Q70 <= 7.5 then
                      1.0 
                  else  # if Q70 > 7.5
                      0.0 
                  end                 end               else  # if Q95 > 8.5
                  1.0 
              end             else  # if Q70 > 8.5
              case when Q94 <= 10.5 then
                case when Q91 <= 9.5 then
                    0.8181818181818182 
                else  # if Q91 > 9.5
                    1.0 
                end               else  # if Q94 > 10.5
                  0.5714285714285714 
              end             end           end         else  # if Q97.1 > 8.5
          case when Q74 <= 9.5 then
            case when Q73 <= 10.0 then
                0.4444444444444444 
            else  # if Q73 > 10.0
                1.0 
            end           else  # if Q74 > 9.5
              1.0 
          end         end       end     end   else  # if Q96 > 10.5
    case when Q91 <= 10.5 then
      case when Q82 <= 7.5 then
          0.0 
      else  # if Q82 > 7.5
        case when Q73 <= 8.5 then
            0.3333333333333333 
        else  # if Q73 > 8.5
          case when Q76 <= 9.5 then
              1.0 
          else  # if Q76 > 9.5
              0.6666666666666666 
          end         end       end     else  # if Q91 > 10.5
      case when Q81 <= 5.0 then
          0.4 
      else  # if Q81 > 5.0
        case when Q84.1 <= 6.5 then
          case when Q98 <= 7.5 then
              1.0 
          else  # if Q98 > 7.5
              0.75 
          end         else  # if Q84.1 > 6.5
            1.0 
        end       end     end   end )