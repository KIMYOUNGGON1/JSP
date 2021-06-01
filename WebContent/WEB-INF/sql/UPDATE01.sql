SELECT * FROM Customers;

UPDATE Customers
SET CustomerName = '스파이더맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = '아이언맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	ContactName = 'odinson',
    Address = 'Asgard'
WHERE CustomerID = 1;


UPDATE
 Customers
SET
 City = 'Oslo';


UPDATE
 Customers
SET
 City = 'seoul'
WHERE
 Country = 'Norway';


UPDATE
 Customers
SET
 City = 'Oslo',
 Country = 'Norway'
WHERE CustomerID = 32;

SELECT * FROM Employees

















