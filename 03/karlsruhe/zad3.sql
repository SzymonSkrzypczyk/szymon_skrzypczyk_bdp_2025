DROP TABLE IF EXISTS streets_reprojected;

--inaczej ERROR:  ST_Transform: Input geometry has unknown (0) SRID
ALTER TABLE streets_2019
ALTER COLUMN geom TYPE geometry(MultiLineString, 25832)
USING ST_SetSRID(geom, 25832);

CREATE TABLE streets_reprojected AS
SELECT
    *,
    ST_Transform(geom, 31466) AS geom_transformed
FROM streets_2019;