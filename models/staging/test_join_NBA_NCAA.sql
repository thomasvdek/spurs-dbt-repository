SELECT*, 
FROM {{ ref('player_36min_merged_final') }}
INNER JOIN {{ ref('NCAA_stats') }}
USING (player)