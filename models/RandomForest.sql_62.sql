create or replace function rf__62 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q89 <= 5.5 then
    case when Q96 <= 6.5 then
       return 0.1085899513776337 # (67.0 out of 617.0)
    else  # if Q96 > 6.5
       return 0.17647058823529413 # (15.0 out of 85.0)
    end   else  # if Q89 > 5.5
    case when Q71 <= 8.5 then
      case when Q83 <= 6.5 then
         return 0.3877551020408163 # (38.0 out of 98.0)
      else  # if Q83 > 6.5
        case when Q89 <= 8.5 then
           return 0.06474820143884892 # (9.0 out of 139.0)
        else  # if Q89 > 8.5
           return 0.174496644295302 # (26.0 out of 149.0)
        end       end     else  # if Q71 > 8.5
      case when Q71 <= 9.5 then
         return 0.5169491525423728 # (61.0 out of 118.0)
      else  # if Q71 > 9.5
        case when Q91 <= 10.5 then
           return 0.29545454545454547 # (26.0 out of 88.0)
        else  # if Q91 > 10.5
           return 0.4470588235294118 # (38.0 out of 85.0)
        end       end     end   end )