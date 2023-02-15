SELECT 
	usu.nome_usuario AS usuario, 
    COUNT(his.data_reproducao) AS qt_de_musicas_ouvidas,
    ROUND(SUM(mus.duracao_segundos) / 60, 2) AS total_minutos
FROM 
	SpotifyClone.usuarios AS usu
		INNER JOIN
	SpotifyClone.historico_de_musicas AS his ON usu.usuario_id = his.usuario_id
		INNER JOIN 
	SpotifyClone.musicas AS mus ON mus.musica_id = his.musica_id
GROUP BY
	usu.nome_usuario
ORDER BY
	usu.nome_usuario;
		