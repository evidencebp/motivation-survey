create or replace function rf__2 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q74 <= 9.5 then
    case when Q75 <= 8.5 then
      case when Q101 <= 10.5 then
        case when Q71.1 <= 7.5 then
          case when Q97.1 <= 8.5 then
            case when Q76 <= 0.0 then
                0.25 
            else  # if Q76 > 0.0
                0.0 
            end           else  # if Q97.1 > 8.5
              0.4 
          end         else  # if Q71.1 > 7.5
          case when Q95 <= 5.5 then
            case when Q61_1 <= 36.0 then
                0.0 
            else  # if Q61_1 > 36.0
              case when Q85 <= 8.0 then
                  0.0 
              else  # if Q85 > 8.0
                  0.6 
              end             end           else  # if Q95 > 5.5
            case when Q61_1 <= 26.5 then
              case when Q79 <= 8.5 then
                  0.8 
              else  # if Q79 > 8.5
                  1.0 
              end             else  # if Q61_1 > 26.5
              case when Q84.1 <= 5.5 then
                case when Q83 <= 8.5 then
                    0.0 
                else  # if Q83 > 8.5
                    0.25 
                end               else  # if Q84.1 > 5.5
                case when Q82 <= 8.5 then
                  case when Q71 <= 8.5 then
                      0.4 
                  else  # if Q71 > 8.5
                      0.0 
                  end                 else  # if Q82 > 8.5
                  case when Q74 <= 8.5 then
                      0.5 
                  else  # if Q74 > 8.5
                      1.0 
                  end                 end               end             end           end         end       else  # if Q101 > 10.5
        case when Q73 <= 5.5 then
            0.0 
        else  # if Q73 > 5.5
          case when Q84.1 <= 5.0 then
              0.0 
          else  # if Q84.1 > 5.0
            case when Q91 <= 6.5 then
                0.0 
            else  # if Q91 > 6.5
              case when Q61_1 <= 22.0 then
                  1.0 
              else  # if Q61_1 > 22.0
                case when Q1 <= 5.5 then
                  case when Q95 <= 1.5 then
                      0.8333333333333334 
                  else  # if Q95 > 1.5
                      1.0 
                  end                 else  # if Q1 > 5.5
                  case when Q65_1 <= 6.0 then
                      0.8 
                  else  # if Q65_1 > 6.0
                      0.0 
                  end                 end               end             end           end         end       end     else  # if Q75 > 8.5
      case when Q83 <= 7.5 then
        case when Q70 <= 8.5 then
          case when Q88 <= 9.5 then
              0.75 
          else  # if Q88 > 9.5
              0.2 
          end         else  # if Q70 > 8.5
            1.0 
        end       else  # if Q83 > 7.5
        case when Q95.1 <= 1.5 then
          case when Q92 <= 8.5 then
            case when Q78 <= 8.5 then
                0.25 
            else  # if Q78 > 8.5
                0.0 
            end           else  # if Q92 > 8.5
            case when Q71 <= 9.0 then
                1.0 
            else  # if Q71 > 9.0
                0.0 
            end           end         else  # if Q95.1 > 1.5
            0.8 
        end       end     end   else  # if Q74 > 9.5
    case when Q101 <= 9.5 then
      case when Q73 <= 9.5 then
        case when Q97.1 <= 8.0 then
            0.0 
        else  # if Q97.1 > 8.0
            1.0 
        end       else  # if Q73 > 9.5
        case when Q82 <= 8.5 then
          case when Q91 <= 9.5 then
              0.0 
          else  # if Q91 > 9.5
              1.0 
          end         else  # if Q82 > 8.5
            1.0 
        end       end     else  # if Q101 > 9.5
      case when Q84 <= 8.5 then
        case when Q76 <= 8.5 then
          case when Q89 <= 9.5 then
            case when Q94 <= 5.0 then
                0.6666666666666666 
            else  # if Q94 > 5.0
                0.0 
            end           else  # if Q89 > 9.5
              0.75 
          end         else  # if Q76 > 8.5
          case when Q61_1 <= 24.5 then
              0.4 
          else  # if Q61_1 > 24.5
              1.0 
          end         end       else  # if Q84 > 8.5
          1.0 
      end     end   end )