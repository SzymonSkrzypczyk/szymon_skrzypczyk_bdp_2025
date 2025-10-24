## Kroki
1) odpalenie kontenera `docker exec -it zajecia_02 bash `
2) pobranie potrzebnej biblioteki `apt-get update && apt-get install -y postgis`
3) `shp2pgsql -I data/03/karlsruhe/data/2018/T2018_KAR_BUILDINGS.shp buildings_2018 | psql -U root -d root`
4) `shp2pgsql -I data/03/karlsruhe/data/2019/T2019_KAR_BUILDINGS.shp buildings_2019 | psql -U root -d root`
5) `shp2pgsql -I data/03/karlsruhe/data/2018/T2018_KAR_POI_TABLE.shp poi_2018 | psql -U root -d root`
6) `shp2pgsql -I data/03/karlsruhe/data/2019/T2019_KAR_POI_TABLE.shp poi_2019 | psql -U root -d root`
7) `shp2pgsql -I data/03/karlsruhe/data/2019/T2019_KAR_STREETS.shp streets_2019 | psql -U root -d root`