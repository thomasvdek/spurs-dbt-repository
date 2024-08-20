SELECT
season,
player,
pos,
tm,
PG_global_stats
,RANK() OVER (ORDER BY PG_global_stats DESC ) AS ranking_PG
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE pos LIKE 'PG%' OR pos LIKE '%PG'
ORDER BY PG_global_stats DESC
