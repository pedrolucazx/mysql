SELECT
	u.*,
	p.texto
FROM
	posts p
JOIN usuarios u ON
	p.autor_id = u.id;