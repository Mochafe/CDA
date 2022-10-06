-- Active: 1664278796352@@127.0.0.1@3306@cp

#1
CREATE TRIGGER maj_total_insert AFTER INSERT ON lignedecommande
    FOR EACH ROW
    BEGIN
        DECLARE id_c INT;
        DECLARE tot DOUBLE;
        SET id_c = NEW.id_commande; -- nous captons le numéro de commande concerné
        SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c) * (1 - (SELECT remise from commande where id = id_c) / 100); -- on recalcul le total
        UPDATE commande SET total=tot WHERE id=id_c; -- on stocke le total dans la table commande
    END;

DROP TRIGGER maj_total_insert;

CREATE TRIGGER maj_total_update AFTER UPDATE ON lignedecommande
    FOR EACH ROW
    BEGIN
        DECLARE id_c INT;
        DECLARE tot DOUBLE;
        SET id_c = NEW.id_commande; -- nous captons le numéro de commande concerné
        SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c) * (1 - (SELECT remise from commande where id = id_c) / 100); -- on recalcul le total
        UPDATE commande SET total=tot WHERE id=id_c; -- on stocke le total dans la table commande
END;

CREATE TRIGGER maj_total_delete AFTER DELETE ON lignedecommande
    FOR EACH ROW
    BEGIN
        DECLARE tot DOUBLE;
        SET id_c = OLD.id_commande;
        SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c) * (1 - (SELECT remise from commande where id = id_c) / 100) -- on recalcul le total
        UPDATE commande SET total=tot WHERE id=OLD.id_commande; -- on stocke le total dans la table commande
END;

DROP TRIGGER maj_total_delete;

INSERT INTO lignedecommande(id_commande, id_produit, quantite, prix) VALUES (3, 3, 1, 364);

UPDATE lignedecommande
SET prix = 100
WHERE id_commande = 3;

DELETE FROM lignedecommande
WHERE id_commande = 3 AND id_produit = 3;

SHOW TRIGGERS;