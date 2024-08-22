{{ config( materialized='table')}}

SELECT
Player
,season
,pos
,tm
,experience
,fg_per_36_min
,fga_per_36_min
,fg_percent
,x3p_per_36_min
,x3p_percent
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
,PG_global_stats
,SG_global_stats
,SF_global_stats
,PF_global_stats
,C_global_stats
,CAST(ROUND(player_height,0) AS INT64) AS player_height
,CAST(ROUND(player_weight,0) AS INT64) AS player_weight
,CAST(draft_year AS INT64) AS draft_year
,CAST(draft_round AS INT64) AS draft_round
,CAST(draft_number AS INT64) AS draft_number
,season24_25
,season25_26
,season26_27
,season27_28
,season28_29
,season29_30
FROM {{ ref('player_36min_merged') }} AS p36m
LEFT JOIN {{ ref('Salaries_NBA_players_cleaned') }} AS salaries
USING(Player)
