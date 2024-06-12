SELECT
	p.autor_id,
	COUNT(*) AS total_posts
FROM
	posts p
GROUP BY
	p.autor_id;

