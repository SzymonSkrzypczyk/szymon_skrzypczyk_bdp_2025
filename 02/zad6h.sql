-- potezne CTE
WITH poly AS (
    SELECT ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))') AS geometry
)
SELECT DISTINCT
    ST_Area(ST_Difference(buildings.geometry, poly.geometry)) + ST_Area(ST_Difference(poly.geometry, buildings.geometry))
FROM buildings, poly
WHERE buildings.name = 'BuildingC';
