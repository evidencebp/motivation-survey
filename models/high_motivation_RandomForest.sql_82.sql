create or replace function rf__82 (Is_Paid int64, Q1 int64, Q101 int64, Q102 int64, Q34 int64, Q61_1 int64, Q65_1 int64, Q67 int64, Q68 int64, Q69 int64, Q70 int64, Q71 int64, Q71.1 int64, Q72 int64, Q73 int64, Q74 int64, Q75 int64, Q76 int64, Q77 int64, Q78 int64, Q79 int64, Q81 int64, Q82 int64, Q83 int64, Q83.1 int64, Q84 int64, Q84.1 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q95.1 int64, Q96 int64, Q96.1 int64, Q97 int64, Q97.1 int64, Q98 int64, Q98.1 int64, Q99 int64) as (
  case when Q101 <= 8.5 then
    case when Q67 <= 5.5 then
      case when Q88 <= 6.5 then
          0.0 
      else  # if Q88 > 6.5
        case when Q89 <= 8.5 then
            0.007246376811594203 
        else  # if Q89 > 8.5
            0.0 
        end       end     else  # if Q67 > 5.5
        0.3026315789473684 
    end   else  # if Q101 > 8.5
    case when Q83.1 <= 6.5 then
      case when Q89 <= 8.5 then
          0.3793103448275862 
      else  # if Q89 > 8.5
          0.7454545454545455 
      end     else  # if Q83.1 > 6.5
        0.8631578947368421 
    end   end )