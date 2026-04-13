DROP DATABASE Pracownicy;
CREATE DATABASE Pracownicy;
USE Pracownicy;

CREATE TABLE Pracownicy (
ID INTEGER PRIMARY KEY,
Imie VARCHAR(50) NOT NULL,
Nazwisko VARCHAR(50) NOT NULL,
Wiek INTEGER NOT NULL,
Kurs VARCHAR (100) NOT NULL

);

USE Pracownicy;
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs)
VALUES
(1, 'Anna',	'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

SELECT * FROM Pracownicy
WHERE Wiek > 30;

SELECT * FROM Pracownicy
WHERE Wiek < 30;

SELECT * 
FROM Pracownicy
WHERE nazwisko LIKE 'K%ki';

ALTER TABLE Pracownicy
RENAME COLUMN ID TO NR;

SELECT * FROM Pracownicy
WHERE Imie IS NULL
OR Nazwisko IS NULL
OR Wiek IS NULL
OR Kurs IS NULL;

SELECT * FROM Pracownicy
WHERE Kurs = 'Java';

ALTER TABLE Pracownicy
RENAME COLUMN NR TO ID;

SELECT * FROM Pracownicy
WHERE Wiek = 28;

SELECT * FROM Pracownicy
WHERE Wiek <= 30;

SELECT * FROM Pracownicy
WHERE Nazwisko = '%ski';

SELECT * FROM Pracownicy
WHERE ID IN (1, 4, 7, 18, 20);

SELECT * FROM Pracownicy
WHERE Imie IS NOT NULL
  AND Nazwisko IS NOT NULL
  AND Wiek IS NOT NULL
  AND Kurs IS NOT NULL;
  
  SELECT * FROM Pracownicy
  WHERE Kurs <> 'DS.';
  



