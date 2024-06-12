SELECT
	mg.grupo_id,
	COUNT(*) AS total_membros
FROM
	membros_grupo mg
GROUP BY
	mg.grupo_id
HAVING
	COUNT(*) > 10;
