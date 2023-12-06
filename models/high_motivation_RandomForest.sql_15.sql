create or replace function rf__15 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q78 <= 3.5 then
    case when Q83 <= 8.5 then
      case when Q91 <= 9.5 then
          0.0 
      else  # if Q91 > 9.5
          0.011764705882352941 
      end     else  # if Q83 > 8.5
      case when Q95 <= 7.5 then
        case when Q1 <= 4.5 then
            0.0 
        else  # if Q1 > 4.5
            0.01282051282051282 
        end       else  # if Q95 > 7.5
          0.10227272727272728 
      end     end   else  # if Q78 > 3.5
    case when Q71.1 <= 9.5 then
      case when Q82 <= 7.5 then
          0.32558139534883723 
      else  # if Q82 > 7.5
        case when Q70 <= 8.5 then
            0.39325842696629215 
        else  # if Q70 > 8.5
            0.6931818181818182 
        end       end     else  # if Q71.1 > 9.5
        0.7291666666666666 
    end   end )