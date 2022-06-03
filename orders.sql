

-- Afficher dans l'ordre croissant des prix
SELECT id, name,manufacturer,price FROM telephones ORDER by price ASC;
-- Afficher dans l'ordre decroissant des prix
SELECT id, name,manufacturer,price FROM telephones ORDER by price DESC;
-- Several order criterias
SELECT id, name,manufacturer,price FROM telephones ORDER by price DESC, manufacturer DESC;
SELECT id, name,manufacturer,price FROM telephones ORDER by name DESC;


-- faire des calculs entre les champs numeriques 
SELECT name,manufacturer, price*units_sold FROM telephones;

-- utiliser les aleas pour renommer les champs:
SELECT name as modele,manufacturer as constructeur , 
price as prix,units_sold as unites_vendues,
(price*units_sold) as chiffre_affaire FROM telephones;

-- Concatenation:
SELECT CONCAT (manufacturer,"",name) as nom, CONCAT (price,"€") as prix;
SELECT CONCAT (name, " ", manufacturer) AS modele, CONCAT (price, " ", "€") AS prix, units_solds AS unites_vendues, CONCAT ((price*units_solds), " ", "€") AS CA FROM telephones;






-- Creation d'une vue: 
CREATE VIEW v_revenu_total AS SELECT name as modele,manufacturer as constructeur , price as prix,units_sold as unites_vendues, (price*units_sold) as chiffre_affaire FROM telephones;
SELECT * FROM v_revenu_total;


SELECT DISTINCT(manufacturer) from telephones;
SELECT count(*) from telephones;

-- Afficher le nombre d'appzaeils apple:  
SELECT count (*) from telephones where manufacturer="apple";

-- la moyenne de ventes 

SELECT SUM(units_sold) as total_ventes FROM telephones;


-- Average 
SELECT AVG(units_sold) as moyenne_ventes FROM telephones;

-- Ventes les plus elevés 

SELECT MAX(units_sold) as Ventes_les_plus_elevé FROM telephones;
-- Ventes les moins elevés 

SELECT MIN(units_sold) as Ventes_les_moins_elevé FROM telephones;

