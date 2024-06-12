SELECT
  u1.nome AS usuario_1,
  u2.nome AS usuario_2
FROM
  amizades
  JOIN usuarios u1 ON amizades.usuario1_id = u1.id
  JOIN usuarios u2 ON amizades.usuario2_id = u2.id;