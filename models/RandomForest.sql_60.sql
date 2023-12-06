create or replace function rf__60 (Q1 int64, Q71 int64, Q83 int64, Q84 int64, Q85 int64, Q87 int64, Q88 int64, Q89 int64, Q90 int64, Q91 int64, Q92 int64, Q93 int64, Q94 int64, Q95 int64, Q96 int64, Q97 int64, Q98 int64, Q99 int64) as (
  case when Q98 <= 9.5 then
    case when Q92 <= 6.5 then
       return 0.09342560553633218 # (54.0 out of 578.0)
    else  # if Q92 > 6.5
      case when Q89 <= 8.5 then
        case when Q71 <= 8.5 then
          case when Q94 <= 6.5 then
             return 0.1590909090909091 # (14.0 out of 88.0)
          else  # if Q94 > 6.5
             return 0.016 # (2.0 out of 125.0)
          end         else  # if Q71 > 8.5
           return 0.23157894736842105 # (22.0 out of 95.0)
        end       else  # if Q89 > 8.5
        case when Q96 <= 7.5 then
           return 0.38064516129032255 # (59.0 out of 155.0)
        else  # if Q96 > 7.5
          case when Q71 <= 7.5 then
             return 0.2839506172839506 # (23.0 out of 81.0)
          else  # if Q71 > 7.5
             return 0.2 # (21.0 out of 105.0)
          end         end       end     end   else  # if Q98 > 9.5
     return 0.4407894736842105 # (67.0 out of 152.0)
  end )