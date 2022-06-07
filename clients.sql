-- Authentification/Connexion
>mysql -u root    -- si l'utilisateur n'a pas de mot de passe
>mysql -u root -p -- Si l'utilisateur 

-- 1. lister toutes les bases de données
SHOW DATABASES;


-- 2. Creation de la base de données.

CREATE DATABASE Ventes;

-- 3. Utiliser/sélectionner une base de données.
USE ventes;

-- 4. lister tous les tables 

SHOW TABLES;

-- 5. Creation de la table de données 

-- INTEGER: LE TYPE ENTIER
-- NOT NULL: Cette colonne doit toujours contenir une information
-- AUTO_INCREMENT: Dire à MYSQL de fournir de valeurs en incrementant automatiquement des cles
-- PRIMARY KEY: marquer la colonne comme étant la clé primaire
-- UNIQUE: Applique une contrainte de d'unicité

CREATE TABLE clients (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR (50) NOT NULL,
    email VARCHAR (70) UNIQUE ,
    telephone VARCHAR (20) NOT NULL,  
);


-- Voir descreption  de la table
-- DESC <nom_table> ou DESCRIBE <nom_table>
DESC TABLE;

-- Modifier une table en ajoutant une nouvelle colonne 
ALTER TABLE clients ADD postnom VARCHAR(50) 

-- Modifier une table en ajoutant une nouvelle colonne apres une autre
ALTER TABLE clients ADD postnom VARCHAR(50) AFTER prenom;

-- lister les informations de toutes * 


SELECT * FROM TABLE
-- 7. inserer 

INSERT INTO clients (nom, prenom, postnom, email, telephone)
values("Achaour","Mansour","achaourmansour@gmail.com","0699763062")
("Andam","Hamza","andamhamza@gmail.com","0699763088"),("Boujerfaoui","Yassine","BoujerfaouiYassine@gmail.com","0699764088")

-- Rajout d'une colonne age (2 chiffres maximum)
ALTER TABLE clients ADD COLUMN age INTEGER(2);

-- Mise à jour des données 
UPDATE clients SET telephone ="0673460986" WHERE Id=2;

UPDATE clients SET postnom="Tarzan", age=17 WHERE Id=1

-- Supprime en enregistrement 

DELETE FROM clients WHERE Id=7

-- Configurer MYSQL en mode strcit
-- Valeur pour le mode strict : Strict_Transaction 


SHOW VARIABLES LIKE 'sql_mode'
--------------------------------------------------------------------------

CREATE TABLE telephones (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY?
    numero VARCHAR(20) NOT NULL,
    id_client INTEGER,
    --FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE SET NULL
    --FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE CASCADE
      FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE RESTRICT

);

ALTER TABLE clients DROP COLUMN telephones;
--  supprimer une table
-- Ex:DROP TABLE clients;

-- supprimer une base de données
-- Ex: DROP DATABASE ;

-- Join query
-- afficher tous les numeros de telephones de tous les clients
-- Tables sollicités: clients telephones 

SELECT client.prenom, client.nom, telephones.numero FROM 
client Join telephone ON client.id=telephones.id_client;

-- Jointure et concatenation 

SELECT concat(clients.prenom," ",clients.nom) as nom,
clients.email, telephones.numero FROM clients Join telephones 
ON clients.id=telephones.id_client;

-- Jointure et condition 
SELECT concat(clients.prenom," ",clients.nom) as nom,
clients.email, telephones.numero FROM clients Join telephones 
ON clients.id=telephones.id_client where clients.id=1;


-- ***************** Group by

-- Nombre de ventes pour tous les fabricants

SELECT manufacturer, SUM(units_sold) FROM telephones GROUP by manufacturer;



-- CA par fabricant dans l'ordre decroissant des CA

SELECT manufacturer, SUM(price*units_sold) as chiffre_affaire 
FROM telephones GROUP BY manfacturer ORDER by chiffre_affaire DESC;

-- Toutes les ventes des marques qui ont realisé un CA de plus de 20000

SELECT manufacturer, SUM (price*units_sold) as chiffre_affaire 
FROM telephones GROUP by manufacturer HAVING chiffre_affaire > 200000;

-- Mauvaise approche
-- SELECT manufacturer,SUM(price*units_sold) as chiffre_affaire 
-- FROM telephones  WHERE chiffre_affaire>20000000 GROUP BY manufacturer;

