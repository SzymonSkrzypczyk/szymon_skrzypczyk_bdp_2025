CREATE TABLE szymon_skrzypczyk.paranhos_slope AS
SELECT a.rid,ST_Slope(a.rast,1,'32BF','PERCENTAGE') as rast
FROM szymon_skrzypczyk.paranhos_dem AS a;