-- table: userid, game-title, behavior-name, value
-- result: userid, tt_gcnt, purchase_gcnt, play_gcnt, play_total_hours, play_avg_hours


select a.userid, a.tt_gcnt, a.purchase_gcnt, a.play_gcnt, a.play_total_hours
, a.play_total_hours/a.tt_gcnt as play_avg_hours
from
(
select userid
, count(distinct game-title) as tt_gcnt
, count(distinct if(behavior-name = 'purchase', game-title, null)) as purchase_gcnt
, count(distinct if(behavior-name = 'play', game-title, null)) as play_gcnt
, sum(if(behavior-name = 'play', value, 0)) as play_total_hours
from df
group by userid
) a





























































