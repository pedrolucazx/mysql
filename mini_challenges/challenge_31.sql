CREATE VIEW popular_posts AS
SELECT
	u.nome AS autor,
	p.texto,
	COUNT(l.id) AS total_likes
FROM
	posts p
JOIN usuarios u ON
	p.autor_id = u.id
LEFT JOIN likes l ON
	p.id = l.post_id
GROUP BY
	p.id,
	u.nome
HAVING
	total_likes > 10;