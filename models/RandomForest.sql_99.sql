create or replace function rf__99 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q95 <= 1.5 then
    case when Q89 <= 7.5 then
       return 0.09090909090909091 # (58.0 out of 638.0)
    else  # if Q89 > 7.5
       return 0.1414141414141414 # (14.0 out of 99.0)
    end   else  # if Q95 > 1.5
    case when Q71 <= 8.5 then
      case when Q87 <= 9.5 then
        case when Q94 <= 6.5 then
           return 0.2376237623762376 # (24.0 out of 101.0)
        else  # if Q94 > 6.5
           return 0.13725490196078433 # (21.0 out of 153.0)
        end       else  # if Q87 > 9.5
         return 0.2916666666666667 # (28.0 out of 96.0)
      end     else  # if Q71 > 8.5
      case when Q93 <= 9.5 then
        case when Q93 <= 7.5 then
           return 0.22340425531914893 # (21.0 out of 94.0)
        else  # if Q93 > 7.5
           return 0.3523809523809524 # (37.0 out of 105.0)
        end       else  # if Q93 > 9.5
         return 0.5591397849462365 # (52.0 out of 93.0)
      end     end   end )