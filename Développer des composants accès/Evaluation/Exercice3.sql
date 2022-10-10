-- Active: 1664278796352@@127.0.0.1@3306@northwind

ALTER TABLE `order details` ENGINE=InnoDB;
DELIMITER |

CREATE TRIGGER customers_suppliers_country AFTER INSERT 
ON `order details` 
FOR EACH ROW 
BEGIN 
	IF (
	    SELECT DISTINCT orders.ShipCountry
	    FROM `order details`
        JOIN orders ON `order details`.OrderID = orders.OrderID
        WHERE orders.OrderID = NEW.OrderID
	) != (
	    SELECT suppliers.Country
	    FROM
	        `order details`
	        JOIN orders ON orders.OrderID = `order details`.OrderID
	        JOIN products ON `order details`.ProductID = products.ProductID
	        JOIN suppliers ON products.SupplierID = suppliers.SupplierID
	    WHERE
	        orders.OrderID = NEW.OrderID AND products.ProductId = NEW.ProductID
	) THEN 
	SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = "Il y a au moins 1 produit qui ne provient pas d'un pays étranger";
	END IF;
	END | 
DELIMITER ;

DROP TRIGGER customers_suppliers_country;

SELECT suppliers.Country
	    FROM
	        `order details`
	        JOIN orders ON orders.OrderID = `order details`.OrderID
	        JOIN products ON `order details`.ProductID = products.ProductID
	        JOIN suppliers ON products.SupplierID = suppliers.SupplierID
	    WHERE
	        orders.OrderID = 10248 AND products.ProductID = 11;

SELECT DISTINCT orders.ShipCountry
	    FROM `order details`
        JOIN orders ON `order details`.OrderID = orders.OrderID
        WHERE orders.OrderID = 10248;

INSERT INTO `order details`(OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES (10248, 35, 12.0000, 1, 0);