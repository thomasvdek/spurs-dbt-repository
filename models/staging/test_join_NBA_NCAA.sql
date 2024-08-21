SELECT*, 
FROM {{ ref('player_36min_merged') }}
INNER JOIN {{ ref('NCAA_stats') }}
USING (player)