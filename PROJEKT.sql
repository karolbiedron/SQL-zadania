DROP DATABASE Sklep_odziezowy;
CREATE DATABASE Sklep_odziezowy;
USE Sklep_odziezowy;

CREATE TABLE Producenci (
id_producenta INTEGER PRIMARY KEY,
nazwa_producenta VARCHAR(70) NOT NULL,
adres_producenta VARCHAR (150) NOT NULL, 
nip_producenta VARCHAR(10) NOT NULL UNIQUE,
data_podpisania_umowy DATE NOT NULL
);

CREATE TABLE Produkty (
id_produktu INTEGER PRIMARY KEY,
id_producenta INTEGER NOT NULL,
nazwa_produktu VARCHAR(100) NOT NULL,
opis_produktu VARCHAR(300) NOT NULL,
cena_netto_zakupu DECIMAL (10,2) NOT NULL,
cena_brutto_zakupu DECIMAL (10,2) NOT NULL,
cena_netto_sprzedazy DECIMAL (10,2) NOT NULL,
cena_brutto_sprzedazy DECIMAL (10,2) NOT NULL,
procent_VAT_sprzedazy DECIMAL (10,2) NOT NULL
);

CREATE TABLE Zamowienia (
od_zamowienia INTEGER PRIMARY KEY,
id_klienta INTEGER NOT NULL,
id_produktu INTEGER NOT NULL,
data_zamowienia DATE NOT NULL
);

CREATE TABLE Klienci (
id_klienta INTEGER PRIMARY KEY,
imie VARCHAR(50) NOT NULL,
nazwisko VARCHAR(50) NOT NULL,
adres VARCHAR(200) NOT NULL
);

ALTER TABLE Produkty
ADD CONSTRAINT fk_producent
FOREIGN KEY (id_producenta)
REFERENCES Producenci(id_producenta);

ALTER TABLE Zamowienia
ADD CONSTRAINT fk_zamowienia_produkty
FOREIGN KEY (id_produktu)
REFERENCES Produkty(id_produktu);

ALTER TABLE Zamowienia
ADD CONSTRAINT fk_zamowienia_klienci
FOREIGN KEY (id_klienta)
REFERENCES Klienci(id_klienta);

INSERT INTO Producenci VALUES
(1,'Bershka','Hiszpania','1234567890','2020-04-02'),
(2,'Adidas','Niemcy','2345678901','2018-12-07'),
(3,'Zara','Hiszpania','3456789012','2019-07-20'),
(4,'H&M','Szwecja','4567890123','2020-03-08');

INSERT INTO Produkty VALUES
(1,1,'Fast Sneakers','Buty sportowe',350,429,450,553.5,23),
(2,1,'Cool Hoodie','Bluza z kapturem',220,270.6,300,369,23),
(3,1,'Core T-Shirt','Koszulka',90,110.7,150,184.5,23),
(4,1,'Fast Leggings','Legginsy damskie',120,147.6,180,221.4,23),
(5,1,'Alternative Jacket','Kurtka',400,492,550,676.5,23),
(6,2,'Ultraboost trainers','Buty do biegania',380,467.4,500,615,23),
(7,2,'3Stripes T-Shirt','Koszulka',80,98.4,120,147.6,23),
(8,2,'3Stripes Hoodie','Bluza',200,246,280,344.4,23),
(9,2,'Running Shorts','Spodenki sportowe',100,123,150,184.5,23),
(10,2,'Black Tracksuit','Dres',300,369,420,516.6,23),
(11,3,'Holiday Dress','Sukienka',180,221.4,250,307.5,23),
(12,3,'Casual Shirt','Koszula damska',120,147.6,170,209.1,23),
(13,3,'Blue Jeans','Spodnie jeansowe',150,184.5,220,270.6,23),
(14,3,'Elegant Coat','Płaszcz',350,430.5,500,615,23),
(15,3,'Plain Skirt','Spódnica',130,159.9,180,221.4,23),
(16,4,'New York Hoodie','Bluza',140,172.2,200,246,23),
(17,4,'Pattern T-Shirt','Koszulka',50,61.5,80,98.4,23),
(18,4,'Spring Dress','Sukienka letnia',160,196.8,220,270.6,23),
(19,4,'Leather Jacket','Kurtka',250,307.5,320,393.6,23),
(20,4,'Punk Jeans','Spodnie jeansowe',180,221.4,250,307.5,23);

INSERT INTO Klienci VALUES
(1,'Jan','Maczewski','Kraków'),
(2,'Joanna','Drozg','Warszawa'),
(3,'Agata','Zielińska','Gdańsk'),
(4,'Mateusz','Wiśniewski','Wrocław'),
(5,'Marcin','Wójcik','Poznań'),
(6,'Aleksandra','Kamińska','Lublin'),
(7,'Marek','Lewandowski','Łódź'),
(8,'Łucja','Dąbrowska','Szczecin'),
(9,'Paweł','Zając','Katowice'),
(10,'Ewa','Szymanowska','Rzeszów');	

INSERT INTO Zamowienia VALUES
(1,1,1,'2026-04-01'),
(2,2,6,'2026-04-02'),
(3,3,7,'2026-04-02'),
(4,4,11,'2026-04-03'),
(5,5,16,'2026-04-03'),
(6,6,2,'2026-04-04'),
(7,7,8,'2026-04-05'),
(8,8,18,'2026-04-05'),
(9,9,1,'2026-04-05'),
(10,10,20,'2026-04-06');

SELECT p.*, pr.nazwa_producenta
FROM Produkty p
JOIN Producenci pr ON p.id_producenta = pr.id_producenta
WHERE pr.id_producenta = 1;

SELECT * FROM Produkty
WHERE id_producenta = 1
ORDER BY nazwa_produktu;

SELECT AVG(cena_brutto_sprzedazy) AS srednia_cena
FROM Produkty
WHERE id_producenta = 1;

SELECT nazwa_produktu,
CASE
WHEN cena_brutto_sprzedazy <= (
SELECT AVG(cena_brutto_sprzedazy)
FROM Produkty
WHERE id_producenta = 1
) THEN 'Tanie'
ELSE 'Drogie'
END AS grupa
FROM Produkty
WHERE id_producenta = 1;

SELECT DISTINCT p.nazwa_produktu
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu;

SELECT * FROM Produkty p 
JOIN Zamowienia z ON p.id_produktu = z.id_produktu
LIMIT 5;

SELECT SUM(p.cena_brutto_sprzedazy) AS laczna_wartosc
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu;

SELECT z.*, p.nazwa_produktu
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
ORDER BY z.data_zamowienia;

SELECT * FROM Produkty
WHERE nazwa_produktu IS NULL
OR cena_netto_zakupu IS NULL
OR cena_brutto_sprzedazy IS NULL;

SELECT p.nazwa_produktu, COUNT(*) AS liczba_zamowien
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu, p.nazwa_produktu
ORDER BY liczba_zamowien DESC
LIMIT 1;

SELECT data_zamowienia, COUNT(*) AS liczba_zamowien
FROM Zamowienia
GROUP BY data_zamowienia
ORDER BY liczba_zamowien DESC
LIMIT 1;







