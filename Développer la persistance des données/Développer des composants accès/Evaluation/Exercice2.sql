-- Active: 1664278796352@@127.0.0.1@3306@northwind

DELIMITER |

CREATE PROCEDURE lastCommand(In name VARCHAR(40))
BEGIN
    SELECT MAX(OrderDate) AS 'Date de dernière commande'
    FROM customers
    JOIN orders On customers.CustomerID = orders.CustomerID
    WHERE CompanyName = name;
END |

DELIMITER ;

CALL lastCommand('Around the horn');

DELIMITER |


CREATE PROCEDURE deliveryAverage()
BEGIN
    SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours' FROM orders;
END |

DELIMITER ;

CALL deliveryAverage();