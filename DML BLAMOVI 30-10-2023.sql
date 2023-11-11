/*DML */

USE bd_blamovi;

/*INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "css");*/

/*INSERT INTO tb_techs VALUES
	(UUID_TO_BIN(UUID()), "html"),
    (UUID_TO_BIN(UUID()), "css");*/
    
SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Odirlei",
    "odirlei@email.com",
    "senai",
    "Odin01",
    "20/10/2010",
    0
);
INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai",
    "Odin02",
    "20/10/2010",
    0
);
INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Aléxia",
    "alexia@email.com",
    "senai",
    "Odin03",
    "20/10/2010",
    0
);

SELECT * FROM tb_usuarios;

SELECT BIN_TO_UUID(id_usuario), nome FROM tb_usuarios;
/*SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;*/


/*DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("cdb42874-6edc-11ee-8397-a4bb6d746e70");

UPDATE tb_usuarios 
SET tipo_usuario = 1
WHERE id_usuario = UUID_TO_BIN("3995dca8-6ed9-11ee-8397-a4bb6d746e70");

INSERT INTO tb_dev_tech VALUES(UUID_TO_BIN("d17053bd-6edc-11ee-8397-a4bb6d746e70"), UUID_TO_BIN("2c1533dc-6ed8-11ee-8397-a4bb6d746e70"));
INSERT INTO tb_dev_tech VALUES(UUID_TO_BIN("d17053bd-6edc-11ee-8397-a4bb6d746e70"), UUID_TO_BIN("f27ac791-6ed7-11ee-8397-a4bb6d746e70"));*/

INSERT INTO tb_video VALUES
    (UUID_TO_BIN(UUID()), "Duro de Matar 7", "Conta a história de um cabra que não morre de jeito nenhum(vaso ruím não quebra.", "Zé nínguém", "Ficção", "130 min","sem temporadas","2050"),
    (UUID_TO_BIN(UUID()), "Duro de Matar 8", "Conta a história de um cabra que não morre de jeito nenhum(vaso ruím não quebra.", "Zé nínguém", "Ficção", "130 min","sem temporadas","2052"),
    (UUID_TO_BIN(UUID()), "Duro de Matar 9", "Conta a história de um cabra que não morre de jeito nenhum(vaso ruím não quebra.", "Zé nínguém", "Ficção", "130 min","sem temporadas","2050"),
SELECT BIN_TO_UUID(id_video), titulo,sinopse,duracao, genero FROM tb_video;


INSERT INTO tb_comentarios VALUES
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear."),
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear."),
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear."),  
SELECT BIN_TO_UUID(id_comentario), texto FROM tb_comentario;

/*post*/
INSERT INTO tb_post VALUES
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear.","ISSO SUSBSTITUI A FOTO"),
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear.","ISSO SUSBSTITUI A FOTO"),
(UUID_TO_BIN(UUID()),"O detetive John McClane viaja para a Rússia para tentar ajudar o filho, Jack. Lá, ele descobre que o rapaz trabalha para a CIA e está tentando evitar uma guerra nuclear.","ISSO SUSBSTITUI A FOTO"),
SELECT BIN_TO_UUID(id_post), texto, foto FROM tb_post;
/* fim post*/