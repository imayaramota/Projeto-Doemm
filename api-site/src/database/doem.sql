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

CREATE TABLE tb_feedback (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id)
); 

update tb_doacao set data_doacao = '2021-10-10', total_doacao = 25000.00 where id_doacao = 2;
update tb_doacao set data_doacao = '2021-05-12', total_doacao = 15000.00 where id_doacao = 3;
update tb_doacao set data_doacao = '2021-11-24' , total_doacao = 3500.00where id_doacao = 4;
update tb_doacao set data_doacao = '2021-09-22', total_doacao = 40000.00 where id_doacao = 5;
update tb_doacao set data_doacao = '2021-07-22', total_doacao = 25000.00 where id_doacao = 5;
update tb_doacao set data_doacao = '2021-08-22', total_doacao = 12000.00 where id_doacao = 5;
update tb_doacao set data_doacao = '2021-01-10' , total_doacao = 20000.00 where id_doacao = 10;
update tb_doacao set data_doacao = '2021-03-12' where id_doacao = 7;
update tb_doacao set data_doacao = '2021-02-24' where id_doacao = 8;
update tb_doacao set data_doacao = '2021-06-22' where id_doacao = 10;
update tb_doacao set data_doacao = '2021-07-10' , total_doacao = 20000.00 where id_doacao = 11;
update tb_doacao set data_doacao = '2021-06-10' , total_doacao = 20000.00 where id_doacao = 12;
update tb_doacao set data_doacao = '2021-09-10' , total_doacao = 20000.00 where id_doacao = 13;
update tb_doacao set data_doacao = '2021-03-10' , total_doacao = 20000.00 where id_doacao = 14;
update tb_doacao set data_doacao = '2021-02-10'  where id_doacao = 16;
update tb_doacao set data_doacao = '2021-04-10'  where id_doacao = 17;
update tb_doacao set data_doacao = '2021-10-10' , total_doacao = 2000.00 where id_doacao = 9;
update tb_doacao set data_doacao = '2021-04-10' , total_doacao = 2000.00 where id_doacao = 6;

select * from tb_usuario;
select * from tb_doacao;
select * from tb_feedback;
select count(total_doacao) from tb_doacao;
select sum(total_doacao) as contagem, data_doacao from tb_doacao group by month(data_doacao);
select sum(total_doacao) as contagem, data_doacao, month(data_doacao) from tb_doacao group by month(data_doacao);
