SELECT 
    mus.nome_musica AS cancao,
    COUNT(his.usuario_id) AS reproducoes
FROM
    SpotifyClone.historico_de_musicas AS his
        INNER JOIN
    SpotifyClone.musicas AS mus ON mus.musica_id = his.musica_id
GROUP BY
	mus.nome_musica
ORDER BY
	reproducoes DESC, cancao
LIMIT 2;