ALTER TABLE input_points
ALTER COLUMN geom TYPE geometry(Point, 25832)
USING ST_SetSRID(geom, 25832);