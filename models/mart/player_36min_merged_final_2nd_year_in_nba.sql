SELECT *
FROM {{ ref('player_36min_merged_final') }}
WHERE experience = 2
ORDER BY draft_number ASC