-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!


/* para workbench - local - desenvolvimento */
create DATABASE doem;

USE doem;

CREATE TABLE tb_usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    email VARCHAR(50),
	cpf VARCHAR(14),
    celular VARCHAR(20),
	senha VARCHAR(50)
);
select * from tb_usuario;

CREATE TABLE tb_doacao(
	id_doacao INT PRIMARY KEY AUTO_INCREMENT,
    valor_doacao decimal(10,2),
    total_doacao decimal(10,2),
    tipo_doacao VARCHAR(20),
    instituicao_doacao VARCHAR(45),
    data_doacao date,
    fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id)
);
select * from tb_doacao;

/*ARRUMAR PARA FEEDBACK - COMENTARIO*/
CREATE TABLE tb_feedback (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id)
); 

