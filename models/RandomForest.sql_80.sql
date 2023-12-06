create or replace function rf__80 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q88 <= 7.5 then
    case when Q71 <= 7.5 then
      case when Q84 <= 2.0 then
         return 0.11235955056179775 # (60.0 out of 534.0)
      else  # if Q84 > 2.0
         return 0.055944055944055944 # (8.0 out of 143.0)
      end     else  # if Q71 > 7.5
       return 0.20192307692307693 # (21.0 out of 104.0)
    end   else  # if Q88 > 7.5
    case when Q89 <= 8.5 then
      case when Q91 <= 9.5 then
         return 0.12598425196850394 # (16.0 out of 127.0)
      else  # if Q91 > 9.5
         return 0.2897196261682243 # (31.0 out of 107.0)
      end     else  # if Q89 > 8.5
      case when Q88 <= 9.5 then
        case when Q91 <= 10.5 then
           return 0.3089430894308943 # (38.0 out of 123.0)
        else  # if Q91 > 10.5
           return 0.46218487394957986 # (55.0 out of 119.0)
        end       else  # if Q88 > 9.5
         return 0.22950819672131148 # (28.0 out of 122.0)
      end     end   end )