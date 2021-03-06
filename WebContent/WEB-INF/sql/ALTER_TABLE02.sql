DESC Member;

DELETE FROM Member
WHERE id NOT IN ( SELECT id FROM ( SELECT id FROM Member GROUP BY id) AS id);

ALTER TABLE Member
ADD PRIMARY KEY (id);

ALTER TABLE Member
MODIFY COLUMN id VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN password VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN name VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN birth VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN inserted TIMESTAMP NOT NULL DEFAULT NOW();

INSERT INTO Member
(id, password, name, birth)
VALUES
('donald', 'trump', 'trump', '2011-01-01');

SELECT * FROM Member;
