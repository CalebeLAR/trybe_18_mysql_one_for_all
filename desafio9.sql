SELECT 
	COUNT(his.musica_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_de_musicas AS his
        INNER JOIN
    SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
GROUP BY
	usu.nome_usuario
HAVING
	usu.nome_usuario = 'Barbara Liskov';