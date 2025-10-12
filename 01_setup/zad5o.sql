-- premia 0 PLN sie nie liczy
SELECT 
    s.stanowisko, 
    COUNT(CASE WHEN pr.kwota > 0 THEN pr.id_premii END) AS liczba_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY s.stanowisko;
