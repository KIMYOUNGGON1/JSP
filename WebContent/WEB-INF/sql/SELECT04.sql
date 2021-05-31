SELECT CustomerName FROM Customers
WHERE CustomerID = 1;

SELECT CustomerName, City
FROM Customers
WHERE CustomerID = 1;

SELECT CustomerID, CustomerName, City
FROM Customers
WHERE CustomerID = 2;

SELECT CustomerID
FROM Customers;

SELECT * 
FROM Employees
WHERE EmployeeID = 1;

SELECT DISTINCT City FROM Customers
ORDER By City;

SELECT CustomerName, City FROM Customers
WHERE CustomerID = 3;

SELECT * FROM Employees;


SELECT * FROM Employees 
WHERE EmPloyeeID = 3;

SELECT EmployeeID, LastName, FirstName 
FROM Employees;

SELECT EmployeeID, LastName, FirstName, Notes 
FROM Employees;