/*DDL */

CREATE DATABASE bd_blamovi;

/*Usa o banco de dados selecionado*/
USE bd_blamovi;



CREATE TABLE tb_usuarios(
	id_usuario BINARY(16) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    nickname TINYINT NOT NULL unique,
    nascimento DATE,
    PRIMARY KEY(id_usuario)
);

CREATE TABLE tb_post(
	id_post BINARY(16) NOT NULL,
    texto VARCHARL(255),
    foto VARCHAR(255),
    FOREIGN KEY(id_usuario) REFERENCES tb_usuarios(id_usuarios),
    FOREIGN KEY(id_comentario) REFERENCES tb_comentario(id_comentario),
    PRIMARY KEY(id_post)
);


CREATE TABLE tb_curtida(
	id_curtida BINARY(16) NOT NULL,
    FOREIGN KEY(id_video) REFERENCES tb_video(id_video)
    PRIMARY KEY(id_curtida)
);

CREATE TABLE tb_video(
	id_video BINARY(16) NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    diretor VARCHAR(30) NOT NULL,
    genero VARCHAR(30) not NULL,
    duracao VARCHAR(30) not NULL,
    temporada VARCHAR(30) not NULL,
    
    ano YEAR NOT NULL,
    id_cliente BINARY(16) NOT NULL,
    id_dev BINARY(16),
    PRIMARY KEY(id_video),
    FOREIGN KEY(id_usuario) REFERENCES tb_usuarios(id_usuario),
    FOREIGN KEY(id_comentario) REFERENCES tb_comentario(id_comentario),
    FOREIGN KEY(id_curtida) REFERENCES tb_curtida(id_curtida),
    FOREIGN KEY(id_elenco) REFERENCES tb_elenco(id_elenco)
);

CREATE TABLE tb_comentarios(
	id_comentarios BINARY(16) NOT NULL,
    texto VARCHARL(255),
    PRIMARY KEY(id_comentarios),
    FOREIGN KEY(id_post) REFERENCES tb_post(id_post),
    
);

CREATE TABLE tb_elenco(
	id_elenco BINARY(16) NOT NULL,
  foto_elenco VARCHAR(255) NOT NULL,
  nome_elenco VARCHAR(30) NOT NULL,
  papel_elenco VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_elenco) ,
    FOREIGN KEY(id_video) REFERENCES tb_video(id_video)
);
