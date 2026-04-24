DROP DATABASE Moje_zainteresowania;
CREATE DATABASE Moje_zainteresowania;
USE Moje_zainteresowania;

CREATE TABLE Zainteresowania (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Nazwa VARCHAR(50) UNIQUE NOT NULL,
Opis VARCHAR(200) UNIQUE NOT NULL,
Data_realizacji DATE
);

INSERT INTO Zainteresowania (Nazwa, Opis)
VALUES
('Sport', 'Zajęcia na siłowni'),
('Sztuka', 'Rysowanie i malowanie'),
('Podróże', 'Zwiedzanie i odkrywanie nowych miejsc'),
('Języki', 'Nauka języków obcych'),
('Literatura', 'Czytanie książek i słuchanie audiobooków');

SELECT * FROM Zainteresowania;

INSERT INTO Zainteresowania (ID, Nazwa, Opis, Data_realizacji)
VALUES (6, 'Muzyka', 'Słuchanie muzyki', '2026-04-04');

UPDATE Zainteresowania
SET Data_realizacji = '2026-01-10'
WHERE ID = 4;

SELECT * FROM Zainteresowania;

DELETE FROM Zainteresowania
WHERE Nazwa IS NULL
OR Opis IS NULL
OR Data_realizacji IS NULL;

SELECT * FROM Zainteresowania;



