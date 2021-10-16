INSERT INTO plataformas (valor, nome) VALUES (20.90, 'Disney+');

-- INSERT INTO nome_da_tabela (coluna1, coluna2...) VALUES ('valor da coluna 1', valor_da_coluna2...);

SELECT * FROM plataformas;

SELECT nome, valor FROM plataformas;

SELECT nome, valor FROM plataformas WHERE id = 2;
SELECT nome, valor FROM plataformas WHERE nome = 'Netflix';
SELECT nome, valor FROM plataformas WHERE valor >= 5;

SELECT nome, valor FROM plataformas WHERE nome like 'N%';
SELECT nome, valor FROM plataformas WHERE nome like '%s';
SELECT nome, valor FROM plataformas WHERE nome like '%e%';

SELECT nome, valor FROM plataformas WHERE nome ilike '%n%';
SELECT nome, valor FROM plataformas WHERE nome ilike '%n%x%';


--------


ALTER TABLE plataformas 
ADD COLUMN nota INT;

ALTER TABLE plataformas 
DROP COLUMN notas;

UPDATE plataformas
SET nota = 10 WHERE id = 3;

UPDATE plataformas
SET nome = 'Nadaes Videos' WHERE id = 3;

UPDATE plataformas
SET nota = 5 WHERE id = 6;

SELECT * FROM plataformas WHERE id != 1 ORDER BY valor DESC;

DELETE FROM plataformas WHERE id = 2;

SELECT * FROM plataformas;


ALTER TABLE plataformas
ALTER COLUMN nota TYPE DECIMAL;



DROP TABLE filmes;


SELECT * FROM pessoas ORDER BY nome;

