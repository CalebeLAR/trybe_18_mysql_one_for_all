DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.usuarios (
    usuario_id INT AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    idade TINYINT NOT NULL,
    plano_id TINYINT NOT NULL,
    data_assinatura DATETIME,
    CONSTRAINT PRIMARY KEY (usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios 
	(nome_usuario, idade, plano_id, data_assinatura)
VALUE 
     ('Barbara Liskov', '82', '1', '2019-10-20'),
     ('Robert Cecil Martin', '58', '1', '2017-01-06'),
     ('Ada Lovelace', '37', '2', '2017-12-30'),
     ('Martin Fowler', '46', '2', '2017-01-17'),
     ('Sandi Metz', '58', '2', '2018-04-29'),
     ('Paulo Freire', '19', '3', '2018-02-14'),
     ('Bell Hooks', '26', '3', '2018-01-05'),
     ('Christopher Alexander', '85', '4', '2019-06-05'),
     ('Judith Butler', '45', '4', '2020-05-13'),
     ('Jorge Amado', '58', '4', '2017-02-17');

-- CREATE TABLE SpotifyClone.planos(
-- 	plano_id ,
-- 	nome_plano,
-- 	valor_plano,
-- ) engine = InnoDB;


-- CREATE TABLE SpotifyClone.historico_de_musicas(

--   ) engine = InnoDB;
--   CREATE TABLE SpotifyClone.artistas_seguidos(

--   ) engine = InnoDB;
--   CREATE TABLE SpotifyClone.artistas(

--   ) engine = InnoDB;
--   CREATE TABLE SpotifyClone.albuns(

--   ) engine = InnoDB;
--   CREATE TABLE SpotifyClone.musicas(

--   ) engine = InnoDB;

-- CREATE TABLE SpotifyClone.tabela2(
--   coluna1 tipo restricoes,
--   coluna2 tipo restricoes,
--   colunaN tipo restricoes,
-- ) engine = InnoDB;

