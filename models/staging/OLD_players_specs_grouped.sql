select 
    REPLACE(player, '.', '') AS player,
    player_height,
    player_weight
from `weighty-flux-428109-e5.Spurs_project.players_specs_grouped`