-- Active: 1664278796352@@127.0.0.1@3306@northwind

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


SELECT CompanyName AS Client, COUNT(*) AS 'Nbre commandes'
FROM customers 
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING COUNT(*) > 10;