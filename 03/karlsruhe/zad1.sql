DROP TABLE new_buildings;
CREATE TABLE new_buildings AS
SELECT b2019.*
FROM buildings_2019 b2019
LEFT JOIN buildings_2018 b2018
  ON ST_DWithin(b2019.geom, b2018.geom, 1)
WHERE b2018.gid IS NULL;

DROP TABLE changed_buildings;
CREATE TABLE changed_buildings AS
SELECT DISTINCT b2019.*
FROM buildings_2019 b2019
JOIN buildings_2018 b2018
  ON ST_Intersects(b2019.geom, b2018.geom)
WHERE ST_Area(ST_SymDifference(b2019.geom, b2018.geom)) > 5;


SELECT
  (SELECT COUNT(*) FROM new_buildings),
  (SELECT COUNT(*) FROM changed_buildings);