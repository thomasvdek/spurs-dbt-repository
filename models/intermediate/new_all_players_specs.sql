SELECT 
    REPLACE(player, '.', '') AS player,
    AVG(player_height) AS player_height,
    AVG(player_weight) AS player_weight, 
    AVG(draft_year) AS draft_year,
    AVG(draft_round) AS draft_round, 
    AVG(draft_number) AS draft_number
FROM `weighty-flux-428109-e5.Spurs_project.all_players_specs`
GROUP by player 