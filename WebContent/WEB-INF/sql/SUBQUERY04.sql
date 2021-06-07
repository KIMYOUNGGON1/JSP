USE test;

SELECT * FROM Customers
WHERE EXISTS (SELECT now())
;

SELECT * FROM Customers
WHERE NOT EXISTS (SELECT now())
;

-- w3schools
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
			  FROM Products 
              WHERE Products.SupplierID = Suppliers.SupplierID
              AND Price < 20);
              
SELECT SupplierName
FROM Suppliers
WHERE NOT EXISTS (SELECT ProductName 
			  FROM Products 
              WHERE Products.SupplierID = 1
              AND Price < 20);

DESC Suppliers;
SELECT * FROM Suppliers;

-- subquery
SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = 1
AND Price < 20;


SELECT * FROM Products WHERE ProductID = ALL (SELECT 42);
  
  SELECT ProductID
  FROM OrderDetails
  WHERE Quantity;
  



SELECT * FROM Customers
WHERE Country = ANY (
SELECT Country FROM Suppliers)
ORDER BY CustomerID;

SELECT * FROM Customers
WHERE Country = ALL (
SELECT Country FROM Suppliers)
ORDER BY CustomerID;


SELECT Country FROM Suppliers;
SELECT * FROM Customers;