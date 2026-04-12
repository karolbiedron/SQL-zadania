DROP DATABASE School_Coding;
CREATE DATABASE School_Coding;
USE School_Coding;

CREATE TABLE Mentors (
ID INTEGER PRIMARY KEY,
Imie VARCHAR(50) UNIQUE,
Nazwisko VARCHAR(50) UNIQUE,
Specjalizacja TEXT NOT NULL,
Data_zatrudnienia DATE NOT NULL,
Data_zwolnienia DATE NOT NULL

);

USE School_Coding;
INSERT INTO Mentors (ID, Imie, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia)
VALUES
(1, 'Kamil', 'Kowalski', 'Data Scientist', '2005-04-22', '2014-06-13'),
(2, 'Magdalena', 'Nowak', 'Python Developer', '2005-02-27', '2010-03-28'),
(3, 'Wojciech', 'Gwarek', 'Java Developer', '2007-11-01', '2011-05-06'),
(4, 'Anna', 'Drozd', 'Data Analyst', '2007-11-01', '2012-03-07'),
(5, 'Gabriel', 'Florek', 'Python Developer', '2010-08-22', '2012-05-10'),
(6, 'Stefan', 'Małecki', 'Data Scientist', '2011-10-15', '2020-10-26'),
(7, 'Ewa', 'Król', 'Data Analyst', '2014-09-01', '2021-03-15'),
(8, 'Jan', 'Makowski', 'JavaScript Developer', '2017-10-10', '2024-07-13'),
(9, 'Karol', 'Wilk', 'Python Developer', '2020-05-07', '2025-01-20'),
(10, 'Paulina', 'Przybysz', 'Java Developer', '2021-05-29', '2025-08-21');

SELECT * FROM Mentors;

UPDATE Mentors
SET Nazwisko = 'Różycki'
WHERE ID = 5;

SELECT * FROM Mentors
WHERE ID = 5;

UPDATE Mentors
SET Specjalizacja = 'Data Scientist'
WHERE ID = 9;

SELECT * FROM Mentors
WHERE ID = 9;

ALTER TABLE Mentors
ADD COLUMN Wynagrodzenie INTEGER NOT NULL;

UPDATE Mentors
SET Wynagrodzenie = 1000
WHERE ID IN (1, 2, 3);

SELECT * FROM Mentors
WHERE ID IN (1, 2, 3);





