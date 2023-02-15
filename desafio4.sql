SELECT 
	usu.nome_usuario AS usuario,
	IF (MAX(DATE(his.data_reproducao)) > '2021-01-01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM 
	SpotifyClone.historico_de_musicas AS his
		INNER JOIN
	SpotifyClone.usuarios AS usu ON his.usuario_id = usu.usuario_id
GROUP BY
	usu.nome_usuario
ORDER BY
	usuario;