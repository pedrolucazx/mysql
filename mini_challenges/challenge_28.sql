CREATE TABLE IF NOT EXISTS posts_backup LIKE posts;

INSERT
	INTO
	posts_backup
SELECT
	*
FROM
	posts p
WHERE
	p.autor_id = 1;