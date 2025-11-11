WITH t AS (
    SELECT st_summarystats(ST_Union(a.rast)) AS stats
    FROM szymon_skrzypczyk.paranhos_dem AS a
)
SELECT (stats).min,(stats).max,(stats).mean FROM t;