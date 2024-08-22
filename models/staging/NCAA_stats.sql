With ranking_tab as (
SELECT *,
RANK () OVER (PARTITION BY player ORDER BY yr DESC) as ranking
FROM `weighty-flux-428109-e5.Spurs_project.NCAA` 
) 

SELECT *
FROM ranking_tab
WHERE ranking = 1