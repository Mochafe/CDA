-- Active: 1664278796352@@127.0.0.1@3306@exemple
#1
SELECT prenom, noregion
FROM employe
JOIN dept ON employe.nodep = dept.nodept;

#2
SELECT nodep AS 'Numero département', dept.nom AS 'Nom département', employe.nom AS 'Nom employée'
FROM employe
JOIN dept ON employe.nodep = dept.nodept
WHERE dept.nom = 'distribution'
ORDER BY dept.nodept;

#3
SELECT A.nom, A.salaire, B.nom, B.salaire
FROM employe A
JOIN employe B ON A.nosup = B.noemp
WHERE A.salaire > B.salaire;


#4
SELECT nom, titre
FROM employe
WHERE titre IN (SELECT titre FROM employe WHERE nom = 'amartakaldire');


#5
SELECT nom, salaire, nodep
FROM employe
WHERE salaire > ANY (SELECT salaire FROM employe WHERE nodep = '31')
ORDER BY nodep, salaire;

#6
SELECT nom, salaire, nodep
FROM employe
WHERE salaire > ALL (SELECT salaire FROM employe WHERE nodep = '31')
ORDER BY nodep, salaire;

#7
SELECT nom, titre
FROM employe
WHERE nodep = '31' AND titre IN (SELECT titre FROM employe WHERE nodep = '32');

#7
SELECT nom, titre
FROM employe
WHERE nodep = '31' AND titre NOT IN (SELECT titre FROM employe WHERE nodep = '32');

#8
SELECT nom, titre, salaire
FROM employe
WHERE
titre = (SELECT titre FROM employe WHERE nom = 'fairent')
AND
salaire = (SELECT salaire FROM employe WHERE nom = 'fairent');

#9
SELECT dept.nodept, dept.nom, employe.nom
FROM dept
LEFT JOIN employe ON dept.nodept = employe.nodep
ORDER BY dept.nodept ASC; 

#10
SELECT titre, COUNT(titre)
FROM employe
GROUP BY titre;

#11
SELECT AVG(employe.salaire) AS 'Moyenne des Salaires', SUM(employe.salaire) 'Somme des Salaires', dept.noregion AS 'Numero région'
FROM employe
JOIN dept ON employe.nodep = dept.nodept
GROUP BY dept.noregion;

#12
SELECT nodep
FROM employe
GROUP BY nodep
HAVING COUNT(nodep) > 2;

#13
SELECT CONCAT(LEFT(nom, 1),LEFT(prenom, 1)) AS 'Initial', COUNT(CONCAT(LEFT(nom, 1),LEFT(prenom, 1))) AS 'Compteur'
FROM employe
GROUP BY CONCAT(LEFT(nom, 1),LEFT(prenom, 1))
HAVING COUNT(CONCAT(LEFT(nom, 1),LEFT(prenom, 1))) >= 3;

#14
SELECT MAX(salaire) AS 'Salaire Max', MIN(salaire) AS 'Salaire Min', (MAX(salaire) - MIN(salaire)) AS 'Différence'
FROM employe;

#15
SELECT COUNT(DISTINCT titre) AS 'Nombre de titre différent'
FROM employe;

#16
SELECT titre, COUNT(titre) AS 'Nombre occurence'
FROM employe
GROUP BY titre;

#17
SELECT dept.nom , COUNT(*) as 'Nombre employée'
FROM employe
JOIN dept ON employe.nodep = dept.nodept
GROUP BY dept.nom;

#18
SELECT titre, AVG(salaire)
FROM employe
GROUP BY titre
HAVING AVG(salaire) > (SELECT AVG(salaire) FROM employe WHERE titre = 'représentant');

#19
SELECT COUNT(salaire) AS 'Nombre de salaire renseignés', COUNT(tauxcom) AS 'Nombre de taux de commission renseignés'
FROM employe;