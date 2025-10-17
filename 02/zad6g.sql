SELECT DISTINCT buildings.name
FROM buildings, roads
WHERE roads.name = 'RoadX' AND ST_Y(ST_Centroid(buildings.geometry)) > ST_Y(ST_StartPoint(roads.geometry));