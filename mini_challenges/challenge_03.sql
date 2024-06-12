USE rede_social;

SELECT
  *
FROM
  posts p
WHERE
  (
    p.texto LIKE '%Grupo%'
    AND data_publicacao > "2024-06-09 18:14:48"
  )
  OR autor_id = 1;