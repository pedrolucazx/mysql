SELECT
	CASE
		WHEN u.nome IS NULL THEN 'Usuário Anônimo'
		ELSE u.nome
	END AS nome_autor,
	p.texto
FROM
	posts p
LEFT JOIN usuarios u ON
	p.autor_id = u.id;
