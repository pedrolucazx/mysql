SELECT
	*
FROM
	posts p
WHERE
	data_publicacao > '2023-01-01'
	AND (
	SELECT
		COUNT(*)
	FROM
		likes l
	WHERE
		l.post_id = p.id) > 10;
