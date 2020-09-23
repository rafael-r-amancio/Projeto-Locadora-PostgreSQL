SELECT g.genero AS "Categorias", f.titulo 
FROM generos AS g, filmes AS f
WHERE id_genero = g.id
GROUP BY g.genero;

-- Encontrar todos os filmes que certo ator atua
SELECT a.nome AS "Artista", f.titulo AS "Filme", g.genero AS "Categoria", at.personagem  
FROM atores AS a, filmes AS f, atores_filme AS at, generos AS g
WHERE at.id_ator = a.id AND at.id_filme = f.id AND f.id_genero = g.id AND a.nome = 'Brad Pitt'; 

-- Encontrar filmes pelo ator sendo por genero
SELECT a.nome AS "Artista", f.titulo AS "Filme", g.genero AS "Categoria", at.personagem AS "Personagem" 
FROM atores AS a, filmes AS f, atores_filme AS at, generos AS g
WHERE at.id_ator = a.id AND at.id_filme = f.id AND f.id_genero = g.id AND g.genero = 'Comédia'; 

-- Verificar filmes por cliente
SELECT e.id AS "Transação", c.nome AS "Cliente", e.data AS "Data de Locação", f.titulo AS "Filme", g.genero AS "Categoria"
FROM emprestimos AS e, clientes AS c, filmes AS f, dvds As d, filmes_emprestimo AS fe, generos AS g
WHERE fe.id_emprestimo = e.id AND e.id_cliente = c.id AND d.id_filme = f.id AND fe.id_dvd = d.id AND f.id_genero = g.id; 

-- Verifcar devolução dos clientes
SELECT de.id AS "Transação", c.nome AS "Nome", c.sobrenome AS "Sobrenome", de.data AS "Data de devolução", f.titulo
	FROM devolucoes AS de, 
	clientes AS c, 
	filmes As f, 
	filmes_devolucao AS fd, 
	dvds As d, 
	filmes_emprestimo AS fe, 
	emprestimos AS e
WHERE fd.id_filme_emprestimo = fe.id
	AND fd.id_devolucao = de.id
	AND f.id = d.id_filme
	AND fe.id_dvd = d.id
	AND c.id = e.id_cliente
	AND fe.id_emprestimo = e.id; 

-- Verificar valores pagos por cliente
SELECT e.id AS "Locação", c.nome AS "Nome", c.sobrenome AS "Sobrenome", f.titulo AS "Filme", SUM(f.valor) AS "Valor a pagar"
FROM filmes_devolucao AS fd, clientes AS c, dvds AS d, filmes AS f, devolucoes as de, emprestimos AS e, filmes_emprestimo AS fe
WHERE fd.id_filme_emprestimo = fe.id AND fd.id_devolucao = de.id AND f.id = d.id_filme AND fe.id_dvd = d.id AND fe.id_emprestimo = e.id
AND c.id = e.id_cliente
GROUP BY e.id, c.nome, c.sobrenome, f.titulo;





