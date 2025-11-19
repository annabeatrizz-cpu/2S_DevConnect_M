
--DQL CONSULTAR REGISTROS

USE bd_DevConect

SELECT * FROM tb_publicacao

SELECT * FROM tb_usuario

--10/10 - Fase de projeto - DQL

--Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem será seguido) 
SELECT 
    seguidor.nome_usuario AS Seguidor,
    seguindo.nome_usuario AS Seguindo
FROM tb_seguidor usuario
JOIN tb_usuario seguidor ON usuario.id_seguidor = seguidor.id_usuario
JOIN tb_usuario seguindo ON usuario.id_seguindo = seguindo.id_usuario;

--Exiba quantos seguidores possui um respectivo usuário 1
SELECT COUNT(id_seguidor) AS qnt_seguidor FROM tb_seguidor
Where id_seguindo = '1'

--Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário 
SELECT
	Publi.id_publicacao,
	Publi.descricao,
	Publi.imagem_url,
	tb_usuario.nome_usuario
FROM tb_publicacao AS Publi
INNER JOIN tb_usuario ON Publi.id_usuario = tb_usuario.id_usuario;

--Exiba todas os comentarios com o nome e o texto de uma respectiva publicacao 

SELECT 
    usuario.nome_usuario AS NomeUsuario,
    publicacao.descricao AS Publicacao,
    comentario.texto     AS Comentario
FROM tb_comentario comentario 
JOIN tb_publicacao publicacao  ON comentario.id_publicacao = publicacao.id_publicacao
JOIN tb_usuario usuario        ON publicacao.id_usuario = usuario.id_usuario;


--Exiba a quantidade de curtidas em uma respectiva publicacao 

SELECT COUNT(id_publicacao) AS qnt_curtida FROM tb_curtida
Where id_publicacao = '1'

SELECT * FROM tb_curtida

--Exiba todos os usuarios que não fizeram uma publicacao 

SELECT 
	Usuario.nome_usuario,
	PB.data_publicacao
FROM tb_usuario Usuario
LEFT JOIN tb_publicacao PB ON Usuario.id_usuario = PB.id_usuario
WHERE
PB.id_usuario IS NULL;

SELECT * FROM tb_publicacao

--Exiba todos os usuarios que nao curtiram nada 
SELECT
    Usuario.nome_usuario
FROM
    tb_usuario Usuario
LEFT JOIN
    tb_curtida Curtida ON Usuario.id_usuario = Curtida.id_usuario
WHERE
    Curtida.id_usuario IS NULL;
