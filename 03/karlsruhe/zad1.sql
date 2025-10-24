-- nowa tabela sie przyda do kolejnego zadania
CREATE TABLE IF NOT EXISTS modified_buildings AS 
SELECT 
    b2019.polygon_id,
    b2019.name,
    b2019.geom,
    CASE
        WHEN b2018.polygon_id IS NULL THEN 'nowy' 
        WHEN ST_Area(ST_SymDifference(b2019.geom, b2018.geom)) > 1 THEN 'zmieniony'  --powierzchnia sie rozni
    END AS status
FROM buildings_2019 b2019
LEFT JOIN buildings_2018 b2018
    ON b2019.polygon_id = b2018.polygon_id
WHERE b2018.polygon_id IS NULL 
   OR ST_Area(ST_SymDifference(b2019.geom, b2018.geom)) > 5;