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
