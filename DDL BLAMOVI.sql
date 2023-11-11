CREATE database bd_blamovi; /* comentario */
/*use o banco de dadis selecionado */

USE bd_blamovi;

CREATE TABLE tb_usuario(
	id_usuario BINARY(30) NOT NULL,
	nome VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    fone VARCHAR(30) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    nickname VARCHAR(30) NOT NULL UNIQUE,
    FOREING KEY(id_usuario),
	PRIMARY KEY(id_post)
);

CREATE TABLE tb_filmes(
	id_filmes BINARY(16) NOT NULL UNIQUE,
	titulo VARCHAR(255) NOT NULL,
	elenco VARCHAR(255) NOT NULL,
	genero VARCHAR(255) NOT NULL,
    classificacao VARCHAR(255) NOT NULL,
    diretor VARCHAR(255) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL UNIQUE,
    duracao VARCHAR(255) NOT NULL,
	FOREIGN KEY(id_usuario),
	PRIMARY KEY(id_filmes)
);

CREATE TABLE tb_series(
	id_series BINARY(16) NOT NULL UNIQUE,
	titulo VARCHAR(255) NOT NULL,
	elenco VARCHAR(255) NOT NULL,
	genero VARCHAR(255) NOT NULL,
    classificacao VARCHAR(255) NOT NULL,
    diretor VARCHAR(255) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL UNIQUE,
    duracao VARCHAR(255) NOT NULL,
	FOREIGN KEY(id_usuario),
	PRIMARY KEY(id_series)
);

CREATE TABLE tb_comentario(
	id_comentario BINARY(16) NOT NULL UNIQUE,
    TEXT VARCHAR(180) NOT NULL,
    FOREIGN KEY(id_post)
	FOREIGN KEY(id_usuario)
	PRIMARY KEY(id_comentario)
);
CREATE TABLE tb_post(
	id_comentario BINARY(16) NOT NULL UNIQUE,
    foto VARCHAR(255) NOT NULL UNIQUE,
    TEXT VARCHAR(280) NOT NULL,
    FOREIGN KEY(id_comentario),
	FOREIGN KEY(id_usuario),
	PRIMARY KEY(id_post)
);

CREATE TABLE tb_usuario_filme(
	id_filme BINARY(16) NOT NULL UNIQUE,
    foto VARCHAR(255) NOT NULL UNIQUE,
    TEXT VARCHAR(280) NOT NULL,
    FOREIGN KEY(id_usuario),
	PRIMARY KEY(id_filme)
);

CREATE TABLE tb_usuario_serie(
	id_serie BINARY(16) NOT NULL UNIQUE,
    foto VARCHAR(255) NOT NULL UNIQUE,
    TEXT VARCHAR(280) NOT NULL,
    FOREIGN KEY(id_usuario),
	PRIMARY KEY(id_serie)
);


