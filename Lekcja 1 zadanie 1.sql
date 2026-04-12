CREATE DATABASE db1;
USE db1;

CREATE TABLE Biblioteczka (
ID INTEGER,
Tytul TEXT,
Data_zakupu DATE

);

USE db1;
INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu)
VALUES (1, 'Rok 1984', '2018-08-17');

SELECT * FROM Biblioteczka;

INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu)
VALUES (2, 'Call of Cthulhu', '2024-03-28');

INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu)
VALUES (3, 'Imię Róży', '2020-05-10');

UPDATE Biblioteczka
SET 
Tytul = 'Powieść o Olofie',
Data_zakupu = '2020-06-11'
WHERE ID = 1;

ALTER TABLE Biblioteczka
ADD COLUMN Autor TEXT;

UPDATE Biblioteczka
SET Autor = 'Eyvind Johnson'
WHERE ID = 1;

UPDATE Biblioteczka
SET Autor = 'H. P. Lovecraft'
WHERE ID = 2;

UPDATE Biblioteczka
SET Autor = 'Umberto Eco'
WHERE ID = 3;

DELETE FROM Biblioteczka
WHERE ID = 2;

DELETE FROM Biblioteczka
WHERE ID = 3;

SELECT Autor FROM Biblioteczka;









