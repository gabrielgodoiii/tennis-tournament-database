-- ================================
-- INSERTS - PAÍSES
-- ================================
INSERT INTO Pais (NomePais) VALUES
('Brasil'),
('Argentina'),
('Espanha'),
('Estados Unidos'),
('França'),
('Alemanha'),
('Itália'),
('Reino Unido'),
('Chile'),
('Japão'),
('Canadá'),
('México'),
('Holanda'),
('Suíça'),
('Áustria');

-- ================================
-- INSERTS - CIDADES
-- ================================
INSERT INTO Cidade (NomeCidade, CodPais) VALUES
('São Paulo', 1),
('Rio de Janeiro', 1),
('Buenos Aires', 2),
('Madrid', 3),
('Barcelona', 3),
('Miami', 4),
('Paris', 5),
('Lyon', 5),
('Berlim', 6),
('Roma', 7),
('Londres', 8),
('Santiago', 9),
('Tóquio', 10),
('Zurique', 14),
('Viena', 15);

-- ================================
-- INSERTS - PATROCINADORES
-- ================================
INSERT INTO Patrocinador (NomePatrocinador) VALUES
('Nike'),
('Adidas'),
('Lacoste'),
('Head'),
('Wilson'),
('Babolat'),
('Yonex'),
('Puma'),
('Asics'),
('Fila'),
('Red Bull'),
('Citi Bank'),
('Rolex'),
('Claro'),
('Kia Motors');

-- ================================
-- INSERTS - TENISTAS
-- ================================
INSERT INTO Tenista (NomeTenista, DataNascimento) VALUES
('Gabriel Santos', '2001-05-12'),
('Lucas Andrade', '1999-03-22'),
('Marcos Oliveira', '2000-07-15'),
('João Ribeiro', '2002-11-09'),
('Mateus Costa', '1998-09-30'),
('Pedro Lima', '2003-12-18'),
('André Martins', '1997-06-10'),
('Thiago Nunes', '1995-08-21'),
('Carlos Alberto', '1996-01-14'),
('Henrique Souza', '2001-04-05'),
('Fábio Farias', '1994-02-19'),
('Rafael Lopes', '2000-10-10'),
('Bruno Pacheco', '2002-06-17'),
('Eduardo Assis', '2003-03-03'),
('Vitor Duarte', '1999-12-01');

-- ================================
-- INSERTS - TORNEIOS
-- ================================
INSERT INTO Torneio (NomeTorneio, Ano, CodCidade) VALUES
('Open São Paulo', 2024, 1),
('Rio Masters', 2024, 2),
('Argentina Open', 2024, 3),
('Madrid Cup', 2024, 4),
('Barcelona Classic', 2024, 5),
('Miami Open', 2024, 6),
('Paris Trophy', 2024, 7),
('Lyon Cup', 2024, 8),
('Berlin Open', 2024, 9),
('Roma Masters', 2024, 10),
('London Slam', 2024, 11),
('Santiago Open', 2024, 12),
('Tokyo Championship', 2024, 13),
('Zurich Cup', 2024, 14),
('Vienna Masters', 2024, 15);

-- ================================
-- INSERTS - PATROCÍNIO
-- ================================
INSERT INTO Patrocinio (CodTenista, CodPatrocinador) VALUES
(1, 1),
(1, 13),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 11),
(9, 12),
(10, 10),
(11, 9),
(12, 8),
(13, 14),
(14, 15);

-- ================================
-- INSERTS - PARTICIPA
-- ================================
INSERT INTO Participa (CodTenista, CodTorneio, Classificacao) VALUES
(1, 1, 2),
(1, 2, 3),
(1, 3, 1),
(2, 4, 4),
(2, 5, 2),
(3, 6, 1),
(4, 7, 5),
(4, 8, 2),
(5, 9, 3),
(6, 10, 1),
(7, 11, 2),
(8, 12, 4),
(9, 13, 1),
(10, 14, 3),
(11, 15, 2);
