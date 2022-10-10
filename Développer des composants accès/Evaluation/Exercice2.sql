-- Active: 1665374967481@@127.0.0.1@3306@northwind

DELIMITER |

CREATE PROCEDURE lastcommand(In name VARCHAR(40))
BEGIN
    SELECT MAX(OrderDate) AS 'Date de dernière commande'
    FROM customers
    JOIN orders On customers.CustomerID = orders.CustomerID
    WHERE CompanyName = name;
END |

DELIMITER ;

CALL lastcommand('Around the horn');

#2
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours'
FROM orders;
--Je ne voit pas comment l'adapter car nous fesont une requête qui implique toute la table