WITH player_cleaning AS (
SELECT 
Rk
,
TRANSLATE(
    player, 
    'ŠšžÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝŸàáâãäåçèéêëìíîïñòóôõöùúûüūÿČčĆćĐđýģņŞğāŽş', 
    'SszAAAAAACEEEEIIIINOOOOOUUUUYYaaaaaaceeeeiiiinooooouuuuuyCcCcDdygnSgaZs'
  ) AS player
,Team
,season24_25
,season25_26
,season26_27
,season27_28
,season28_29
,season29_30
,Guaranteed
FROM {{ ref('Salaries_NBA_players') }}
)

SELECT 
Rk
, CASE 
WHEN REGEXP_CONTAINS (player, "CanA?ar") THEN REPLACE(player, "CanA?ar", "Cancar")
WHEN REGEXP_CONTAINS (player, "DonA?ic") THEN REPLACE(player, "DonA?ic", "Doncic")
WHEN REGEXP_CONTAINS (player, "DA?vis BertA?ns") THEN REPLACE(player, "DA?vis BertA?ns", "Davis Bertans")
WHEN REGEXP_CONTAINS (player, "VuA?evic") THEN REPLACE(player, "VuA?evic", "Nikola Vucevic")
WHEN REGEXP_CONTAINS (player, ".") THEN REPLACE(player, '.', '')
WHEN REGEXP_CONTAINS (player, "'") THEN REPLACE(player, "'", " ") 
END AS player

,Team
,season24_25
,season25_26
,season26_27
,season27_28
,season28_29
,season29_30
,Guaranteed
FROM player_cleaning