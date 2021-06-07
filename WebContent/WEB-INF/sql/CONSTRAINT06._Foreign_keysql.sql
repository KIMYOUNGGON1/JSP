USE test;

-- member
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- board
DROP TABLE MyTable18;
DROP TABLE MyTable17;

CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	t17Id VARCHAR(255) NOT NULL,
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id)
);

INSERT INTO MyTable17
(id, name)
VALUES
('donald', 'trump');

INSERT INTO MyTable18
(title, t17Id)
VALUES
('usa', 'donald');

SELECT * FROM MyTable18;

INSERT INTO Mytable18
(title, t17Id)
VALUES
('korea', 'kim');

DELETE FROM MyTable17
WHERE id = 'donald';

DELETE FROM MyTalbe18
WHERE t17Id = 'donald';

















