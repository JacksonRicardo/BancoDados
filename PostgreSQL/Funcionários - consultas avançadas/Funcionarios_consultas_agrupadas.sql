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
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES('M007', 'Diogo', 'Oliveira');

/*Utilizando o ORDER BY*/
SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY nome DESC;
SELECT * FROM funcionarios ORDER BY nome, matricula DESC;
SELECT * FROM funcionarios ORDER BY 3, 4, 2;
SELECT * FROM funcionarios ORDER BY 4 DESC, nome DESC, 2 ASC;
SELECT * FROM funcionarios ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;


/*Utilizando o LIMIT e OFFSET*/
SELECT * FROM funcionarios LIMIT 5;
SELECT * FROM funcionarios ORDER BY nome LIMIT 5;
SELECT * FROM funcionarios ORDER BY id LIMIT 5 OFFSET 2;

/*Principais funções de agregação*/
-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT COUNT(id),
	SUM(id),
	MAX(id),
	MIN(id),
	ROUND (AVG(id),2)
FROM funcionarios;

-- ROUND -  Faz o arrendondamento das casas decimais

/*Agrupando consultas*/
SELECT DISTINCT nome FROM funcionarios ORDER BY nome;
SELECT DISTINCT nome, sobrenome FROM funcionarios ORDER BY nome;

SELECT
       nome,
       sobrenome,
       COUNT(id)
  FROM funcionarios
  GROUP BY 1, 2
  ORDER BY nome;

SELECT
       nome,
       sobrenome,
       COUNT(*)
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;

/*Filtrando consultas agrupadas*/
SELECT nome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;

SELECT nome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) = 1;

