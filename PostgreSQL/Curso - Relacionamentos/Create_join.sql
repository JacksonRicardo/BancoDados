CREATE TABLE curso(
	id INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');

CREATE TABLE alunos(
	id SERIAL PRIMARY KEY,
	nome VARCHAR (255) NOT NULL
);

INSERT INTO alunos (nome) VALUES ('Diogo');
INSERT INTO alunos (nome) VALUES ('Vinicius');


CREATE TABLE aluno_curso (
    aluno_id INTEGER,
        curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),

        FOREIGN KEY (aluno_id)
         REFERENCES alunos (id),

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2, 2);

SELECT * FROM alunos WHERE id = 1;
SELECT * FROM alunos WHERE id = 2;
SELECT * FROM curso WHERE id = 1;
SELECT * FROM curso WHERE id = 2;


SELECT * FROM alunos;
SELECT * FROM curso;

/*Consultas com relacionamentos*/
SELECT * 
FROM alunos 
JOIN aluno_curso ON aluno_curso.aluno_id = alunos.id
JOIN curso ON curso.id = aluno_curso.curso_id;


/*Consultas com relacionamentos 2*/
SELECT alunos.nome AS "Nome do aluno",
	   curso.nome AS "Nome do curso"
FROM alunos 
JOIN aluno_curso ON aluno_curso.aluno_id = alunos.id
JOIN curso ON curso.id = aluno_curso.curso_id;