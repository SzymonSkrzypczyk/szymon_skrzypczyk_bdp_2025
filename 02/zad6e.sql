-- na duplikaty
SELECT DISTINCT ST_Distance(buildings.geometry, poi.geometry) FROM buildings, poi
WHERE buildings.name = 'BuildingC' AND poi.name = 'K';