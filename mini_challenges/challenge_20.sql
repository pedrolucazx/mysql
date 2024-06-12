SELECT
	p.*,
	u.nome
FROM
	usuarios u
RIGHT JOIN posts p ON
	p.autor_id = u.id
  