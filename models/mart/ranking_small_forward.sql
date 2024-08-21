SELECT
season,
player,
pos,
tm,
SF_global_stats
,RANK() OVER (ORDER BY SF_global_stats DESC ) AS ranking_SF
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE pos LIKE 'SF%' OR pos LIKE '%SF'
ORDER BY SF_global_stats DESC