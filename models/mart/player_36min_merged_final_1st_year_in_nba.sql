{{ config( materialized='table')}}
SELECT *
FROM {{ ref('player_36min_merged_final') }}
WHERE experience = 1
ORDER BY draft_number ASC