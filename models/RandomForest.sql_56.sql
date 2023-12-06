create or replace function rf__56 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q99 <= 2.0 then
     return 0.12035398230088495 # (68.0 out of 565.0)
  else  # if Q99 > 2.0
    case when Q93 <= 9.5 then
      case when Q99 <= 9.5 then
        case when Q98 <= 8.5 then
          case when Q88 <= 8.5 then
             return 0.2247191011235955 # (20.0 out of 89.0)
          else  # if Q88 > 8.5
             return 0.30303030303030304 # (30.0 out of 99.0)
          end         else  # if Q98 > 8.5
           return 0.3333333333333333 # (27.0 out of 81.0)
        end       else  # if Q99 > 9.5
        case when Q96 <= 8.5 then
           return 0.08904109589041095 # (13.0 out of 146.0)
        else  # if Q96 > 8.5
           return 0.2275449101796407 # (38.0 out of 167.0)
        end       end     else  # if Q93 > 9.5
      case when Q99 <= 10.5 then
         return 0.46551724137931033 # (54.0 out of 116.0)
      else  # if Q99 > 10.5
         return 0.29310344827586204 # (34.0 out of 116.0)
      end     end   end )