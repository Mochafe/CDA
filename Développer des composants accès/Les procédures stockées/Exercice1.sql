-- Active: 1664278796352@@127.0.0.1@3306@papyrus

#1
CREATE PROCEDURE Lst_fournis() 

BEGIN
    SELECT DISTINCT fournis.numfou, nomfou
    FROM entcom
    JOIN fournis ON entcom.numfou = fournis.numfou;
END ;
CALL `Lst_fournis`;
SHOW CREATE PROCEDURE Lst_fournis;

DROP PROCEDURE Lst_Commandes;
CREATE PROCEDURE Lst_Commandes(IN comment VARCHAR(50))

BEGIN
    SELECT entcom.numcom, numfou, libart, (qtecde * priuni)
    FROM entcom
    JOIN ligcom ON entcom.numcom = ligcom.numcom
    JOIN produit ON ligcom.codart = produit.codart
    WHERE LOCATE(comment, obscom) != 0; 
END ;

CALL Lst_Commandes("urgent");
SHOW CREATE PROCEDURE Lst_Commandes;

DROP PROCEDURE CA_Fournisseur;
CREATE PROCEDURE CA_Fournisseur(
    IN codefou INT,
    IN annee VARCHAR(4)
    )

BEGIN
    SELECT nomfou, (SUM(qtecde * prix1) * 1.2) as 'Prix TTC'
    FROM fournis
    JOIN vente ON fournis.numfou = vente.numfou
    JOIN produit ON vente.codart = produit.codart
    JOIN ligcom ON produit.codart = ligcom.codart
    JOIN entcom ON ligcom.numcom = entcom.numcom
    WHERE YEAR(datcom) = annee AND fournis.numfou = codefou
    GROUP BY nomfou;
END ;

CALL `CA_Fournisseur`(8700, '2018');