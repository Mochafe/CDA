DROP DATABASE IF EXISTS Exercice1_FP;

CREATE DATABASE Exercice1_FP;

USE Exercice1_FP;

CREATE TABLE client(
    cli_num INT PRIMARY KEY,
    cli_nom VARCHAR(50),
    cli_adresse VARCHAR(50),
    cli_tel VARCHAR(30)
);

CREATE TABLE produit(
    pro_num INT PRIMARY KEY,
    pro_libelle VARCHAR(50),
    pro_description VARCHAR(50)
);

CREATE TABLE commande(
    com_num INT PRIMARY KEY,
    cli_num INT REFERENCES client(cli_num),
    com_date DATETIME,
    com_obs VARCHAR(50)
);

CREATE TABLE est_compose(
    com_num INT,
    pro_num INT,
    est_qte INT,

    FOREIGN KEY(com_num) REFERENCES commande(com_num),
    FOREIGN KEY(pro_num) REFERENCES produit(pro_num),
    PRIMARY KEY(com_num,pro_num)
);

CREATE INDEX IX_cli_nom ON client(cli_nom);