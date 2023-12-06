create or replace function rf__40 (Challenge int64, Community int64, Hostility int64, Ideology int64, Importance int64, Joy int64, Learning int64, Motivation int64, Ownership int64, Payment int64, Recognition int64, Self-use int64) as (
  case when Learning <= 0.5 then
      0.0 
  else  # if Learning > 0.5
      0.5334928229665071 
  end )