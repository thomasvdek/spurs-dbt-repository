{{ config( materialized='table')}}

WITH 
merged_with_all_players
AS (

FROM {{ ref('trade_comp') }}
JOIN 
)
,
calcul_ratio 

)
AS (
SELECT *,
MAX(fg_per_36_min) OVER () AS max_fg_per_36_min
,MAX(x3p_per_36_min) OVER () AS max_x3p_per_36_min
,MAX(x3p_percent) OVER () AS max_x3p_percent
,MAX(ft_per_36_min) OVER () AS max_ft_per_36_min
,MAX(orb_per_36_min) OVER () AS max_orb_per_36_min
,MAX(drb_per_36_min) OVER () AS max_drb_per_36_min
,MAX(trb_per_36_min) OVER () AS max_trb_per_36_min
,MAX(ast_per_36_min) OVER () AS max_ast_per_36_min
,MAX(stl_per_36_min) OVER () AS max_stl_per_36_min
,MAX(blk_per_36_min) OVER () AS max_blk_per_36_min
,MAX(tov_per_36_min) OVER () AS max_tov_per_36_min
,MAX(pf_per_36_min) OVER () AS max_pf_per_36_min
,MAX(pts_per_36_min) OVER () AS max_pts_per_36_min


FROM {{ ref('trade_comp') }}
),
ranking_global_score 
AS(
SELECT *,
ROUND(SAFE_DIVIDE(fg_per_36_min,max_fg_per_36_min),2) as fg_per_36_min_ratio
,ROUND(SAFE_DIVIDE(x3p_per_36_min,max_x3p_per_36_min),2) as x3p_per_36_min_ratio
,ROUND(SAFE_DIVIDE(x3p_percent,max_x3p_percent),2) as x3p_percent_ratio
,ROUND(SAFE_DIVIDE(ft_per_36_min,max_ft_per_36_min),2) as ft_per_36_min_ratio
,ROUND(SAFE_DIVIDE(orb_per_36_min,max_orb_per_36_min),2) as orb_per_36_min_ratio
,ROUND(SAFE_DIVIDE(drb_per_36_min,max_drb_per_36_min),2) as drb_per_36_min_ratio
,ROUND(SAFE_DIVIDE(trb_per_36_min,max_trb_per_36_min),2) as trb_per_36_min_ratio
,ROUND(SAFE_DIVIDE(ast_per_36_min,max_ast_per_36_min),2) as ast_per_36_min_ratio
,ROUND(SAFE_DIVIDE(stl_per_36_min,max_stl_per_36_min),2) as stl_per_36_min_ratio
,ROUND(SAFE_DIVIDE(blk_per_36_min,max_blk_per_36_min),2) as blk_per_36_min_ratio
,ROUND(SAFE_DIVIDE(tov_per_36_min,max_tov_per_36_min),2) as tov_per_36_min_ratio
,ROUND(SAFE_DIVIDE(pf_per_36_min,max_pf_per_36_min),2) as pf_per_36_min_ratio
,ROUND(SAFE_DIVIDE(pts_per_36_min,max_pts_per_36_min),2) as pts_per_36_min_ratio

FROM calcul_ratio)

SELECT 
player
,season
,fg_per_36_min
,fga_per_36_min
,fg_percent
,x3p_per_36_min
,x3p_percent
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
,fg_per_36_min_ratio
,x3p_per_36_min_ratio
,x3p_percent_ratio
,ft_per_36_min_ratio
,orb_per_36_min_ratio
,drb_per_36_min_ratio
,trb_per_36_min_ratio
,ast_per_36_min_ratio
,stl_per_36_min_ratio
,blk_per_36_min_ratio
,tov_per_36_min_ratio
,pf_per_36_min_ratio
,pts_per_36_min_ratio

FROM ranking_global_score