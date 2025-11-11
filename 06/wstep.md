## Baza danych z backupu
```
psql -U root -c "CREATE ROLE postgres LOGIN SUPERUSER PASSWORD 'postgres';"
```

```
pg_restore -U root -d zajecia_6 -1 06/postgis_raster.backup
```

## Ladowanie danych
```
apt-get update
```

```
apt-get install -y postgis postgresql-16-postgis-3
```

Inaczej nie dziala lol
```bash
psql -U root -d zajecia_6 -c "CREATE EXTENSION IF NOT EXISTS postgis;"
psql -U root -d zajecia_6 -c "CREATE EXTENSION IF NOT EXISTS postgis_raster;"
```

## Eskport danych
```bash
apt-get update
apt-get install -y gdal-bin libgdal-dev
```
