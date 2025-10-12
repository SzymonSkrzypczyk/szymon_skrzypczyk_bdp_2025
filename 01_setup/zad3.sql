-- 1 tabela
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
);
COMMENT ON TABLE ksiegowosc.pracownicy IS 'dane pracowników';

-- 2 tabela
CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin DECIMAL(5,2) NOT NULL,
    id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

COMMENT ON TABLE ksiegowosc.godziny IS 'przepracowane pracowników';

-- 3 tabela
CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50) NOT NULL,
    kwota DECIMAL(10,2) NOT NULL
);

COMMENT ON TABLE ksiegowosc.pensja IS 'pensja dla danego stanowiska';

-- 4 tabela
CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota DECIMAL(10,2)
);

COMMENT ON TABLE ksiegowosc.premia IS 'informacje o premiach';

-- 5 tabela
CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT NOT NULL REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'wynagrodzenie pracownikow';