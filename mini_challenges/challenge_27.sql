SELECT
	*
FROM
	posts p
WHERE
	(
	SELECT
		COUNT(*)
	FROM
		usuarios u
) = ALL (
	SELECT
		COUNT(*)
	FROM
		likes l
	WHERE
		l.post_id = p.id
);