SELECT
  MIN(p.data_publicacao) AS primeiro_post,
  MAX(p.data_publicacao) AS ultimo_post
FROM
  posts p
WHERE
  autor_id = 1;