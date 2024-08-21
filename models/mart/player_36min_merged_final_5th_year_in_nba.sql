SELECT *
FROM {{ ref('player_36min_merged_final') }}
WHERE experience = 5
ORDER BY draft_number ASC