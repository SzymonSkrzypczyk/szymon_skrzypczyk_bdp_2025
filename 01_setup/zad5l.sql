SELECT ROUND(AVG(s.kwota), 2) AS srednia,
       MIN(s.kwota) AS minimalna,
       MAX(s.kwota) AS maksymalna
FROM ksiegowosc.pensja s
WHERE s.stanowisko = 'Kierownik';
-- tylko jedno takie pole ;(