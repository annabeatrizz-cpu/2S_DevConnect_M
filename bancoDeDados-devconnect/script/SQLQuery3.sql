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
);
GO

SELECT * FROM tb_publicaçao;



CREATE TABLE tb_curtida(
id                  INT            IDENTITY(1, 1) PRIMARY KEY,
usuario             NVARCHAR(50)   NOT NULL,
publicaçao          NVARCHAR(255)  NOT NULL,
);
GO

SELECT * FROM tb_curtida;



CREATE TABLE tb_comentario(
id               INT            IDENTITY(1, 1) PRIMARY KEY,
publicaçao       NVARCHAR(255)  NOT NULL,
texto            NVARCHAR(50)   NULL,
data_publicaco   DATE           NOT NULL
);
GO

SELECT * FROM tb_comentario;
