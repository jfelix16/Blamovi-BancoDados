USE bd_vsconnect;

INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "css");

SELECT BIN_TO_UUID(id_techs), nome FROM tb_techs;

INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
	"Odair",
	"odair@email.com",
	"senai",
	"rua Niteroi,180",
	"123456078",
	1
);

INSERT INTO tb_techs VALUES(
	UUID_TO_BIN(UUID()),
	"Python"
	
);

SELECT BIN_TO_UUID(id_techs), nome FROM tb_techs;



SELECT  * FROM tb_usuarios;

SELECT BIN_TO_UUID(id_usuario), nome, tipo_usuario FROM tb_usuarios;
DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("cdb42874-6edc-11ee-8397-abb6d746e70");

UPDATE tb_usuarios
SET tipo_usuario =1
WHERE id_usuario = UUID_TO_BIN("3995dca8-6ed9-11ee-8397-a4bb6d746e70");

INSERT INTO tb_dev_tech VALUES(UUID_TO_BIN("1aa894eb-6f9b-11ee-82ff-b445067b87b2"), UUID_TO_BIN("70adaa03-6ed8-11ee-82ff-b445067b87b2");

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("59ffb658-6d20-11ee-a7da-a4bb6d747a0f"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("59ffb658-6d20-11ee-a7da-a4bb6d747a0f"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("59ffb658-6d20-11ee-a7da-a4bb6d747a0f"), NULL);

INSERT INTO tb_servicos VALUES
  (UUID_TO_BIN(UUID)()), "Dashboard", "Desenvolver uma dasboard com informacoes importantes do nosso controle de vendas.",
  (UUID_TO_BIN(UUID)()), "Desenvolver um site institucional - Gateway de pagamento / Fintech", "Desenvolver um site responsivo",
  (UUID_TO_BIN(UUID)()), "Preciso de estrutura de uma Home Page", "Preciso fazer uma tela somente estrutura em em Html para ",
  
  SELECT BIN_TO_UUID(id_servico), titulo FROM tb_servicos;
  
  INSERT INTO tb_cotacao VALUES(
  UUID_TO_BIN(UUID()),
  1000.00,
  UUID_TO_BIN("d17053bd-6edc-11ee-8397-a4bb6d746e70"), /* id do DEV*/
  UUID_TO_BIN("6d749cc8-6ee2-11ee-8397-a4bb6d746e70"), /* id do servico*/
  ),
  
  INSERT INTO tb_tech_servico VALUES(UUID_TO_BIN("2c1533dc-6ed8-11ee-8397-a4bb6d746e70"),
  
