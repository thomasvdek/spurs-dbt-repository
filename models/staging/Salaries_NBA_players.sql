SELECT 
sal.Rank AS Rk
,Player
,Team
,sal.2024_25 AS season24_25
,sal.2025_26 AS season25_26
,sal.2026_27 AS season26_27
,sal.2027_28 AS season27_28
,sal.2028_29 AS season28_29
,sal.2029_30 AS season29_30
,Guaranteed
FROM  `weighty-flux-428109-e5.Spurs_project.Salaries_NBA_players` AS sal