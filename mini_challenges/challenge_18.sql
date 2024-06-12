SELECT
	p.*,
	u.nome
FROM
	posts p
INNER JOIN usuarios u ON
	p.autor_id = u.id;