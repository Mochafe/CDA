-- Active: 1664278796352@@127.0.0.1@3306@hotel

#1
SELECT hot_nom, hot_ville 
FROM hotel;

#2
SELECT cli_nom, cli_prenom, cli_adresse, cli_ville
FROM client
WHERE cli_nom = 'White';

#3
SELECT sta_nom, sta_altitude
FROM station
WHERE sta_altitude < 1000;

#4
SELECT cha_numero, cha_capacite
FROM chambre
WHERE cha_capacite > 1;

#5
SELECT cli_nom, cli_ville
FROM client
WHERE cli_ville != 'Londre';

#6
SELECT hot_nom, hot_ville, hot_categorie
FROM hotel
WHERE hot_ville = 'Bretou' AND hot_categorie > 3;

#7
SELECT sta_nom, hot_nom, hot_categorie, hot_ville
FROM hotel
JOIN station ON hotel.hot_sta_id = station.sta_id;

#8
SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM chambre
JOIN hotel ON cha_hot_id = hotel.hot_id;

#9
SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
WHERE hot_ville = 'Bretou' AND cha_capacite > 1;

#10
SELECT cli_nom, hot_nom, res_date
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON reservation.res_cha_id = chambre.cha_id
JOIN hotel ON chambre.cha_hot_id = hotel.hot_id;

#11
SELECT sta_nom, hot_nom, cha_numero, cha_capacite
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id;

#12
SELECT cli_nom, hot_nom, res_date_debut, DATEDIFF(res_date_fin, res_date_debut) AS 'Durée'
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON reservation.res_cha_id = chambre.cha_id
JOIN hotel ON chambre.cha_id = hotel.hot_id; 

#13
SELECT sta_nom, COUNT(hot_id) as 'Nombre hotel'
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
GROUP BY sta_nom;

#14
SELECT sta_nom, COUNT(cha_id) AS 'Nombre de chambre'
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
GROUP BY sta_nom;

#15
SELECT sta_nom, COUNT(cha_id) AS 'Nombre de chambre'
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
WHERE cha_capacite > 1
GROUP BY sta_nom;

#16
SELECT hot_nom, COUNT(res_id) AS 'Nb reservation'
FROM client
JOIN reservation ON reservation.res_cli_id = client.cli_id
JOIN chambre ON reservation.res_cha_id = chambre.cha_id
JOIN hotel ON chambre.cha_hot_id = hotel.hot_id
WHERE cli_nom = 'Squire';

#17
SELECT sta_nom, DATEDIFF(AVG(res_date_fin), AVG(res_date_debut)) AS 'Durée moyenne(jours)'
FROM station
LEFT JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = chambre.cha_hot_id
JOIN reservation ON chambre.cha_id = reservation.res_cha_id
GROUP BY sta_nom
;
