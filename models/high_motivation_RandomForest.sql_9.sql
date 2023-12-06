create or replace function rf__9 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q74 <= 9.5 then
    case when Q82 <= 8.5 then
      case when Q89 <= 9.5 then
        case when Q72 <= 10.5 then
          case when Q95.1 <= 0.0 then
            case when Q71.1 <= 8.5 then
                0.8 
            else  # if Q71.1 > 8.5
                0.0 
            end           else  # if Q95.1 > 0.0
            case when Q71 <= 9.5 then
              case when Q65_1 <= 0.0 then
                  0.6666666666666666 
              else  # if Q65_1 > 0.0
                case when Q72 <= 7.5 then
                    0.0 
                else  # if Q72 > 7.5
                  case when Q76 <= 9.5 then
                    case when Q74 <= 6.5 then
                        0.2 
                    else  # if Q74 > 6.5
                        0.0 
                    end                   else  # if Q76 > 9.5
                    case when Q73 <= 9.5 then
                        0.6666666666666666 
                    else  # if Q73 > 9.5
                        0.0 
                    end                   end                 end               end             else  # if Q71 > 9.5
                0.0 
            end           end         else  # if Q72 > 10.5
          case when Q1 <= 6.0 then
              0.8 
          else  # if Q1 > 6.0
              0.0 
          end         end       else  # if Q89 > 9.5
        case when Q34 <= 8.5 then
            0.3333333333333333 
        else  # if Q34 > 8.5
            1.0 
        end       end     else  # if Q82 > 8.5
      case when Q74 <= 6.5 then
        case when Q1 <= 5.0 then
          case when Q81 <= 8.5 then
            case when Q83.1 <= 2.5 then
                0.6666666666666666 
            else  # if Q83.1 > 2.5
                0.0 
            end           else  # if Q81 > 8.5
              1.0 
          end         else  # if Q1 > 5.0
            0.0 
        end       else  # if Q74 > 6.5
        case when Q98 <= 5.5 then
          case when Q85 <= 6.5 then
              0.75 
          else  # if Q85 > 6.5
              1.0 
          end         else  # if Q98 > 5.5
          case when Q81 <= 6.5 then
            case when Q95 <= 5.5 then
                1.0 
            else  # if Q95 > 5.5
              case when Q75 <= 5.0 then
                case when Q34 <= 7.5 then
                    0.0 
                else  # if Q34 > 7.5
                    0.5 
                end               else  # if Q75 > 5.0
                case when Q92 <= 9.5 then
                    0.5 
                else  # if Q92 > 9.5
                    0.9090909090909091 
                end               end             end           else  # if Q81 > 6.5
            case when Q95 <= 8.5 then
              case when Q84.1 <= 7.5 then
                  0.0 
              else  # if Q84.1 > 7.5
                  0.5 
              end             else  # if Q95 > 8.5
              case when Q34 <= 10.0 then
                  0.25 
              else  # if Q34 > 10.0
                  1.0 
              end             end           end         end       end     end   else  # if Q74 > 9.5
    case when Q84.1 <= 9.5 then
      case when Q102 <= 7.5 then
        case when Q65_1 <= 2.5 then
            0.0 
        else  # if Q65_1 > 2.5
            0.7142857142857143 
        end       else  # if Q102 > 7.5
        case when Q73 <= 10.5 then
          case when Q72 <= 7.5 then
              0.14285714285714285 
          else  # if Q72 > 7.5
            case when Q98 <= 6.5 then
              case when Q99 <= 9.5 then
                case when Q88 <= 7.0 then
                    0.8 
                else  # if Q88 > 7.0
                    1.0 
                end               else  # if Q99 > 9.5
                case when Q98.1 <= 8.5 then
                    0.0 
                else  # if Q98.1 > 8.5
                    1.0 
                end               end             else  # if Q98 > 6.5
              case when Q93 <= 8.5 then
                case when Q75 <= 7.5 then
                    0.0 
                else  # if Q75 > 7.5
                  case when Q76 <= 6.5 then
                      0.3333333333333333 
                  else  # if Q76 > 6.5
                      1.0 
                  end                 end               else  # if Q93 > 8.5
                case when Q61_1 <= 33.5 then
                  case when Q92 <= 10.5 then
                      0.0 
                  else  # if Q92 > 10.5
                      0.3333333333333333 
                  end                 else  # if Q61_1 > 33.5
                    0.6 
                end               end             end           end         else  # if Q73 > 10.5
          case when Q94 <= 10.5 then
            case when Q84.1 <= 7.0 then
                1.0 
            else  # if Q84.1 > 7.0
              case when Q98.1 <= 8.5 then
                  0.6666666666666666 
              else  # if Q98.1 > 8.5
                case when Q83.1 <= 8.5 then
                    0.6666666666666666 
                else  # if Q83.1 > 8.5
                    1.0 
                end               end             end           else  # if Q94 > 10.5
              0.625 
          end         end       end     else  # if Q84.1 > 9.5
      case when Q82 <= 7.5 then
          0.6666666666666666 
      else  # if Q82 > 7.5
          1.0 
      end     end   end )