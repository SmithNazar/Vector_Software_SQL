--Select product with product name that begins with ‘C’.
SELECT ProductName 
FROM Products 
WHERE ProductName LIKE 'C%';
--Select product with the smallest price.
SELECT MIN(Price)
FROM Products
--Select cost of all products from the USA.
SELECT Price AS USA_Price
FROM Products
LEFT JOIN Supplier
ON Products.ProductID=Supplier.SupplierID 
WHERE Country = 'USA';
--Select suppliers that supply Condiments.
SELECT 
SupplierName
From
Products
LEFT JOIN Supplier 
ON Products.SupplierID=Supplier.SupplierID 
LEFT JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Condiments';
--Add to database new supplier with name: ‘Norske Meierier’, city: ‘Lviv’, country: ‘Ukraine’ 
--which will supply new product with name: ‘Green tea’, price: 10, and related to category with name:
--‘Beverages’.
INSERT INTO
 Supplier(SupplierID, SupplierName, City, Country) VALUES(6, 'Norske Meierier', 'Lviv', 'Ukraine');
INSERT INTO
 Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(6,'Green tea',6,1,10.00);
 ------------------------------------------------------------------------------------------------------------
 SELECT * FROM Products
 SELECT * FROM Categories
 SELECT * FROM Supplier
