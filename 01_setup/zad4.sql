-- kolejnosc tabel zachowana ;D
-- pracownicy
INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa, ul. Lipowa 3', '600123456'),
('Anna', 'Kowalska', 'Kraków, ul. Długa 12', '601234567'),
('Piotr', 'Wiśniewski', 'Gdańsk, ul. Morska 5', '602345678'),
('Joanna', 'Zielińska', 'Łódź, ul. Polna 7', '603456789'),
('Marek', 'Kamiński', 'Poznań, ul. Ogrodowa 2', '604567890'),
('Julia', 'Lewandowska', 'Katowice, ul. Parkowa 10', '605678901'),
('Jakub', 'Krawczyk', 'Wrocław, ul. Szkolna 8', '606789012'),
('Katarzyna', 'Wójcik', 'Szczecin, ul. Mickiewicza 11', '607890123'),
('Jacek', 'Mazur', 'Lublin, ul. Krótka 9', '608901234'),
('Paulina', 'Nowicka', 'Rzeszów, ul. Kwiatowa 4', '609012345');

-- Pensje
INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Kierownik', 5000),
('Księgowy', 3000),
('Asystent', 2000),
('Magazynier', 1800),
('Sprzedawca', 2500),
('Sekretarka', 2200),
('Programista', 6000),
('Grafik', 3500),
('Kurier', 1700),
('Technik', 2800);

-- Premie
INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Brak', NULL),
('Premia roczna', 1000),
('Premia uznaniowa', 500),
('Premia projektowa', 1500),
('Premia sprzedażowa', 800),
('Brak', NULL),
('Premia lojalnościowa', 700),
('Brak', NULL),
('Premia świąteczna', 1200),
('Premia kwartalna', 900);

-- Godziny
INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 170, 1),
('2025-10-01', 165, 2),
('2025-10-01', 155, 3),
('2025-10-01', 180, 4),
('2025-10-01', 162, 5),
('2025-10-01', 175, 6),
('2025-10-01', 159, 7),
('2025-10-01', 190, 8),
('2025-10-01', 150, 9),
('2025-10-01', 172, 10);

-- Wynagrodzenie
INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-10', 1, 1, 1, 2),
('2025-10-10', 2, 2, 2, 1),
('2025-10-10', 3, 3, 3, 6),
('2025-10-10', 4, 4, 4, 3),
('2025-10-10', 5, 5, 5, 4),
('2025-10-10', 6, 6, 6, 5),
('2025-10-10', 7, 7, 7, 8),
('2025-10-10', 8, 8, 8, 7),
('2025-10-10', 9, 9, 9, 9),
('2025-10-10', 10, 10, 10, 10);