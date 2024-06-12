SELECT
  u.nome,
  g.nome
FROM
  usuarios u
  CROSS JOIN grupos g;