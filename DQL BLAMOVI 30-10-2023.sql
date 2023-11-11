/* DQL */

USE bd_blamovi;

SELECT MIN(duracao) FROM tb_video;

SELECT MAX(duracao) FROM tb_video;

SELECT titulo, duracao, sinopse, elenco, diretor FROM tb_video WHERE duracao = (SELECT MIN(duracao) FROM tb_video);

SELECT COUNT(id_video) FROM tb_video;

/*SELECT COUNT(id_servico), status_servico FROM tb_servicos WHERE status_servico = "Em andamento";

SELECT COUNT(id_servico), status_servico FROM tb_servicos GROUP BY status_servico;

SELECT SUM(proposta) FROM tb_servicos;

SELECT * FROM tb_servicos WHERE tb_servicos.titulo LIKE "Dashboard";

SELECT titulo FROM tb_servicos ORDER BY titulo ASC;

SELECT proposta FROM tb_servicos ORDER BY proposta DESC;*/

/*INNER JOIN*/
SELECT titulo, tb_video FROM tb_video INNER JOIN tb_elenco.nomeElenco, tb_elenco.fotoElenco, tb_texto;

SELECT * FROM tb_comentario INNER JOIN tb_video ON tb_curtidas.id_video = tb_post.id_usuario
INNER JOIN tb_usuarios ON tb_comentario.id_video = tb_curtida.id_video;

SELECT tb_post.texto,tb_post.foto, tb_usuarios.nome FROM tb_post 
INNER JOIN tb_comentarios ON tb_comentarios.id_usuario = tb_comentario.id_comentario
INNER JOIN tb_video ON tb_usuario.idu_suario;
/*       */
SELECT * FROM tb_usuario INNER JOIN tb_post ON tb_usuario.id_usuario = tb_post.id_usuario;
SELECT * FROM 




/*DQL */