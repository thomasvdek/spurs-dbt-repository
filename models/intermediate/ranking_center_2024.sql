{{ config( materialized='table')}}
select
    season,
    player,
    pos,
    tm,
    c_global_stats,
    rank() over (order by c_global_stats desc) as ranking_c,
    fg_per_36_min,
    fga_per_36_min,
    fg_percent,
    x3p_per_36_min,
    x3p_percent,
    x2p_per_36_min,
    x2p_percent,
    ft_per_36_min,
    orb_per_36_min,
    drb_per_36_min,
    trb_per_36_min,
    ast_per_36_min,
    stl_per_36_min,
    blk_per_36_min,
    tov_per_36_min,
    pf_per_36_min,
    pts_per_36_min
from {{ ref("player_per_36_min_played_advanced_stats") }}
where (pos like 'C%' or pos like '%C') AND season = 2024 
order by c_global_stats desc
