-- WHERE : row를 조건으로 필터
SELECT * FROM Customers WHERE Country="Mexico";

SELECT * FROM Customers WHERE CustomerID= 1;

SELECT * FROM Products WHERE Price = 18;

SELECT * FROM Products WHERE Price >30;

SELECT * FROM Products WHERE Price <30;

SELECT * FROM Products WHERE Price <=30;

SELECT * FROM Products WHERE Price >=30;

SELECT * FROM Products WHERE Price <>30;

SELECT * FROM Products WHERE Price !=30;

SELECT * FROM Products WHERE Price BETWEEN 53 AND 55;

-- like
SELECT * FROM Customers WHERE City LIKE 'S%'; -- 대소문자 구분 안함
-- 앞에 글자가 있다면

SELECT * FROM Customers WHERE City LIKE '%g'; -- 뒤에 글자가 있다면

SELECT * FROM Customers WHERE City like'%z%'; -- 중간에 z가 있다면alter

SELECT * FROM Customers WHERE Country LIKE '%US%'; -- 여러 캐릭터 선언가능

-- IN 
SELECT * FROM Customers WHERE City IN ('paris', 'London');

SELECT * FROM Customers WHERE City IN ('paris', 'London', 'Berlin');

SELECT * FROM Customers WHERE City = "Berlin";

SELECT * FROM Customers WHERE NOT City = "Berlin";

SELECT * FROM Country WHERE NOT City LIKE "%on";

SELECT * FROM Customers WHERE CustomerID = 32;

-- AND
SELECT * FROM Customers WHERE Country = "Germany" AND City = "Berlin";

-- OR
SELECT * FROM Customers WHERE City = "Berlin" OR City= "München";

SELECT * FROM Customers WHERE Country = "Germany" OR (CustomerName LIKE "%s%" AND City LIKE "%ch%");

SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- NOT
SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';














