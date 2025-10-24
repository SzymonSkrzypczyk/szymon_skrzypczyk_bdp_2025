# Zadanie 1 

## Kroki
1) odpalenie kontenera `docker exec -it zajecia_02 bash `
2) pobranie potrzebnej biblioteki `apt-get update && apt-get install -y postgis`
3) `shp2pgsql -I data/03/karlsruhe/data/2018/T2018_KAR_BUILDINGS.shp buildings_2018 | psql -U root -d root`
4) `shp2pgsql -I data/03/karlsruhe/data/2019/T2019_KAR_BUILDINGS.shp buildings_2019 | psql -U root -d root`