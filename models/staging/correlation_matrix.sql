{{ config( materialized='table')}}

SELECT *
FROM {{ ref('player_36min_merged_final') }}
WHERE season = 2024