-- Active: 1664278796352@@127.0.0.1@3306@hotel

#1
CREATE VIEW v_hotel_station
AS
SELECT  hot_nom, sta_nom
FROM hotel
JOIN station ON hotel.hot_sta_id;

SELECT * FROM v_hotel_station;

#2
CREATE VIEW v_chambre_hotel
AS
SELECT cha_numero, hot_nom
FROM chambre
JOIN hotel ON cha_hot_id = hotel.hot_id;

SELECT * FROM v_chambre_hotel;

#3
CREATE VIEW v_client_reservation
AS
SELECT CONCAT(cli_nom, ' ', cli_prenom) as 'Client', res_id, res_date as 'Date de réservation'
FROM reservation
JOIN client ON res_cli_id = cli_id;

SELECT * FROM v_client_reservation;

#4
CREATE VIEW v_station_hotel_chambre
AS
SELECT sta_nom, hot_nom, cha_numero
FROM station
JOIN hotel ON station.sta_id = hotel.hot_sta_id
JOIN chambre ON hotel.hot_id = cha_hot_id;

SELECT * FROM v_station_hotel_chambre;

#5
CREATE VIEW v_client_reservation_hotel
AS
SELECT cli_nom, res_date, res_date_debut, res_date_fin, res_prix, hot_nom
FROM client
JOIN reservation ON client.cli_id = reservation.res_cli_id
JOIN chambre ON reservation.res_cha_id = chambre.cha_id
JOIN hotel ON chambre.cha_hot_id = hotel.hot_id;

SELECT * FROM v_client_reservation_hotel;