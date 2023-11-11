CREATE database bd_vsconnect; /* comentario */
/*use o banco de dadis selecionado */

USE bd_vsconnect;

CREATE TABLE tb_techs(
	id_techs BINARY(16) NOT NULL,
	nome VARCHAR(50) NOT NULL UNIQUE,
	PRIMARY KEY(id_techs)
);

/*DROP TABLE tb_techs;*/

CREATE TABLE tb_usuarios(
	id_usuario BINARY(16) NOT NULL,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	senha VARCHAR(255) NOT NULL,
	endereco VARCHAR(255),
	cep VARCHAR(9),
	tipo_usuario TINYINT NOT NULL,
	PRIMARY KEY(id_usuario)
);

CREATE TABLE tb_dev_techs(
	id_dev BINARY(16) NOT NULL,
	id_tech BINARY(16) NOT NULL,
	FOREIGN KEY(id_dev) REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY(id_tech) REFERENCES tb_techs(id_techs)
);

CREATE TABLE tb_servicos(
id_servico BINARY(16) NOT NULL,
titulo VARCHAR(255) NOT NULL,
descricao TEXT NOT NULL,
proposta DECIMAL(10,2) NOT NULL,
id_cliente BINARY(16) NOT NULL,
id_dev BINARY(16),
PRIMARY KEY(id_servico),
FOREIGN KEY(id_cliente) REFERENCES tb_usuarios(id_usuario),
FOREIGN KEY(id_dev) REFERENCES tb_usuarios(id_usuario)
);


CREATE TABLE tb_cotacao(
	id_cotacao BINARY(16) NOT NULL,
	valor DECIMAL(10,2) NOT NULL,
    id_dev BINARY(16) NOT NULL,
    id_servico BINARY(16) NOT NULL,
    PRIMARY KEY(id_cotacao),
	FOREIGN KEY(id_dev) REFERENCES tb_usuarios(id_usuario),
	FOREIGN KEY(id_servico) REFERENCES tb_servicos(id_servico)
);

CREATE TABLE tb_techs_servico(
	id_tech BINARY(16) NOT NULL,
	id_servico BINARY(16) NOT NULL,
  	FOREIGN KEY(id_tech) REFERENCES tb_techs(id_techs),
	FOREIGN KEY(id_servico) REFERENCES tb_servicos(id_servico)
);


.


