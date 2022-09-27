CREATE DATABASE Exercice2;

USE Exercice2;

CREATE TABLE Station(
    num_station INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom_station VARCHAR(50) NOT NULL
);

CREATE TABLE Hotel(
    num_hotel INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    sta_hotel INT NOT NULL, #Numero de station
    nom_hotel VARCHAR(50) NOT NULL,
    adr_hotel VARCHAR(50) NOT NULL, #Adresse
    cap_hotel INT NOT NULL, #Capacité
    cat_hotel VARCHAR(50) NOT NULL, #Catégorie

    FOREIGN KEY (sta_hotel) REFERENCES Station(num_station)
);

CREATE TABLE Chambre(
    num_chambre INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    hot_chambre INT NOT NULL, #Numero hotel
    typ_chambre VARCHAR(50), #Type de chambre
    cap_chambre INT NOT NULL, #Capacité
    exp_chambre VARCHAR(50), #Exposition 
    con_chambre VARCHAR(50), # Confort

    FOREIGN KEY (hot_chambre ) REFERENCES Hotel(num_hotel)
);

CREATE TABLE Client(
    num_client INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom_client VARCHAR(50) NOT NULL, #Nom
    pre_client VARCHAR(50) NOT NULL, #Prénom
    adr_client VARCHAR(50) #Adresse
);

CREATE TABLE Reservation(
    cha_reservation INT NOT NULL, #Numero chambre
    cli_reservation INT NOT NULL, #Numero client
    deb_reservation DATE NOT NULL, #Date de début
    fin_reservation DATE NOT NULL, #Date de fin
    dat_reservation DATE NOT NULL,
    mon_reservation DECIMAL(10, 2) NOT NULL, #Montant arrhes
    pri_reservation DECIMAL(10, 2) NOT NULL, #Prix total

    FOREIGN KEY (cha_reservation) REFERENCES Chambre(num_chambre),
    FOREIGN KEY (cli_reservation) REFERENCES Client(num_client)
);

CREATE UNIQUE INDEX numero_client ON Client(num_client);