--DML ESTRUTURAR AS TABELAS

USE bd_DevConect

--REGISTRO TABELA USUÁRIO
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Anna Beatriz Arenas Henkel ', 'AnaBi', 'beatrizanna@gmail.com', 'AnnaBi', 'www.com.DevConnect/Anna-Beatriz');

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_usuario)
VALUES('Maria Eduarda dos Santos Cordeiro', 'Maduda', 'madudinha@gmail.com', 'mariaEdu', 'www.com.DevConnect/mariaEduarda'),
('Rafaela Meirelles Artico', 'Rafona', 'RafaArtico@gmail.com', 'RafaArtico', 'www.com.DevConnect/Rafa-Artico'),
('Anne Nicole de Lima Pereira', 'annex', 'Anne@gmail.com', 'Picanha!@#', 'www.com.DevConnect/AnneNicole'),
('Marhia Paula ', 'Mariaa', 'Mapa@gmail.com', 'MapaMarques', 'www.com.DevConnect/Mapa'),
('Kaua Fidalgo Droppa Garcia', 'k.Fidalgo', 'fidalgo@gmail.com', 'FidalgoBatata', 'www.com.DevConnect/fidalgo'),
('Julio Cesar', 'JU', 'Julio@gmail.com', 'CesarJulio', 'www.com.DevConnect/Juio');

SELECT * FROM tb_usuario

--REGISTRO TABELA USUÁRIO
INSERT INTO tb_publicacao(descricao, imagem_url, data_publicacao, id_usuario)
VALUES('em um passeio com os meus amigos', 'www.com.DevConnect/passeio', '2025/10/03', 1),
('Praia', 'www.com.DevConnect/AnaBi', '2025/11/19', 3),
(':)', 'www.com.DevConnect/k.Fidalgo', '2025/11/21', 6);

SELECT * FROM tb_publicacao


SELECT * FROM tb_comentario;



--REGISTRO CURTIDA
INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES(1,1);

INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(2,1),
(3,1);

SELECT * FROM tb_curtida;


--REGISTRO DA TABELA INTERMEDIARIA SEGUIDOR
INSERT INTO tb_seguidor(id_seguindo, id_seguidor)
VALUES(1,2);

INSERT INTO tb_seguidor(id_seguindo, id_seguidor)
VALUES
(1,5),
(2,6),
(6,3),
(5,3),
(5,2),
(4,1),
(3,2),
(1,3);

SELECT * FROM tb_seguidor