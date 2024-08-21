SELECT *
FROM {{ ref('test_per_36_min_played_advanced_stats') }} as a
LEFT JOIN {{ ref('new_all_players_specs') }} as b 
USING (Player)

#0 = Undrafted 