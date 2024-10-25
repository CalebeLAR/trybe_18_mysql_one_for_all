SELECT 
	MIN(pla.valor_plano) AS faturamento_minimo,
	MAX(pla.valor_plano) AS faturamento_maximo,
	ROUND(AVG(pla.valor_plano), 2) AS faturamento_medio,
    SUM(pla.valor_plano) AS faturamento_total
FROM
    SpotifyClone.usuarios AS usu
        INNER JOIN
    SpotifyClone.planos AS pla ON pla.plano_id = usu.plano_id;

