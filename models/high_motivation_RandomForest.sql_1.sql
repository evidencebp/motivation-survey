create or replace function rf__1 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q82 <= 8.5 then
    case when Q97 <= 9.5 then
      case when Q75 <= 1.5 then
        case when Q93 <= 7.0 then
            1.0 
        else  # if Q93 > 7.0
          case when Q65_1 <= 9.0 then
              0.0 
          else  # if Q65_1 > 9.0
              0.75 
          end         end       else  # if Q75 > 1.5
        case when Is_Paid <= 0.5 then
          case when Q89 <= 8.5 then
            case when Q71.1 <= 9.5 then
                0.0 
            else  # if Q71.1 > 9.5
                0.16666666666666666 
            end           else  # if Q89 > 8.5
            case when Q81 <= 4.5 then
                0.5 
            else  # if Q81 > 4.5
                0.0 
            end           end         else  # if Is_Paid > 0.5
          case when Q70 <= 8.5 then
            case when Q85 <= 8.5 then
              case when Q85 <= 6.5 then
                  0.3333333333333333 
              else  # if Q85 > 6.5
                  0.0 
              end             else  # if Q85 > 8.5
                0.6 
            end           else  # if Q70 > 8.5
              1.0 
          end         end       end     else  # if Q97 > 9.5
      case when Q1 <= 1.5 then
        case when Q92 <= 9.5 then
            0.25 
        else  # if Q92 > 9.5
            1.0 
        end       else  # if Q1 > 1.5
        case when Q72 <= 8.5 then
            0.0 
        else  # if Q72 > 8.5
          case when Q71.1 <= 7.5 then
            case when Q84 <= 8.5 then
              case when Q70 <= 6.5 then
                  0.3333333333333333 
              else  # if Q70 > 6.5
                  0.0 
              end             else  # if Q84 > 8.5
                0.75 
            end           else  # if Q71.1 > 7.5
            case when Q95.1 <= 3.5 then
              case when Q93 <= 7.5 then
                case when Q99 <= 8.0 then
                    0.8 
                else  # if Q99 > 8.0
                    0.25 
                end               else  # if Q93 > 7.5
                case when Q102 <= 9.5 then
                    0.8 
                else  # if Q102 > 9.5
                    1.0 
                end               end             else  # if Q95.1 > 3.5
                0.2 
            end           end         end       end     end   else  # if Q82 > 8.5
    case when Q74 <= 7.5 then
      case when Q83 <= 8.5 then
        case when Q82 <= 10.0 then
            0.0 
        else  # if Q82 > 10.0
            0.2857142857142857 
        end       else  # if Q83 > 8.5
        case when Q93 <= 7.5 then
            1.0 
        else  # if Q93 > 7.5
          case when Q34 <= 5.5 then
              0.3333333333333333 
          else  # if Q34 > 5.5
              0.3333333333333333 
          end         end       end     else  # if Q74 > 7.5
      case when Q72 <= 8.5 then
        case when Q83.1 <= 1.0 then
            0.75 
        else  # if Q83.1 > 1.0
          case when Q87 <= 7.5 then
              1.0 
          else  # if Q87 > 7.5
            case when Q83 <= 5.5 then
                0.25 
            else  # if Q83 > 5.5
              case when Q96.1 <= 3.5 then
                  0.0 
              else  # if Q96.1 > 3.5
                  0.25 
              end             end           end         end       else  # if Q72 > 8.5
        case when Q84 <= 8.5 then
          case when Q99 <= 10.5 then
            case when Q98.1 <= 9.5 then
              case when Q82 <= 10.0 then
                case when Q98.1 <= 8.5 then
                    0.0 
                else  # if Q98.1 > 8.5
                    0.3333333333333333 
                end               else  # if Q82 > 10.0
                  0.6 
              end             else  # if Q98.1 > 9.5
                1.0 
            end           else  # if Q99 > 10.5
            case when Q82 <= 10.5 then
              case when Q83.1 <= 8.5 then
                case when Q75 <= 1.0 then
                    0.6666666666666666 
                else  # if Q75 > 1.0
                    0.0 
                end               else  # if Q83.1 > 8.5
                  1.0 
              end             else  # if Q82 > 10.5
              case when Is_Paid <= 0.5 then
                  1.0 
              else  # if Is_Paid > 0.5
                case when Q74 <= 10.5 then
                    0.3333333333333333 
                else  # if Q74 > 10.5
                    1.0 
                end               end             end           end         else  # if Q84 > 8.5
          case when Q96 <= 9.5 then
            case when Q95.1 <= 0.0 then
              case when Q101 <= 9.5 then
                  0.5 
              else  # if Q101 > 9.5
                  1.0 
              end             else  # if Q95.1 > 0.0
                1.0 
            end           else  # if Q96 > 9.5
            case when Q84.1 <= 6.5 then
                0.4 
            else  # if Q84.1 > 6.5
              case when Q90 <= 9.5 then
                  0.6666666666666666 
              else  # if Q90 > 9.5
                  1.0 
              end             end           end         end       end     end   end )