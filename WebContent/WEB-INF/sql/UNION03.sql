USE test;

SELECT * FROM Customers;
SELECT * FROM Suppliers;

SELECT Country From Customers
UNION
SELECT Country FROM Suppliers
ORDER BY Country;