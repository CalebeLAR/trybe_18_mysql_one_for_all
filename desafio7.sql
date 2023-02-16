SELECT 
	DISTINCT art.nome_artista AS artista,
	alb.nome_album AS album,
    COUNT(seg.usuario_id) AS seguidores
FROM
    SpotifyClone.albuns AS alb
        INNER JOIN
    SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
		INNER JOIN
	SpotifyClone.usuario_segue AS seg ON seg.artista_id = art.artista_id
GROUP BY
	art.artista_id, alb.album_id
ORDER BY
	seguidores DESC, artista, album;