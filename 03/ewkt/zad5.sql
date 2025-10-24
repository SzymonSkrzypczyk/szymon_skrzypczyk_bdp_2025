-- u mnie wszystkie obiekty sa juz 
SELECT name, ST_GeometryType(geometry)
FROM obiekty;

-- obiekty testowe
INSERT INTO obiekty (name, geometry)
VALUES (
    'obiekt_test1',
        ST_GeomFromText(
            'COMPOUNDCURVE(
                (0 1, 1 1),
                CIRCULARSTRING(1 1, 2 0, 3 1),
                CIRCULARSTRING(3 1, 4 2, 5 1),
                (5 1, 6 1)
            )', 0
        )
);

INSERT INTO obiekty (name, geometry) 
VALUES (
    'obiekt_test2',
        ST_GeomFromText(
            'CURVEPOLYGON(
                COMPOUNDCURVE(
                    (10 6, 14 6),
                    CIRCULARSTRING(14 6, 16 4, 14 2),
                    CIRCULARSTRING(14 2, 12 0, 10 2),
                    (10 2, 10 6)
                ),
                CIRCULARSTRING(11 2, 12 3, 13 2, 12 1, 11 2)
            )',
            0
        )
);

SELECT 
    name,
    ST_Area(ST_Buffer(geometry, 5)) AS pole_bufora
FROM obiekty
WHERE ST_GeometryType(geometry) NOT IN ('ST_CurvePolygon','ST_CompoundCurve','ST_CircularString');