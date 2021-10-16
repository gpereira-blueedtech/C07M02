CREATE TABLE produtos (
	id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
	nome VARCHAR NOT NULL,
	valor DECIMAL NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO produtos (nome, valor) VALUES ('Coca Cola', 5.00);
INSERT INTO produtos (nome, valor) VALUES ('Refriko', 4.00);
INSERT INTO produtos (nome, valor) VALUES ('Bamboa', 2.50);
INSERT INTO produtos (nome, valor) VALUES ('Amendoim', 1.50);
INSERT INTO produtos (nome, valor) VALUES ('Abacate', 2.00);


-- Caso minha tabela tenha sido criada sem uma PK (Primary Key), preciso criar uma regra para definir uma
-- ALTER TABLE produtos
-- ADD CONSTRAINT id_pk PRIMARY KEY (id);

ALTER TABLE pessoas
ADD COLUMN produto_id INT REFERENCES produtos(id);

UPDATE pessoas
SET produto_id = 3 WHERE id = 17;

SELECT * FROM produtos;
SELECT * FROM pessoas;



SELECT * FROM pessoas
INNER JOIN produtos ON pessoas.produto_id = produtos.id
WHERE pessoas.id > 18

-- Não vai deixar eu deletar esse produto, porque tem uma FK (Foreign Key) se referindo à ele.
DELETE FROM produtos WHERE id = 1;


