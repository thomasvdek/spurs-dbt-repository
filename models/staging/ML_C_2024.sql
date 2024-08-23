SELECT 
player,
AVG(fg_per_36_min) as fg_per_36_min_2024, 
AVG(fga_per_36_min) as fga_per_36_min_2024, 
AVG(fg_percent) as fg_percent_2024, 
AVG(x3p_per_36_min) as x3p_per_36_min_2024, 
AVG(x3p_percent) as x3p_percent_2024, 
AVG(x2p_percent) as x2p_percent_2024, 
AVG(ft_per_36_min) as ft_per_36_min_2024, 
AVG(orb_per_36_min) as orb_per_36_min_2024, 
AVG(drb_per_36_min) as drb_per_36_min_2024,
AVG(trb_per_36_min) as trb_per_36_min_2024,
AVG(ast_per_36_min) as ast_per_36_min_2024,
AVG(stl_per_36_min) as stl_per_36_min_2024,
AVG(blk_per_36_min) as blk_per_36_min_2024,
AVG(tov_per_36_min) as tov_per_36_min_2024,
AVG(pf_per_36_min) as pf_per_36_min_2024,
AVG(pts_per_36_min) as pts_per_36_min_2024,
AVG(C_global_stats) as C_global_stats_2024
FROM {{ ref('player_36min_merged_final') }}
WHERE pos LIKE "%C%" AND season = 2024
GROUP BY player