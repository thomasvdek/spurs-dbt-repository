{{ config( materialized='table')}}
SELECT
season,
player,
pos,
tm,
SF_global_stats
,RANK() OVER (ORDER BY SF_global_stats DESC ) AS ranking_SF
,fg_per_36_min
,fga_per_36_min
,fg_percent
,x3p_per_36_min
,x3p_percent
,x2p_per_36_min
,x2p_percent
,ft_per_36_min
,orb_per_36_min
,drb_per_36_min
,trb_per_36_min
,ast_per_36_min
,stl_per_36_min
,blk_per_36_min
,tov_per_36_min
,pf_per_36_min
,pts_per_36_min
FROM {{ ref('player_per_36_min_played_advanced_stats') }}
WHERE (pos LIKE 'SF%' OR pos LIKE '%SF') AND season=2024
ORDER BY SF_global_stats DESC