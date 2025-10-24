SELECT 
    p.type,
    COUNT(*) AS poi_count
FROM poi_2019 p
JOIN modified_buildings b
    ON ST_DWithin(p.geom, b.geom, 500)
GROUP BY p.type
ORDER BY poi_count DESC;