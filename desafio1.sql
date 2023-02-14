DROP DATABASE IF EXISTS SpotifyClone;  

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.planos(
	plano_id TINYINT AUTO_INCREMENT,
	nome_plano VARCHAR(13) NOT NULL ,
	valor_plano DECIMAL(3, 2) NOT NULL,
    CONSTRAINT PRIMARY KEY (plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos
	(nome_plano, valor_plano)
VALUE 
	('gratuito', 0.00),
	('familiar', 7.99),
	('universitário', 5.99),
	('pessoal', 6.99);

CREATE TABLE SpotifyClone.usuarios (
    usuario_id TINYINT AUTO_INCREMENT,
    nome_usuario VARCHAR(36) NOT NULL,
    idade TINYINT NOT NULL,
    plano_id TINYINT NOT NULL, 
    data_assinatura DATETIME,
    CONSTRAINT PRIMARY KEY (usuario_id),
	FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos(plano_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios 
	(nome_usuario, idade, plano_id, data_assinatura)
VALUE 
     ('Barbara Liskov', '82', 1, '2019-10-20'),
     ('Robert Cecil Martin', '58', '1', '2017-01-06'),
     ('Ada Lovelace', '37', '2', '2017-12-30'),
     ('Martin Fowler', '46', '2', '2017-01-17'),
     ('Sandi Metz', '58', '2', '2018-04-29'),
     ('Paulo Freire', '19', '3', '2018-02-14'),
     ('Bell Hooks', '26', '3', '2018-01-05'),
     ('Christopher Alexander', '85', '4', '2019-06-05'),
     ('Judith Butler', '45', '4', '2020-05-13'),
     ('Jorge Amado', '58', '4', '2017-02-17');
     
--   CREATE TABLE SpotifyClone.albuns(

--   ) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas(
	album_id TINYINT, -- FOREING KEY da tabela albums
	musica_id TINYINT AUTO_INCREMENT,
	nome_musica VARCHAR(36) NOT NULL,
	duracao_segundos SMALLINT NOT NULL,
    CONSTRAINT
		PRIMARY KEY (musica_id)	
) engine = InnoDB;

INSERT INTO SpotifyClone.musicas 
	(album_id, nome_musica, duracao_segundos)
VALUE
    ('1', 'BREAK MY SOUL', '279'),
    ('1', 'VIRGO’S GROOVE', '369'),
    ('1', 'ALIEN SUPERSTAR', '116'),
    ('2', 'Don’t Stop Me Now', '203'),
    ('3', 'Under Pressure', '152'),
    ('4', 'Como Nossos Pais', '105'),
    ('5', 'O Medo de Amar é o Medo de Ser Livre', '207'),
    ('6', 'Samba em Paris', '267'),
    ('7', 'The Bard’s Song', '244'),
    ('8', 'Feeling Good', '100');

CREATE TABLE SpotifyClone.historico_de_musicas(
	usuario_id TINYINT,
    musica_id TINYINT NOT NULL, -- FOREING KEY da tabela musicas
    data_reproducao DATETIME NOT NULL,
    CONSTRAINT
		PRIMARY KEY (usuario_id, musica_id),
        FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id)
  ) engine = InnoDB;

INSERT INTO SpotifyClone.historico_de_musicas
	(usuario_id, musica_id, data_reproducao)
VALUE 
	('1', '8', '2022-02-28 10:45:55'),
	('1', '2', '2020-05-02 05:30:35'),
	('1', '10', '2020-03-06 11:22:33'),
	('2', '10', '2022-08-05 08:05:17'),
	('2', '7', '2020-01-02 07:40:33'),
	('3', '10', '2020-11-13 16:55:13'),
	('3', '2', '2020-12-05 18:38:30'),
	('4', '8', '2021-08-15 17:10:10'),
	('5', '8', '2022-01-09 01:44:33'),
	('5', '5', '2020-08-06 15:23:43'),
	('6', '7', '2017-01-24 00:31:17'),
	('6', '1', '2017-10-12 12:35:20'),
	('7', '4', '2011-12-15 22:30:49'),
	('8', '4', '2012-03-17 14:56:41'),
	('9', '9', '2022-02-24 21:14:22'),
	('10', '10', '2015-12-13 08:30:22');

-- CREATE TABLE SpotifyClone.artistas_seguidos(
 	
--   ) engine = InnoDB;

--   CREATE TABLE SpotifyClone.artistas(

--   ) engine = InnoDB;


-- CREATE TABLE SpotifyClone.tabela2(
--   coluna1 tipo restricoes,
--   coluna2 tipo restricoes,
--   colunaN tipo restricoes,
-- ) engine = InnoDB;