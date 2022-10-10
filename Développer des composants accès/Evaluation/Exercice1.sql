-- Active: 1665374967481@@127.0.0.1@3306@northwind

#1
SELECT CompanyName AS Société, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Téléphone 
FROM customers 
WHERE Country = 'France';

#2
SELECT productName AS Produit, UnitPrice AS Prix FROM suppliers 
JOIN products ON suppliers.SupplierID = products.ProductID
WHERE products.SupplierID = (SELECT SupplierID FROM suppliers WHERE CompanyName = 'Exotic Liquids')
;

#3
SELECT CompanyName AS Société, COUNT(*) AS 'Nbre produits' 
FROM suppliers
JOIN products ON suppliers.SupplierID = products.SupplierID 
WHERE Country = 'France'
GROUP BY CompanyName;

#4
SELECT CompanyName AS Client, COUNT(*) AS 'Nbre commandes'
FROM customers 
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING COUNT(*) > 10;

#5
SELECT CompanyName AS Client, SUM(UnitPrice * Quantity), Country AS Pays
FROM customers 
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN `order details` ON orders.OrderID = `order details`.OrderID
GROUP BY CompanyName
HAVING SUM(UnitPrice * Quantity) > 30000
ORDER BY SUM(UnitPrice * Quantity) DESC
;

#6
SELECT DISTINCT Country AS Pays
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN `order details` ON orders.OrderID = `order details`.OrderID
JOIN products ON `order details`.ProductID = products.ProductID
WHERE SupplierID = (SELECT SupplierID FROM suppliers WHERE CompanyName = 'Exotic Liquids')
ORDER BY Country ASC
;

#7
SELECT SUM(UnitPrice * Quantity) AS 'Montant Ventes 97'
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997; 

#8
SELECT MONTH(OrderDate) AS 'Mois 97', SUM(UnitPrice * Quantity) AS 'Montant Ventes'
FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate);

#9
SELECT MAX(OrderDate) AS 'Date de dernière commande'
FROM customers
JOIN orders On customers.CustomerID = orders.CustomerID
WHERE CompanyName = 'Du monde entier';

#10
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours'
FROM orders;