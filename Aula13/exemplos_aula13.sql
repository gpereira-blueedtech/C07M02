INSERT INTO pessoas (nome, sobrenome, idade) VALUES ('Mara','', 20);

SELECT * FROM pessoas;

SELECT nome FROM pessoas;

SELECT * FROM pessoas WHERE idade >= 18;
SELECT * FROM pessoas WHERE idade IS null;

SELECT * FROM pessoas WHERE nome = 'Lucas';

SELECT id, nome, sobrenome FROM pessoas WHERE nome ilike '%A'
SELECT id, nome, sobrenome FROM pessoas WHERE nome like '%s'

CREATE TABLE filmes (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR NOT NULL,
    ano int NOT NULL
);


ALTER TABLE pessoas 
ADD peso DECIMAL;


ALTER TABLE pessoas
ALTER COLUMN altura TYPE DECIMAL USING altura::numeric;


DELETE FROM pessoas WHERE id = 14;


UPDATE pessoas
SET sobrenome = 'Soares' WHERE id=17;

UPDATE pessoas
SET altura = 0.0 WHERE altura IS null;

UPDATE pessoas
SET idade = 22 WHERE id = 15;

UPDATE pessoas
SET sobrenome = 'Nadais';