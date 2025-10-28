DROP TABLE IF EXISTS T2019_KAR_BRIDGES;

CREATE TABLE T2019_KAR_BRIDGES AS
SELECT
    r.link_id,
    w.type,
    ST_Intersection(r.geom, w.geom) AS geom
FROM railways_2019 r
JOIN water_lines_2019 w
  ON ST_Intersects(r.geom, w.geom)
WHERE ST_Intersection(r.geom, w.geom) IS NOT NULL;

SELECT * FROM T2019_KAR_BRIDGES;