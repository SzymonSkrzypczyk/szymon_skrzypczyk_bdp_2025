WITH line_transformed AS (
    SELECT ST_Transform(ST_Multi(ST_MakeLine(geom ORDER BY id)), 31466) AS geom_line
    FROM input_points
)
SELECT street.*
FROM streets_2019 street
JOIN line_transformed line
  ON ST_DWithin(ST_Transform(ST_Multi(street.geom), 31466), line.geom_line, 200);