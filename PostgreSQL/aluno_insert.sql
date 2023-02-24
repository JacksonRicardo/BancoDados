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

SELECT * FROM aluno;

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
	'Aluno possui alergia a camarão',
	25,
	100.58,
	1.70,
	TRUE,
	'1999-05-06',
	'07:30:00',
	'2023-02-24 12:15:00'
)

