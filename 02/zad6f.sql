SELECT DISTINCT ST_Area(
    -- pole(budynek - czesc <= 0.5 od budynku)
    ST_Difference(
        b_1.geometry, ST_Buffer(b_2.geometry, 0.5)
    )
) FROM buildings b_1, buildings b_2
WHERE b_1.name = 'BuildingC' AND b_2.name = 'BuildingB';