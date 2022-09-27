DROP DATABASE IF EXISTS Exercice1;

CREATE DATABASE Exercice1;

USE Exercice1;

CREATE TABLE Personne(
    per_num INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    per_nom VARCHAR(50),
    per_prenom VARCHAR(50),
    per_adresse VARCHAR(50),
    per_ville VARCHAR(50)
);

CREATE TABLE Groupe(
    gro_num INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    gro_libelle VARCHAR(50)
);

CREATE TABLE Appartient(
    per_num INT NOT NULL,
    gro_num INT NOT NULL,
    FOREIGN KEY (per_num) REFERENCES Personne(per_num),
    FOREIGN KEY (gro_num) REFERENCES Groupe(gro_num)

);