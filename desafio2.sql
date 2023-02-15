SELECT 
    COUNT(DISTINCT mus.nome_musica) AS cancoes,
    COUNT(DISTINCT alb.nome_album) AS albuns, 
    COUNT(DISTINCT art.nome_artista) AS artistas
FROM
    SpotifyClone.musicas AS mus
        INNER JOIN
    SpotifyClone.albuns AS alb ON mus.album_id = alb.album_id
		INNER JOIN
	SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id;
