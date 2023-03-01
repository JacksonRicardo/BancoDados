/*Criando tabela*/
CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado timestamp
); 

SELECT * FROM aluno; /*Filtros de consultas*/

/*Inserção de dados na tabela*/
INSERT INTO aluno (
	nome, 
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado
	
) VALUES (
	'Diogo',
	'12345678901',
	'Aluno possui alergia a camarão.',
	25,
	100.58,
	1.70,
	TRUE,
	'1999-05-06',
	'07:30:00',
	'2023-02-24 12:15:00'
);


SELECT * FROM aluno WHERE id = 1; /*Filtros de consultas*/

/*Atualização de dados da tabela*/
UPDATE aluno 
SET nome = 'Diogo Junior', 
	cpf = '01123456789',
	observacao = 'O aluno não possui necessidades especiais.',
	idade = 24,
	dinheiro = 100.58,
	altura = 1.70,
	ativo = FALSE,
	data_nascimento = '1999-05-06',
	hora_aula = '08:00:00' ,
	matriculado = '2024-02-27 09:08:25'
WHERE id = 1; 

/*Excluindo um registro da tabela*/
DELETE
	FROM aluno
WHERE nome = 'Diogo Junior';

/*Selecionando colunas específicas da tabela*/
SELECT nome AS "Nome do aluno",
	   idade,
	   matriculado AS "Quando se matriculou"
FROM aluno;
