SELECT * FROM filmes;
SELECT * FROM generos;

-- Filme e Generos
SELECT f.titulo AS "Filmes", g.genero AS "Generos", f.valor AS "Valor de locação"
FROM filmes AS f, generos AS g
WHERE f.id_genero = g.id;

-- Atores Filmes
SELECT * FROM atores_filme;

SELECT a.nome AS "Artista", f.titulo AS "Filme", g.genero AS "Categoria", at.personagem  
FROM atores AS a, filmes AS f, atores_filme AS at, generos AS g
WHERE at.id_ator = a.id AND at.id_filme = f.id AND f.id_genero = g.id; 

-- funçoes agregadas
SELECT SUM(valor) FROM filmes;
SELECT MAX(valor) FROM filmes;

-- Sub consulta
SELECT * FROM filmes WHERE valor IN (SELECT MAX(valor) FROM filmes);

