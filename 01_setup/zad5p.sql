DELETE FROM ksiegowosc.pracownicy p
USING ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
WHERE p.id_pracownika = w.id_pracownika
  AND s.kwota < 1200;