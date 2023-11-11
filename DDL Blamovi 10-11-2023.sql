CREATE database bd_Blamovi; /* comentario */
/*use o banco de dadis selecionado */

USE bd_Blamovi;

CREATE TABLE tb_usuario(
	id_usuario BINARY(16) NOT NULL,
    id_post BINARY(16) NOT NULL,
	nome VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    nickname VARCHAR(30) NOT NULL UNIQUE,
    avatar VARCHAR(255),
   FOREIGN KEY(id_suario)
	PRIMARY KEY(id_post)
);

CREATE TABLE tb_video(
	id_filmes BINARY(16) NOT NULL UNIQUE,
    id_comentarios BINARY(16) NOT NULL UNIQUE,
	titulo VARCHAR(255) NOT NULL,
	elenco VARCHAR(255) NOT NULL,
	genero VARCHAR(255) NOT NULL,
    classificacao VARCHAR(255) NOT NULL,
    diretor VARCHAR(255) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    temporada VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL UNIQUE,
    duracao VARCHAR(255) NOT NULL,
	FOREIGN KEY(id_comentarios)
	PRIMARY KEY(id_video)
);


CREATE TABLE tb_comentario(
	id_comentario BINARY(16) NOT NULL UNIQUE,
    id_usuario BINARY(16) NOT NULL UNIQUE,
    id_post BINARY(16) NOT NULL UNIQUE,
    TEXT VARCHAR(255) NOT NULL,
    FOREIGN KEY(id_post)
	FOREIGN KEY(id_usuario)
	PRIMARY KEY(id_comentario)
);
CREATE TABLE tb_post(
	id_comentario BINARY(16) NOT NULL UNIQUE,
    foto VARCHAR(255) NOT NULL UNIQUE,
    TEXT VARCHAR(280) NOT NULL,
    FOREIGN KEY(id_video)
	FOREIGN KEY(id_usuario)
	PRIMARY KEY(id_post)
);




