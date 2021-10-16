CREATE TABLE vendas (
	id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
	data TIMESTAMP NOT NULL,
	pessoa_id INT NOT NULL,
	produto_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (pessoa_id) REFERENCES pessoas (id),
	FOREIGN KEY (produto_id) REFERENCES produtos (id)
);


CREATE TABLE pessoas (
	id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL
	idade INT NOT NULL
);

-- Adicionando uma nova linha à tabela vendas
ALTER TABLE
ADD COLUMN quantidade INT NULL;


INSERT INTO vendas (pessoa_id, produto_id, data, quantidade) VALUES (15,4, current_timestamp, 8);
INSERT INTO vendas (pessoa_id, produto_id, data) VALUES (19,2, current_timestamp);
INSERT INTO vendas (pessoa_id, produto_id, data) VALUES (19,1, current_timestamp);
INSERT INTO vendas (pessoa_id, produto_id, data) VALUES (19,4, current_timestamp);

-- Alterando as quantidades que não foram definidas para "1"
UPDATE vendas
SET quantidade = 1 WHERE quantidade IS NULL;


-- 'Dropando' (apagando) uma regra:
-- Essa regra é a que definia a PK da minha tabela
ALTER TABLE vendas
DROP CONSTRAINT vendas_pk;

-- Criando uma nova regra (adicionando novamente a PK)
ALTER TABLE vendas
ADD CONSTRAINT vendas_pkey PRIMARY KEY(id);


SELECT * FROM pessoas;
SELECT * FROM produtos;
SELECT * FROM vendas;
SELECT * FROM filmes;

INSERT INTO pessoas (nome, sobrenome, idade, produto_id) 
VALUES ('Maria Clara','da Silva', 25, 5);


SELECT * FROM pessoas WHERE id = 16;


-- Criando uma nova regra
-- Definindo que a coluna "nome" não pode ter valores duplicados
ALTER TABLE pessoas
ADD CONSTRAINT nome_unique UNIQUE (nome);


--UPDATE: Atualizando (editando) uma entrada na minha tabela
UPDATE produtos
SET valor = 1.80 WHERE id = 4;


-- INNER JOIN: "juntando" duas tabelas usando a FK como referência
SELECT * FROM pessoas
INNER JOIN produtos ON pessoas.produto_id = produtos.id;


-- INNER JOIN com 3 tabelas trazendo apenas alguns dados de cada uma
-- Foi definido um "apelido" para cada tabela no momento que elas foram indicadas
SELECT v.data, pe.nome, pr.nome, v.quantidade, pr.valor  
	FROM vendas v
INNER JOIN pessoas pe 
	ON v.pessoa_id = pe.id 
INNER JOIN produtos pr 
	ON v.produto_id = pr.id
WHERE v.quantidade > 3
ORDER BY pe.nome;


