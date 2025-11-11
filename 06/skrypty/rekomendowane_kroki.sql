--- 1
alter table szymon_skrzypczyk.intersects
add column rid SERIAL PRIMARY KEY;
--- 2
CREATE INDEX idx_intersects_rast_gist ON szymon_skrzypczyk.intersects
USING gist (ST_ConvexHull(rast));
--- 3
SELECT AddRasterConstraints('szymon_skrzypczyk'::name,
                            'intersects'::name,'rast'::name);