create or replace function rf__95 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q71.1 <= 4.5 then
    case when Q89 <= 6.5 then
        0.0 
    else  # if Q89 > 6.5
      case when Q91 <= 10.5 then
        case when Q1 <= 4.5 then
            0.0379746835443038 
        else  # if Q1 > 4.5
            0.0 
        end       else  # if Q91 > 10.5
          0.059322033898305086 
      end     end   else  # if Q71.1 > 4.5
    case when Q101 <= 9.5 then
      case when Q97.1 <= 7.5 then
          0.2719298245614035 
      else  # if Q97.1 > 7.5
          0.5217391304347826 
      end     else  # if Q101 > 9.5
      case when Q84.1 <= 7.5 then
          0.6055045871559633 
      else  # if Q84.1 > 7.5
          0.8235294117647058 
      end     end   end )