SELECT
  p.texto
FROM
  posts p
UNION
SELECT
  mp.texto
FROM
  mensagens_privadas mp;