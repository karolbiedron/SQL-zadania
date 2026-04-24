DROP DATABASE Pracownicy;
CREATE DATABASE Pracownicy;
USE Pracownicy;

CREATE TABLE Pracownicy (
ID INTEGER PRIMARY KEY,
Imie VARCHAR(50) NOT NULL,
Nazwisko VARCHAR(50) NOT NULL,
Stanowisko VARCHAR(50) NOT NULL,
Dzial VARCHAR(50) NOT NULL
);

USE Pracownicy;
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial)
VALUES
(1, 'Kamil', 'Kowalski', 'Data Scientist', 'IT'),
(2, 'Magdalena', 'Nowak', 'Rekruter', 'HR'),
(3, 'Wojciech', 'Gwarek', 'Java Developer', 'IT'),
(4, 'Anna', 'Drozd', 'Marketing specialist', 'Marketing'),
(5, 'Gabriel', 'Florek', 'Koordynator rekrutacji', 'HR'),
(6, 'Stefan', 'Małecki', 'Compliance specialist', 'Compliance');

SELECT * FROM Pracownicy;

ALTER TABLE Pracownicy
ADD COLUMN Data_zatrudnienia DATE;

INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial, Data_zatrudnienia)
VALUES (7, 'Michał', 'Lis', 'Tester', 'IT', '2025-02-15');

SELECT * FROM Pracownicy;

UPDATE Pracownicy
SET Data_zatrudnienia = '2023-04-10'
WHERE Data_zatrudnienia IS NULL;

SELECT * FROM Pracownicy;





