--DDL
CREATE DATABASE db_devconnect;
GO

USE db_devconnect;
GO


	CREATE TABLE tb_usuario(
	id                  INT            IDENTITY(1, 1) PRIMARY KEY,
	nome_completo       NVARCHAR(255)  NOT NULL,
	nome_usuario        NVARCHAR(50)   NOT NULL,
	email               NVARCHAR(255)  NOT NULL,
	Senha               NVARCHAR(50)   NOT NULL,
	foto_perfil_url     NVARCHAR(150)  NULL
	);
	GO

SELECT * FROM tb_usuario;



	CREATE TABLE tb_publicaçao(
	id                  INT            IDENTITY(1, 1) PRIMARY KEY,
	nome_usuario        NVARCHAR(50)   NOT NULL,
	descricao           NVARCHAR(255)  NOT NULL,
	imagem_url          NVARCHAR(150)  NULL,
	data_publicaco      DATE           NOT NULL

	FOREIGN KEY(id_ususario) REFERENCES tb_usuario(id)
	);

SELECT * FROM tb_publicaçao;


	CREATE TABLE tb_curtida(
	id_curtida           INT            IDENTITY(1, 1) PRIMARY KEY,
	usuario             NVARCHAR(50)   NOT NULL,
	publicaçao          NVARCHAR(255)  NOT NULL,

	FOREIGN KEY(id_ususario) REFERENCES tb_usuario(id),

	FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao(id),
);


SELECT * FROM tb_curtida;



	CREATE TABLE tb_comentario(
	id_comentario              INT            IDENTITY(1, 1) PRIMARY KEY,
	texto            NVARCHAR(50)   NULL,
	data_coment   DATE           NOT NULL,
	id_usuario    INT            NOT NULL,
	id_publicacao INT            NOT NULL,

	FOREIGN KEY(id_usuario) REFERENCES tb_ususario(id),

	FOREIGN KEY(id_publicacao) REFERENCES tb_publicacao (id),
);


    SELECT * FROM tb_comentario;

	CREATE TABLE tb_seguidor(
	id_ususario INT NOT NULL,
	id_seguir INT NOT NULL,

	PRIMARY KEY(id_usuario, id_seguir)
	FOREIGN KEY  (id_usuario) REFERENCES tb_usuario(id),
    FOREIGN KEY (id_seguir) REFERENCES tb_seguidor(id)
);

SELECT * FROM tb_seguidor;