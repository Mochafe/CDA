-- Active: 1664278796352@@127.0.0.1@3306@papyrus

#1
SELECT *
FROM entcom
JOIN ligcom ON entcom.numcom = ligcom.numcom
WHERE numfou = 9120;

#2
SELECT DISTINCT numfou
FROM entcom;

#3
SELECT COUNT(numcom), COUNT(DISTINCT fournis.numfou)
FROM entcom
JOIN fournis ON entcom.numfou = fournis.numfou;

#4
UPDATE produit
SET codart = codart, libart = libart, stkale = stkale, stkphy = stkphy, qteann = qteann
WHERE stkphy <= stkale AND qteann < 1000;

#5
SELECT posfou, nomfou
FROM fournis
WHERE (
    CASE LEFT(posfou, 2)
        WHEN '75' THEN 1
        WHEN '78' THEN 1
        WHEN '92' THEN 1
        WHEN '77' THEN 1
        ELSE 0
    END
        ) = 1;

#6
SELECT *
FROM entcom
WHERE MONTH(datcom) = 3 OR MONTH(datcom) = 4;

#7
SELECT numcom, datcom
FROM entcom
WHERE obscom != "";

#8
SELECT numcom, SUM(priuni * qtecde)
FROM ligcom
GROUP BY numcom;

#9
SELECT numcom, SUM(priuni * qtecde)
FROM ligcom
WHERE qtecde < 1000
GROUP BY numcom
HAVING SUM(priuni * qtecde) > 10000;

#10
SELECT nomfou, numcom, datcom
FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
ORDER BY nomfou;

#11
SELECT entcom.numcom, numfou, libart, (qtecde * priuni)
FROM entcom
JOIN ligcom ON entcom.numcom = ligcom.numcom
JOIN produit ON ligcom.codart = produit.codart
WHERE LOCATE('urgent', obscom); 

#12
SELECT nomfou, (qtecde - qteliv) as 'Reste a livré'
FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
JOIN ligcom ON entcom.numcom = ligcom.numcom
WHERE qteliv < qtecde;

SELECT nomfou, (qtecde - qteliv) as 'Reste a livré'
FROM ligcom
JOIN entcom ON ligcom.numcom = entcom.numcom
JOIN fournis ON entcom.numfou = fournis.numfou
WHERE qteliv < qtecde;

#13
SELECT fournis.nomfou, numcom, datcom
FROM entcom
JOIN fournis ON entcom.numfou = fournis.numfou
WHERE fournis.numfou = (SELECT numfou FROM entcom WHERE numcom = 70210);

SELECT fournis.nomfou, numcom, datcom
FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
WHERE fournis.numfou = (SELECT numfou FROM entcom WHERE numcom = 70210);


#14
SELECT libart, prix1
FROM produit
JOIN vente ON produit.codart = vente.codart
WHERE prix1 < (SELECT MIN(prix1) FROM vente WHERE LEFT(codart, 1) = 'R' )
;


