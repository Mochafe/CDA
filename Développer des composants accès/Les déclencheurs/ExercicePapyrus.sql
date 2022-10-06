-- Active: 1664278796352@@127.0.0.1@3306@papyrus
CREATE TABLE ARTICLES_A_COMMANDER(
    codart VARCHAR(4) REFERENCES produit(codart),
    date DATE DEFAULT now(),
    qte INT
);

DELIMITER |
CREATE TRIGGER article_commander 
AFTER UPDATE ON produit
    FOR EACH ROW
    BEGIN
    DECLARE qte INT;
    SET qte = (SELECT SUM(qte) from ARTICLES_A_COMMANDER as a WHERE a.codart = NEW.codart);
        IF NEW.stkphy <= NEW.stkale THEN
            IF qte IS NULL THEN
                SET qte = 0;
            END IF;         
            INSERT INTO ARTICLES_A_COMMANDER(codart, qte) VALUES (NEW.codart,  NEW.stkale - NEW.stkphy - qte);  
        END IF;
    END|

DELIMITER ;

DROP TRIGGER article_commander;

UPDATE produit
SET stkphy = 15
WHERE codart = 'B001';


SELECT 
(stkale - stkphy) - (SELECT ( CASE SUM(qte)) FROM `ARTICLES_A_COMMANDER` WHERE codart = 'B001')  
from produit as a WHERE a.codart = 'B001';