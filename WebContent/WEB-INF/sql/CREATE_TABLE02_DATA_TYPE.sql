-- data type

-- number
-- INT, DECIMAL(소수점까지 저장),
CREATE TABLE MyTable3
(
	Col1 INT,
    Col2 DECIMAL
);
INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);
SELECT * FROM MyTable3;
DESC MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    Col3 DECIMAL(3, 1)
);
INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);
SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 33.1); -- ok

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 333.1); -- not ok

-- char(String)
CREATE TABLE MyTable5
(
	Col1 CHAR(5), -- 고정 자리수
    Col2 VARCHAR(5)  -- 가변 자리수
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc', 'abc');

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abcdef', 'abcde');

SELECT * FROM MyTable5;










-- date, datetime