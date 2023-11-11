USE bd_vsconnect;

SELECT MIN(proposta) FROM tb_servicos;

SELECT max(proposta) FROM tb_servicos;

SELECT titulo, proposta FROM tb_servicos WHERE proposta = SELECT MIN(proposta) FROM tb_servicos;

SELECT COUNT()(id_servico) FROM tb_servicos;

SELECT COUNT(id_servico), status_servico FROM tb_servicos WHERE status_servico ="Em andamento";

SELECT COUNT(id_servico), status_servico FROM tb_servicos GROUP BY status_servicos;

FROM tb_servicos GROUP BY status_servico FROM tb_servicos GROUP BY status_servicoç

SELECT SUM(proposta) FROM tb_servicosç

SELECT * FROM tb_servicos ORDER BY titulo ASC;

SELECT proposta FROM tb_servicos ORDER BY proposta DESC;

/* INNER JOIN */
SELECT titulo, tb_techs.nome FROM tb_servicos INNER JOIN tb_techs;

SELECT* FROM tb_cotacao INNER JOIN tb_servicos ON tb_cotacao.id_servico = tb_servicos.id_servico
INNER JOIN tb_usuarios ON tb_cotacao.id_dev = tb_usuarios.id_usuario;







