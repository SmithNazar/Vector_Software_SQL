CREATE DATABASE MyShop;

CREATE TABLE Supplier (
	SupplierID int NOT NULL PRIMARY KEY,
	SupplierName nvarchar(255) NOT NULL,
	City nvarchar(255) NOT NULL,		
	Country nvarchar(255) NOT NULL
);

CREATE TABLE Categories (
	CategoryID int NOT NULL PRIMARY KEY,
	CategoryName nvarchar(255) NOT NULL,
	Description_ nvarchar(255) 	
);

CREATE TABLE Products (
    ProductID int NOT NULL PRIMARY KEY,
    ProductName nvarchar(255)  NOT NULL,
    SupplierID int NOT NULL FOREIGN KEY REFERENCES Supplier(SupplierID),
    CategoryID int NOT NULL FOREIGN KEY REFERENCES Categories(CategoryID),
    Price decimal
);
-------------------------------------------------------------------------------------------------------------------
INSERT INTO
 Supplier(SupplierID, SupplierName, City, Country) VALUES(1, 'Exotic Liquid', 'London', 'UK');
INSERT INTO
 Supplier(SupplierID, SupplierName, City, Country) VALUES(2, 'New Orleans Cajun Delights','New Orleans', 'USA');
INSERT INTO
 Supplier(SupplierID, SupplierName, City, Country) VALUES(3, 'Grandma Kelly’s Homestead', 'Ann Arbor', 'USA');
INSERT INTO
 Supplier(SupplierID, SupplierName, City, Country) VALUES(4, 'Tokyo Traders', 'Tokyo', 'Japan');
INSERT INTO 
 Supplier(SupplierID, SupplierName, City, Country) VALUES(5, 'Cooperativa de Quesos ‘Las Cabras’', 'Oviedo', 'Spain');
 ------------------------------------------------------------------------------------------------------------------
 INSERT INTO
 Categories(CategoryID, CategoryName, Description_) VALUES(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales');
INSERT INTO
 Categories(CategoryID, CategoryName, Description_) VALUES(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO
 Categories(CategoryID, CategoryName, Description_) VALUES(3, 'Confections', 'Desserts, candies, and sweet breads');
INSERT INTO
 Categories(CategoryID, CategoryName, Description_) VALUES(4, 'Dairy Products', 'Cheeses');
INSERT INTO 
 Categories(CategoryID, CategoryName, Description_) VALUES(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal');
 -------------------------------------------------------------------------------------------------------------------
 INSERT INTO
  Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(1,'Chais',1,1,18.00);
 INSERT INTO
  Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(2,'Chang',1,1,19.00);
 INSERT INTO
  Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(3,'Aniseed Syrup',1,2,10.00);
 INSERT INTO
  Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(4,'Chef Anton’s Cajun Seasoning',2,2,22.00);
 INSERT INTO
  Products(ProductID, ProductName, SupplierID, CategoryID, Price) VALUES(5,'Chef Anton’s Gumbo Mix',2,2,21.35);
