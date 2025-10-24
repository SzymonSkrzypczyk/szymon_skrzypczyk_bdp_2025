-- polygon musi byc zamkniety!
-- oraz nie moze przecinac sie w srodku
UPDATE obiekty
SET geometry = ST_GeomFromText(
    'POLYGON((20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5, 20 20))',
    0
)
WHERE name = 'obiekt4';

-- smiga
SELECT ST_GeometryType(obiekty.geometry)
FROM obiekty
WHERE obiekty.name = 'obiekt4';