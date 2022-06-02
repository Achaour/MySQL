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




