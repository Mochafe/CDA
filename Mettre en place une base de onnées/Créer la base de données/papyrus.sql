DROP DATABASE IF EXISTS papyrus;

CREATE DATABASE papyrus;

USE papyrus;

CREATE TABLE fournis(
    numfou VARCHAR(25) PRIMARY KEY NOT NULL,
    nomfou VARCHAR(25) NOT NULL,
    ruefou VARCHAR(50) NOT NULL,
    posfou CHAR(5) NOT NULL,
    vilfou VARCHAR(30) NOT NULL,
    confou VARCHAR(15) NOT NULL,
    satisf TINYINT CHECK (satisf BETWEEN 1 and 10)
);

CREATE TABLE produit(
    codart CHAR(4) PRIMARY KEY UNIQUE NOT NULL,
    libart VARCHAR(30) NOT NULL,
    stkale INT NOT NULL,
    stkphy INT NOT NULL,
    qteann INT NOT NULL,
    unimes CHAR(5) NOT NULL
);

CREATE TABLE vente(
    delliv SMALLINT NOT NULL,
    qte1 INT NOT NULL,
    prix1 VARCHAR(50) NOT NULL,
    qte2 INT,
    prix2 VARCHAR(50),
    qte3 INT,
    prix3 VARCHAR(50),
    numfou VARCHAR(25) NOT NULL,
    codart CHAR(4) NOT NULL,

    FOREIGN KEY (numfou) REFERENCES fournis(numfou),
    FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE TABLE entcom(
    numcom INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    obscom VARCHAR(50),
    datcom DATE NOT NULL,
    foucom VARCHAR(25),

    FOREIGN KEY (foucom) REFERENCES fournis(numfou)
);

CREATE TABLE ligcom(
    numlig TINYINT(3) PRIMARY KEY NOT NULL,
    qtecde INT NOT NULL,
    priuni VARCHAR(50) NOT NULL,
    qteliv INT,
    derliv DATETIME NOT NULL,
    numcom INT NOT NULL,
    codart CHAR(4) NOT NULL,

    FOREIGN KEY (numcom) REFERENCES entcom(numcom),
    FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE INDEX FK_numfou ON entcom(foucom);