--DDL DevConnect

--DDL CRIAR OS BANCOS

CREATE DATABASE bd_DevConect


	USE bd_DevConect

	--TABELA USUARIO
	CREATE TABLE tb_usuario(
	id_usuario				INT					IDENTITY (1,1)		PRIMARY KEY
	,nome_completo			NVARCHAR(255)		NOT NULL
	,nome_usuario			NVARCHAR(50)		NOT NULL			UNIQUE
	,email					NVARCHAR(255)		NOT NULL			UNIQUE				
	,senha					NVARCHAR(50)		NOT NULL
	,foto_perfil_usuario	NVARCHAR(150)		NULL
	);

	SELECT * FROM tb_usuario


	--TABELA PUBLICAÇÃO
	CREATE TABLE tb_publicacao(
	id_publicacao		INT				IDENTITY (1,1)	PRIMARY KEY
	,descricao			NVARCHAR(280)	NOT NULL
	,imagem_url			NVARCHAR(150)	NULL
	,data_publicacao	DATE			NOT NULL
	,id_usuario			INT				NOT NULL

	FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario)
	);

	SELECT * FROM tb_publicacao


	--TABELA COMENTARIO
	CREATE TABLE tb_comentario(
	id_comentario		INT				IDENTITY (1,1)	PRIMARY KEY
	,texto				NVARCHAR(1000)	NOT NULL
	,data_comentario	DATETIME2		NOT NULL
	,id_publicacao      INT				NOT NULL

	FOREIGN KEY (id_publicacao)	REFERENCES tb_publicacao(id_publicacao)
	);

	ALTER TABLE tb_comentario
	ALTER COLUMN data_comentario DATETIME2 NOT NULL;


	SELECT * FROM tb_comentario


	--TABELA CURTIDA
	CREATE TABLE tb_curtida(
	id_curtida		INT		IDENTITY (1,1)	PRIMARY KEY

	,id_usuario INT		NOT NULL
	FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario)

	,id_publicacao INT		NOT NULL
	FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id_publicacao)
	);

	SELECT * FROM tb_curtida



	--TABELA SEGUIDOR - TABELA INTERMEDIÁRIA
	CREATE TABLE tb_seguidor(
	id_seguindo INT NOT NULL
	,id_seguidor INT NOT NULL

	PRIMARY KEY(id_seguindo, id_seguidor)
	FOREIGN KEY (id_seguidor) REFERENCES tb_usuario(id_usuario),
	FOREIGN KEY (id_seguindo) REFERENCES tb_usuario(id_usuario)
	);

	SELECT * FROM tb_seguidor









