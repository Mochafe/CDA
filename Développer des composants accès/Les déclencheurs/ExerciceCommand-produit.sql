-- Active: 1664278796352@@127.0.0.1@3306@cp

#1
CREATE TRIGGER maj_total AFTER INSERT ON lignedecommande
    FOR EACH ROW
    BEGIN
        DECLARE id_c INT;
        DECLARE tot DOUBLE;
        SET id_c = NEW.id_commande; -- nous captons le numéro de commande concerné
        SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c); -- on recalcul le total
        UPDATE commande SET total=tot WHERE id=id_c; -- on stocke le total dans la table commande
END;

INSERT INTO lignedecommande(id_commande, id_produit, quantite, prix) VALUES (3, 3, 3, 364);