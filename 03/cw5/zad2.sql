-- 2 parametr(radius_of_buffer), znaczaco zmienia wartosc pola!
-- obserwacja sprzed doczytania polecenia ;D
SELECT ST_Area(
    ST_Buffer(
        ST_ShortestLine(obiekt3.geometry, obiekt4.geometry), 5
    )
) 
FROM obiekty obiekt3
JOIN obiekty obiekt4 ON obiekt3.name = 'obiekt3' and obiekt4.name = 'obiekt4';