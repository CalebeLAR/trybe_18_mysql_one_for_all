SELECT
	art.nome_artista AS artista,
    alb.nome_album AS album
FROM
    SpotifyClone.albuns AS alb
        INNER JOIN
    SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id
WHERE
	art.nome_artista = 'Elis Regina';