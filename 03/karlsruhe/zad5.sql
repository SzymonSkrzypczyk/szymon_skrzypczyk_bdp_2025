ALTER TABLE input_points
ALTER COLUMN geom TYPE geometry(Point, 31466)
USING ST_SetSRID(geom, 31466);