create or replace function rf__3 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q73 <= 10.5 then
    case when Q78 <= 10.5 then
      case when Q84 <= 9.5 then
        case when Q84.1 <= 7.5 then
          case when Q71.1 <= 8.5 then
            case when Q102 <= 3.5 then
                0.25 
            else  # if Q102 > 3.5
              case when Q78 <= 9.5 then
                  0.0 
              else  # if Q78 > 9.5
                  0.08333333333333333 
              end             end           else  # if Q71.1 > 8.5
            case when Q95 <= 6.5 then
                0.0 
            else  # if Q95 > 6.5
              case when Q95 <= 8.5 then
                  0.75 
              else  # if Q95 > 8.5
                  0.0 
              end             end           end         else  # if Q84.1 > 7.5
          case when Q65_1 <= 1.5 then
            case when Q72 <= 8.5 then
                0.0 
            else  # if Q72 > 8.5
                0.25 
            end           else  # if Q65_1 > 1.5
            case when Q81 <= 6.5 then
              case when Q87 <= 8.5 then
                  0.0 
              else  # if Q87 > 8.5
                  0.3333333333333333 
              end             else  # if Q81 > 6.5
              case when Q70 <= 7.5 then
                  1.0 
              else  # if Q70 > 7.5
                  0.6666666666666666 
              end             end           end         end       else  # if Q84 > 9.5
          1.0 
      end     else  # if Q78 > 10.5
      case when Q83.1 <= 6.5 then
        case when Q67 <= 10.5 then
          case when Q97.1 <= 0.0 then
            case when Q90 <= 10.5 then
              case when Q70 <= 9.5 then
                case when Q84.1 <= 7.0 then
                    0.0 
                else  # if Q84.1 > 7.0
                    0.8 
                end               else  # if Q70 > 9.5
                  1.0 
              end             else  # if Q90 > 10.5
                0.3333333333333333 
            end           else  # if Q97.1 > 0.0
            case when Q71.1 <= 8.5 then
              case when Q89 <= 8.5 then
                case when Q71 <= 6.5 then
                    0.3333333333333333 
                else  # if Q71 > 6.5
                    0.0 
                end               else  # if Q89 > 8.5
                  0.0 
              end             else  # if Q71.1 > 8.5
              case when Q68 <= 4.0 then
                case when Q71.1 <= 9.5 then
                    0.5 
                else  # if Q71.1 > 9.5
                  case when Q98 <= 2.0 then
                      0.0 
                  else  # if Q98 > 2.0
                      0.16666666666666666 
                  end                 end               else  # if Q68 > 4.0
                case when Q74 <= 9.5 then
                    0.5 
                else  # if Q74 > 9.5
                    1.0 
                end               end             end           end         else  # if Q67 > 10.5
          case when Q83 <= 10.5 then
            case when Q94 <= 10.5 then
              case when Q61_1 <= 34.5 then
                case when Q77 <= 9.5 then
                  case when Q98.1 <= 4.0 then
                    case when Q72 <= 10.0 then
                        0.0 
                    else  # if Q72 > 10.0
                        0.3333333333333333 
                    end                   else  # if Q98.1 > 4.0
                      1.0 
                  end                 else  # if Q77 > 9.5
                    1.0 
                end               else  # if Q61_1 > 34.5
                  1.0 
              end             else  # if Q94 > 10.5
                0.0 
            end           else  # if Q83 > 10.5
            case when Q84.1 <= 7.0 then
                0.1 
            else  # if Q84.1 > 7.0
                0.75 
            end           end         end       else  # if Q83.1 > 6.5
        case when Q76 <= 7.5 then
            0.5 
        else  # if Q76 > 7.5
          case when Q70 <= 7.5 then
              0.6 
          else  # if Q70 > 7.5
              1.0 
          end         end       end     end   else  # if Q73 > 10.5
    case when Q90 <= 9.5 then
      case when Q61_1 <= 24.5 then
        case when Q97.1 <= 7.5 then
            0.25 
        else  # if Q97.1 > 7.5
            0.0 
        end       else  # if Q61_1 > 24.5
        case when Q75 <= 8.5 then
          case when Q1 <= 4.0 then
            case when Q97 <= 10.0 then
                1.0 
            else  # if Q97 > 10.0
                0.6666666666666666 
            end           else  # if Q1 > 4.0
              0.2 
          end         else  # if Q75 > 8.5
          case when Q76 <= 8.5 then
              0.75 
          else  # if Q76 > 8.5
              1.0 
          end         end       end     else  # if Q90 > 9.5
      case when Q98.1 <= 9.5 then
        case when Q74 <= 9.5 then
          case when Q88 <= 8.5 then
              1.0 
          else  # if Q88 > 8.5
            case when Q71 <= 7.5 then
                0.14285714285714285 
            else  # if Q71 > 7.5
              case when Q85 <= 9.5 then
                  0.8333333333333334 
              else  # if Q85 > 9.5
                  0.6666666666666666 
              end             end           end         else  # if Q74 > 9.5
            1.0 
        end       else  # if Q98.1 > 9.5
          1.0 
      end     end   end )