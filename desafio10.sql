SELECT 
    mus.nome_musica AS nome,
    COUNT(his.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas AS mus
        INNER JOIN
    SpotifyClone.historico_de_musicas AS his ON his.musica_id = mus.musica_id
		INNER JOIN 
	SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
WHERE
	usu.plano_id = 4 OR usu.plano_id = 1
GROUP BY
	nome
ORDER BY
	nome;