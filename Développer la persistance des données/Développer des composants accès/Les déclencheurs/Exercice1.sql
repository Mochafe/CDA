-- Active: 1664278796352@@127.0.0.1@3306@hotel
CREATE TRIGGER insert_station
AFTER
INSERT ON station FOR EACH ROW BEGIN
DECLARE altitude INT;
SET altitude = NEW.sta_altitude;
IF altitude < 1000 THEN SIGNAL SQLSTATE '40000'
SET MESSAGE_TEXT = 'Un problème est survenu. Règle de gestion altitude !';
END IF;
END;
insert into station (sta_nom, sta_altitude)
values ('station du bas', 666);




#1
ALTER TABLE reservation ENGINE = InnoDB;
CREATE TRIGGER modif_reservation
AFTER
UPDATE ON reservation FOR EACH ROW BEGIN SIGNAL SQLSTATE '40000'
SET MESSAGE_TEXT = 'Modification interdite';
END;
UPDATE reservation
SET res_cli_id = 6
WHERE res_id = 1;




#2
ALTER TABLE reservation ENGINE = InnoDB;
CREATE TRIGGER insert_reservation
AFTER
INSERT ON reservation FOR EACH ROW BEGIN IF (
        SELECT COUNT(res_cha_id)
        FROM reservation
            JOIN chambre ON reservation.res_cha_id = chambre.cha_id
            JOIN hotel ON chambre.cha_hot_id = hotel.hot_id
            WHERE hot_id = (SELECT DISTINCT hot_id FROM reservation
            JOIN chambre ON reservation.res_cha_id = chambre.cha_id
            JOIN hotel ON chambre.cha_hot_id = hotel.hot_id
            WHERE res_cha_id = NEW.res_cha_id)
            GROUP BY hot_id
    ) > 10 THEN SIGNAL SQLSTATE '40000'
SET MESSAGE_TEXT = 'Un problème est survenu. Il y a déjà 10 réservation dans cette hotel !';
END IF;
END;
DROP TRIGGER insert_reservation;

INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
VALUES (2, 3, '2017-01-10 00:00:00', '2017-01-10 00:00:00', '2017-01-10 00:00:00', 2400, 800);



#3
ALTER TABLE reservation ENGINE = InnoDB;
CREATE TRIGGER insert_reservation2
AFTER
INSERT ON reservation
FOR EACH ROW
    BEGIN
        IF (SELECT COUNT(res_cli_id) FROM reservation WHERE res_cli_id = NEW.res_cli_id) > 3 THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = ' Il y a déjà 3 réservations';
        END IF;
    END;

DROP TRIGGER insert_reservation2;


INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes)
VALUES (1, 1, '2017-01-10 00:00:00', '2017-01-10 00:00:00', '2017-01-10 00:00:00', 2400, 800);

#4
ALTER TABLE chambre ENGINE = InnoDB;
CREATE TRIGGER insert_chambre
AFTER
INSERT ON chambre
FOR EACH ROW
    BEGIN
        IF (SELECT SUM(cha_capacite) FROM chambre WHERE cha_hot_id = NEW.cha_hot_id) > 50 THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Insertion interdite, capacité > a 50';
        END IF;
    END ;

DROP TRIGGER insert_chambre;
INSERT INTO chambre(cha_hot_id, cha_numero, cha_capacite, cha_type) VALUES (1, 1000, 10, 2);