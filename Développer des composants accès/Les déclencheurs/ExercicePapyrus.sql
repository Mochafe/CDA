-- Active: 1664278796352@@127.0.0.1@3306@papyrus
CREATE TABLE ARTICLES_A_COMMANDER(
    codart VARCHAR(4) REFERENCES produit(codart),
    date DATE DEFAULT now(),
    qte INT
);

CREATE TRIGGER article_commander 
AFTER UPDATE ON produit
    FOR EACH ROW
    BEGIN
        IF (SELECT stkphy FROM produit WHERE codart = NEW.codart) <= (SELECT stkale FROM produit WHERE codart = NEW.codart)
        THEN
            INSERT INTO ARTICLES_A_COMMANDER(codart, qte) VALUES (NEW.codart,  ((NEW.stkale - NEW.stkphy)) - (SELECT SUM(qte) from ARTICLES_A_COMMANDER as a WHERE a.codart = NEW.codart));
        END IF;
    END;

DROP TRIGGER article_commander;

UPDATE produit
SET stkphy = 11
WHERE codart = 'B001';