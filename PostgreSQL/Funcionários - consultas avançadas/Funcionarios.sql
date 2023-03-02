CREATE TABLE funcionarios(
	id SERIAL PRIMARY KEY,
	matricula VARCHAR(10),
	nome VARCHAR(255),
	sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M002', 'Vínicius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M006', 'Alberto', 'Martins');

SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY nome DESC;
SELECT * FROM funcionarios ORDER BY nome, matricula DESC;
SELECT * FROM funcionarios ORDER BY 3, 4, 2;
SELECT * FROM funcionarios ORDER BY 4 DESC, nome DESC, 2 ASC;
SELECT * FROM funcionarios ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;

