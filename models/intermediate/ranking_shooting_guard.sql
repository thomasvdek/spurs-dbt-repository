SELECT
season,
player,
pos,
tm,
SG_global_stats
,RANK() OVER (ORDER BY SG_global_stats DESC ) AS ranking_SG
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE pos LIKE 'SG'
ORDER BY SG_global_stats DESC