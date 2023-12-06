create or replace function rf__5 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q98 <= 9.5 then
    case when Q97.1 <= 9.5 then
      case when Q70 <= 9.5 then
        case when Q76 <= 8.5 then
          case when Q78 <= 9.5 then
            case when Q96 <= 8.5 then
                0.0 
            else  # if Q96 > 8.5
              case when Q68 <= 3.5 then
                  0.0 
              else  # if Q68 > 3.5
                  1.0 
              end             end           else  # if Q78 > 9.5
            case when Q61_1 <= 32.5 then
              case when Q88 <= 8.5 then
                case when Q89 <= 9.5 then
                  case when Q76 <= 6.5 then
                    case when Q72 <= 9.0 then
                        0.25 
                    else  # if Q72 > 9.0
                        0.0 
                    end                   else  # if Q76 > 6.5
                      0.6 
                  end                 else  # if Q89 > 9.5
                    1.0 
                end               else  # if Q88 > 8.5
                case when Q93 <= 4.5 then
                    0.3333333333333333 
                else  # if Q93 > 4.5
                    0.0 
                end               end             else  # if Q61_1 > 32.5
              case when Q101 <= 9.5 then
                case when Q68 <= 2.5 then
                    0.0 
                else  # if Q68 > 2.5
                    0.6 
                end               else  # if Q101 > 9.5
                case when Q75 <= 1.5 then
                    1.0 
                else  # if Q75 > 1.5
                  case when Q83.1 <= 4.0 then
                      0.6666666666666666 
                  else  # if Q83.1 > 4.0
                      0.0 
                  end                 end               end             end           end         else  # if Q76 > 8.5
          case when Q88 <= 8.5 then
            case when Q71 <= 10.5 then
              case when Q95 <= 3.5 then
                  0.6666666666666666 
              else  # if Q95 > 3.5
                case when Q102 <= 6.5 then
                    0.42857142857142855 
                else  # if Q102 > 6.5
                  case when Q83.1 <= 6.5 then
                      0.0 
                  else  # if Q83.1 > 6.5
                      0.16666666666666666 
                  end                 end               end             else  # if Q71 > 10.5
                0.75 
            end           else  # if Q88 > 8.5
            case when Q84.1 <= 4.0 then
                0.0 
            else  # if Q84.1 > 4.0
              case when Q71.1 <= 6.5 then
                case when Q68 <= 2.5 then
                    0.0 
                else  # if Q68 > 2.5
                    0.3333333333333333 
                end               else  # if Q71.1 > 6.5
                case when Q101 <= 8.0 then
                    0.25 
                else  # if Q101 > 8.0
                  case when Q73 <= 10.5 then
                    case when Q81 <= 5.5 then
                        0.6666666666666666 
                    else  # if Q81 > 5.5
                        1.0 
                    end                   else  # if Q73 > 10.5
                    case when Q102 <= 10.0 then
                        1.0 
                    else  # if Q102 > 10.0
                        0.25 
                    end                   end                 end               end             end           end         end       else  # if Q70 > 9.5
        case when Q71 <= 8.5 then
          case when Q90 <= 9.5 then
              1.0 
          else  # if Q90 > 9.5
            case when Q67 <= 6.5 then
                1.0 
            else  # if Q67 > 6.5
              case when Q89 <= 7.5 then
                  0.0 
              else  # if Q89 > 7.5
                  0.6 
              end             end           end         else  # if Q71 > 8.5
          case when Q74 <= 10.5 then
              0.8571428571428571 
          else  # if Q74 > 10.5
              1.0 
          end         end       end     else  # if Q97.1 > 9.5
      case when Q82 <= 9.5 then
        case when Q70 <= 7.5 then
          case when Q89 <= 8.0 then
              0.0 
          else  # if Q89 > 8.0
              0.2 
          end         else  # if Q70 > 7.5
          case when Q91 <= 9.5 then
              1.0 
          else  # if Q91 > 9.5
            case when Q72 <= 9.5 then
                0.0 
            else  # if Q72 > 9.5
                1.0 
            end           end         end       else  # if Q82 > 9.5
        case when Q70 <= 7.5 then
            0.8 
        else  # if Q70 > 7.5
            1.0 
        end       end     end   else  # if Q98 > 9.5
    case when Q82 <= 6.5 then
      case when Q87 <= 10.5 then
          0.0 
      else  # if Q87 > 10.5
          1.0 
      end     else  # if Q82 > 6.5
      case when Q90 <= 8.5 then
        case when Q81 <= 7.5 then
            0.875 
        else  # if Q81 > 7.5
            0.0 
        end       else  # if Q90 > 8.5
        case when Q74 <= 9.5 then
          case when Q73 <= 9.5 then
              0.4 
          else  # if Q73 > 9.5
            case when Q81 <= 7.5 then
                1.0 
            else  # if Q81 > 7.5
                0.6 
            end           end         else  # if Q74 > 9.5
          case when Q84 <= 8.5 then
            case when Q101 <= 10.5 then
                0.6 
            else  # if Q101 > 10.5
                1.0 
            end           else  # if Q84 > 8.5
              1.0 
          end         end       end     end   end )