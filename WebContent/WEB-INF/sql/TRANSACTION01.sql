USE Practice;

SELECT * FROM Member;
SELECT * FROM Board;

UPDATE Board
SET title = ?,
	body = ?
WHERE id = ?