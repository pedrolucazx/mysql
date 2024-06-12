SELECT
	u.*,
	p.texto
FROM
	usuarios u
LEFT JOIN posts p ON
	u.id = p.autor_id;