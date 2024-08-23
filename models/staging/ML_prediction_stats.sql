{{ config( materialized='table')}}

SELECT 
player,
season, 
AVG(fg_per_36_min) as fg_per_36_min, 
AVG(fga_per_36_min) as fga_per_36_min, 
AVG(fg_percent) as fg_percent, 
AVG(x3p_per_36_min) as x3p_per_36_min, 
AVG(x3p_percent) as x3p_percent, 
AVG(x2p_percent) as x2p_percent, 
AVG(ft_per_36_min) as ft_per_36_min, 
AVG(orb_per_36_min) as orb_per_36_min, 
AVG(drb_per_36_min) as drb_per_36_min,
AVG(trb_per_36_min) as trb_per_36_min,
AVG(ast_per_36_min) as ast_per_36_min,
AVG(stl_per_36_min) as stl_per_36_min,
AVG(blk_per_36_min) as blk_per_36_min,
AVG(tov_per_36_min) as tov_per_36_min,
AVG(pf_per_36_min) as pf_per_36_min,
AVG(pts_per_36_min) as pts_per_36_min,
AVG(C_global_stats) as C_global_stats, 
AVG(PG_global_stats) as PG_global_stats,
AVG(SG_global_stats) as SG_global_stats,
AVG(SF_global_stats) as SF_global_stats,
AVG(PF_global_stats) as PF_global_stats,
FROM {{ ref('player_36min_merged_final') }}
GROUP BY player, season