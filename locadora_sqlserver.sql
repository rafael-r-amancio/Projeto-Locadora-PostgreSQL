CREATE TABLE [generos] (
  [id] INT PRIMARY KEY,
  [genero] VARCHAR NOT NULL
)
GO

CREATE TABLE [filmes] (
  [id] INT PRIMARY KEY,
  [titulo] VARCHAR NOT NULL,
  [id_genero] INT NOT NULL,
  [valor] DECIMAL(8,2) NOT NULL
)
GO

CREATE TABLE [dvds] (
  [id] INT PRIMARY KEY,
  [id_filme] INT NOT NULL,
  [quantidade] INT NOT NULL
)
GO

CREATE TABLE [atores] (
  [id] INT PRIMARY KEY,
  [nome] VARCHAR NOT NULL
)
GO

CREATE TABLE [atores_filme] (
  [id] INT PRIMARY KEY,
  [id_ator] INT NOT NULL,
  [id_filme] INT NOT NULL,
  [personagem] VARCHAR NOT NULL
)
GO

CREATE TABLE [clientes] (
  [id] INT PRIMARY KEY,
  [nome] VARCHAR NOT NULL,
  [sobrenome] VARCHAR NOT NULL,
  [telefone] VARCHAR NOT NULL,
  [endereco] VARCHAR NOT NULL
)
GO

CREATE TABLE [emprestimos] (
  [id] INT PRIMARY KEY,
  [data] DATETIME NOT NULL,
  [id_cliente] INT NOT NULL
)
GO

CREATE TABLE [filmes_emprestimo] (
  [id] INT PRIMARY KEY,
  [id_emprestimo] INT NOT NULL,
  [id_dvd] INT NOT NULL
)
GO

CREATE TABLE [devolucoes] (
  [id] INT PRIMARY KEY,
  [id_emprestimo] INT NOT NULL,
  [data] DATETIME NOT NULL
)
GO

CREATE TABLE [filmes_devolucao] (
  [id] INT PRIMARY KEY,
  [id_devolucao] INT NOT NULL,
  [id_filme_emprestimo] INT NOT NULL
)
GO

ALTER TABLE [filmes] ADD FOREIGN KEY ([id_genero]) REFERENCES [generos] ([id])
GO

ALTER TABLE [dvds] ADD FOREIGN KEY ([id_filme]) REFERENCES [filmes] ([id])
GO

ALTER TABLE [atores_filme] ADD FOREIGN KEY ([id_ator]) REFERENCES [atores] ([id])
GO

ALTER TABLE [atores_filme] ADD FOREIGN KEY ([id_filme]) REFERENCES [filmes] ([id])
GO

ALTER TABLE [emprestimos] ADD FOREIGN KEY ([id_cliente]) REFERENCES [clientes] ([id])
GO

ALTER TABLE [filmes_emprestimo] ADD FOREIGN KEY ([id_emprestimo]) REFERENCES [emprestimos] ([id])
GO

ALTER TABLE [filmes_emprestimo] ADD FOREIGN KEY ([id_dvd]) REFERENCES [dvds] ([id])
GO

ALTER TABLE [devolucoes] ADD FOREIGN KEY ([id_emprestimo]) REFERENCES [emprestimos] ([id])
GO

ALTER TABLE [filmes_devolucao] ADD FOREIGN KEY ([id_devolucao]) REFERENCES [devolucoes] ([id])
GO

ALTER TABLE [filmes_devolucao] ADD FOREIGN KEY ([id_filme_emprestimo]) REFERENCES [filmes_emprestimo] ([id])
GO
