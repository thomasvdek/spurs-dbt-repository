SELECT
season,
player,
pos,
tm,
PF_global_stats
,RANK() OVER (ORDER BY PF_global_stats DESC ) AS ranking_PF
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE pos LIKE 'PF%' OR pos LIKE '%PF'
ORDER BY PF_global_stats DESC