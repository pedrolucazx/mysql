SELECT
  u.nome AS Autor,
  p.texto AS Conteúdo
FROM
  posts p
  JOIN usuarios u ON p.autor_id = u.id;