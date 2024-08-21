SELECT
season,
player,
pos,
tm,
C_global_stats
,RANK() OVER (ORDER BY C_global_stats DESC ) AS ranking_C
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE pos LIKE 'C%' OR pos LIKE '%C'
ORDER BY C_global_stats DESC