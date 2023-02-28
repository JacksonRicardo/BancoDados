CREATE TABLE empresas (
	id SERIAL,
	cnpj CHAR(14),
	razao_social VARCHAR(255),
	nome_fantansia VARCHAR(255),
	data_abertura DATE
);

SELECT * FROM empresas;

