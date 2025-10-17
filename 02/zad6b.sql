SELECT ST_AsText(geometry), ST_Area(geometry), ST_Perimeter(geometry) 
FROM buildings
WHERE name LIKE 'BuildingA';