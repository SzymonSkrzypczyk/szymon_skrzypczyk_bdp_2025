SELECT PostGIS_Full_Version();

SELECT st_gdaldrivers(); -- puste

SELECT ST_AsTiff(ST_Union(rast))
FROM szymon_skrzypczyk.porto_ndvi;

SELECT ST_AsGDALRaster(ST_Union(rast), 'GTiff',  ARRAY['COMPRESS=DEFLATE',
    'PREDICTOR=2', 'PZLEVEL=9'])
FROM szymon_skrzypczyk.porto_ndvi;

-- a to jakos dzialalo
-- gdal_translate -co COMPRESS=DEFLATE -co PREDICTOR=2 -co ZLEVEL=9 PG:"host=localhost port=5432 dbname=zajecia_6 user=root password=root schema=szymon_skrzypczyk table=porto_ndvi mode=2" porto_ndvi.tiff
-- ciekawe