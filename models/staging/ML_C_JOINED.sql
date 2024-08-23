SELECT *
FROM {{ ref('ML_C_2023') }}
INNER JOIN {{ ref('ML_C_2024') }}
USING(player)