-- Atores
INSERT INTO atores (nome) VALUES ('Brad Pitt');
INSERT INTO atores (nome) VALUES ('Angeline Jolie');
INSERT INTO atores (nome) VALUES ('Felicity Jones');
SELECT * FROM atores;

-- Generos
INSERT INTO generos (genero) VALUES ('Comédia');
INSERT INTO generos (genero) VALUES ('Terror');
INSERT INTO generos (genero) VALUES ('Suspense');
SELECT * FROM generos;

-- Filmes
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Tomb Raider', 3, 8.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Star Wars', 2, 12.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Loucademia de Policia', 1, 5.99);
INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Jogos Mortais', 2, 9.99);
SELECT * FROM filmes;

-- Clientes 
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Rafael', 'Ribeiro', '965702268', 'Rua legal, nº 1');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Ivania', 'Prudencio', '982447837', 'Rua Show de bola, nº 30');
INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Selma', 'Dias', '25532549', 'Rua da oliveiras, nº 100');
SELECT * FROM clientes;

-- Atores Filmes
INSERT INTO atores_filme (id_ator, id_filme, personagem) VALUES (1, 3, 'Policial Bradly');
INSERT INTO atores_filme (id_ator, id_filme, personagem) VALUES (3, 2, 'Princesa Leya');
INSERT INTO atores_filme (id_ator, id_filme, personagem) VALUES (2, 1, 'Lara Croft');
SELECT * FROM atores_filme;

-- Dvd's
INSERT INTO dvds (id_filme, quantidade) VALUES (2, 2);
INSERT INTO dvds (id_filme, quantidade) VALUES (1, 1);
INSERT INTO dvds (id_filme, quantidade) VALUES (1, 1);
SELECT * FROM dvds;

-- Emprestimos
INSERT INTO emprestimos (data, id_cliente) VALUES ('2020-01-12', 1);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2020-03-20', 3);
INSERT INTO emprestimos (data, id_cliente) VALUES ('2020-05-08', 2);
SELECT * FROM emprestimos;

-- Filmes Emprestimo
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (3, 2);
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 3);
INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (2, 1);
SELECT * FROM filmes_emprestimo;

-- Devoluções
INSERT INTO devolucoes (id_emprestimo, data) VALUES (3, '2020-05-12');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (2, '2020-03-23');
INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2020-01-15');
SELECT * FROM devolucoes;

-- Filmes Devoluções
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (1, 2);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (2, 3);
INSERT INTO filmes_devolucao (id_devolucao, id_filme_emprestimo) VALUES (3, 1);
SELECT * FROM filmes_devolucao;

