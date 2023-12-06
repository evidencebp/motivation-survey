create or replace function continue.tree (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q72 <= 8.5 then
    case when Q83.1 <= 9.5 then
      case when Q97 <= 5.0 then
          1.0 
      else  # if Q97 > 5.0
        case when Q1 <= 2.5 then
          case when Q82 <= 8.5 then
            case when Q74 <= 9.0 then
                0.0 
            else  # if Q74 > 9.0
                0.3333333333333333 
            end           else  # if Q82 > 8.5
            case when Q73 <= 8.5 then
                0.25 
            else  # if Q73 > 8.5
                1.0 
            end           end         else  # if Q1 > 2.5
          case when Q92 <= 8.5 then
            case when Q70 <= 7.5 then
              case when Q98.1 <= 7.5 then
                  0.0 
              else  # if Q98.1 > 7.5
                  0.3333333333333333 
              end             else  # if Q70 > 7.5
              case when Q71 <= 7.5 then
                  0.8 
              else  # if Q71 > 7.5
                  0.0 
              end             end           else  # if Q92 > 8.5
            case when Q61_1 <= 40.0 then
                0.0 
            else  # if Q61_1 > 40.0
              case when Q61_1 <= 44.0 then
                  0.5 
              else  # if Q61_1 > 44.0
                  0.0 
              end             end           end         end       end     else  # if Q83.1 > 9.5
        1.0 
    end   else  # if Q72 > 8.5
    case when Q84.1 <= 6.5 then
      case when Q89 <= 7.5 then
        case when Q70 <= 9.5 then
          case when Q61_1 <= 7.5 then
              0.5 
          else  # if Q61_1 > 7.5
            case when Q89 <= 4.0 then
                0.5 
            else  # if Q89 > 4.0
                0.0 
            end           end         else  # if Q70 > 9.5
          case when Q99 <= 6.5 then
              0.0 
          else  # if Q99 > 6.5
            case when Q83 <= 9.5 then
                1.0 
            else  # if Q83 > 9.5
                0.3333333333333333 
            end           end         end       else  # if Q89 > 7.5
        case when Q72 <= 10.5 then
          case when Q98 <= 8.5 then
            case when Q82 <= 6.5 then
              case when Q70 <= 9.5 then
                  1.0 
              else  # if Q70 > 9.5
                  0.6666666666666666 
              end             else  # if Q82 > 6.5
              case when Q83.1 <= 5.5 then
                case when Q84 <= 9.5 then
                    0.0 
                else  # if Q84 > 9.5
                    0.3333333333333333 
                end               else  # if Q83.1 > 5.5
                case when Q98.1 <= 7.5 then
                    0.6666666666666666 
                else  # if Q98.1 > 7.5
                    1.0 
                end               end             end           else  # if Q98 > 8.5
            case when Q65_1 <= 9.5 then
              case when Q34 <= 2.5 then
                  0.75 
              else  # if Q34 > 2.5
                case when Q67 <= 8.5 then
                    0.0 
                else  # if Q67 > 8.5
                  case when Q85 <= 8.5 then
                      0.0 
                  else  # if Q85 > 8.5
                      1.0 
                  end                 end               end             else  # if Q65_1 > 9.5
                1.0 
            end           end         else  # if Q72 > 10.5
          case when Q78 <= 10.5 then
              0.6666666666666666 
          else  # if Q78 > 10.5
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
              0.2 
          end         else  # if Q1 > 5.5
          case when Q91 <= 9.5 then
              0.0 
          else  # if Q91 > 9.5
            case when Q71 <= 8.0 then
                0.3333333333333333 
            else  # if Q71 > 8.0
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
                  0.3333333333333333 
              else  # if Q99 > 9.5
                  1.0 
              end             end           else  # if Q1 > 2.5
            case when Q97 <= 8.5 then
              case when Q73 <= 8.5 then
                  0.3333333333333333 
              else  # if Q73 > 8.5
                  1.0 
              end             else  # if Q97 > 8.5
              case when Q95 <= 10.5 then
                  1.0 
              else  # if Q95 > 10.5
                case when Q67 <= 7.5 then
                    0.6666666666666666 
                else  # if Q67 > 7.5
                    1.0 
                end               end             end           end         end       end     end   end )