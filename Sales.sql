CREATE DATABASE Sales;
USE Sales;
SHOW TABLES;


-- ## Créer une table appelée telephone savec les colonnes
suivantes :
-- *=>name:chaîne de caractèresqui représentele modèle du téléphone
-- *=>manufacturer:chaîne de caractèresquireprésente le fabricant
-- *=>price:  unnombrequi représente le prixUHT
-- *=>units_sold:nombrequi représentent laquantité vendue

CREATE TABLE telephones (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manufacturer  VARCHAR (50) NOT NULL,
    price FLOAT(10) NOT NULL,
    units_sold VARCHAR (20) NOT NULL  
);


-- # LMD 1 : Insertions
-- *=>Insérer les données suivantes :

INSERT INTO telephones (name, manufacturer, price, units_sold)
values("N1280","Nokia",199,1925),
("Iphone 4","Apple",399,9436),
("Galaxy S 5","Samsung",299,2359),
("S5620 Monte","Samsung",250,2385),
("N8","Nokia",150,7543),
("Droid","Motorola",150,8395),
("Iphone 13 ProMax","Apple",1300,12849),
("Galaxy Note 20","Samsung",1100,10353);

-- # LMD 2 : Selection(projection)

-- une requête pour liste tous les modèles de téléphones
SELECT * FROM telephones

--1. une requête pour lister tous les telephone(name, manufacturer) 
-- de tous lestéléphone dont le prix est supérieur à 200€

SELECT name, manufacturer from telephones where price>200;

--2. une requête pour lister tous les telephone (name,manufacturer)
-- de tous les téléphone dont le prix est varie entre 150 et 200€.

SELECT name, manufacturer from telephones where price<200 and price > 150;

--3. Lister tous les téléphones de marque samsung et Apple
SELECT name from telephones where manufacturer="samsung"  or  manufacturer="Apple";








