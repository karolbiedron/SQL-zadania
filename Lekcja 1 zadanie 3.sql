DROP DATABASE Lista_Prezentow;
CREATE DATABASE Lista_Prezentow;
USE Lista_Prezentow;

CREATE TABLE Prezenty_2020 (
ID INTEGER PRIMARY KEY,
Imie_obdarowanego VARCHAR(50) UNIQUE,
Pomysl_na_prezent VARCHAR(60) UNIQUE,
Cena INTEGER NOT NULL,
Miejsce_zakupu TEXT NOT NULL

);

USE Lista_Prezentow;
INSERT INTO Prezenty_2020 (ID, Imie_obdarowanego, Pomysl_na_prezent, Cena, Miejsce_zakupu)
VALUES
(1, 'Kamil', 'Gra Call of Duty', 200, 'Empik'),
(2, 'Magdalena', 'Bilet na koncert Strachy na Lachy', 150, 'Eventim'),
(3, 'Wojciech', 'Zestaw do sushi', 150, 'Homla'),
(4, 'Anna', 'Zestaw LEGO', 200, 'Sklep LEGO'),
(5, 'Gabriel', 'Obiektyw do aparatu', 300, 'Sklep FOTO');

SELECT * FROM Prezenty_2020;

UPDATE Prezenty_2020
SET Pomysl_na_prezent = 'Rower'
WHERE ID = 3;

SELECT * FROM Prezenty_2020
WHERE ID = 3;

DELETE FROM Prezenty_2020
WHERE ID = 1;

SELECT * FROM Prezenty_2020;

ALTER TABLE Prezenty_2020
DROP COLUMN Miejsce_zakupu;

SELECT Imie_obdarowanego
FROM Prezenty_2020
WHERE ID IN (3, 4, 5);

