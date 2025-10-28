SELECT COUNT(*)
FROM poi_2019
JOIN land_use_a_2019
  ON ST_DWithin(poi_2019.geom, land_use_a_2019.geom, 300)
WHERE poi_2019.type = 'Sporting Goods Store'
  AND land_use_a_2019.type = 'Park';