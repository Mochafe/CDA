-- Active: 1664278796352@@127.0.0.1@3306@papyrus

#1
CREATE VIEW v_GlobalCDE
AS
SELECT codart, SUM(qtecde) AS QteTot, SUM(qtecde * priuni) AS PrixTot
FROM ligcom
GROUP BY codart;

SELECT * FROM `v_GlobalCDE`;

#2
CREATE VIEW v_VentesI100
AS
SELECT *
FROM vente
WHERE codart = 'I100';

SELECT * FROM v_VentesI100;

#3
CREATE VIEW v_VentesI100Grobrigan
AS
SELECT *
FROM v_VentesI100
WHERE numfou = '00120';

SELECT * FROM v_VentesI100Grobrigan;