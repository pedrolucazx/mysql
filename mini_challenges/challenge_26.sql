SELECT
	*
FROM
	usuarios u
WHERE
	EXISTS (
	SELECT
		1
	FROM
		posts p
	WHERE
		p.autor_id = u.id);