-- ================================
-- Tabela de Países
-- ================================
CREATE TABLE Pais (
    CodPais INT AUTO_INCREMENT PRIMARY KEY,
    NomePais VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

-- ================================
-- Tabela de Cidades
-- ================================
CREATE TABLE Cidade (
    CodCidade INT AUTO_INCREMENT PRIMARY KEY,
    NomeCidade VARCHAR(100) NOT NULL,
    CodPais INT NOT NULL,
    CONSTRAINT fk_cidade_pais
        FOREIGN KEY (CodPais) REFERENCES Pais(CodPais)
) ENGINE=InnoDB;

-- ================================
-- Tabela de Torneios
-- ================================
CREATE TABLE Torneio (
    CodTorneio INT AUTO_INCREMENT PRIMARY KEY,
    NomeTorneio VARCHAR(100) NOT NULL,
    Ano INT NOT NULL,
    CodCidade INT NOT NULL,
    CONSTRAINT fk_torneio_cidade
        FOREIGN KEY (CodCidade) REFERENCES Cidade(CodCidade)
) ENGINE=InnoDB;

-- ================================
-- Tabela de Tenistas
-- ================================
CREATE TABLE Tenista (
    CodTenista INT AUTO_INCREMENT PRIMARY KEY,
    NomeTenista VARCHAR(120) NOT NULL,
    DataNascimento DATE NOT NULL
) ENGINE=InnoDB;

-- ================================
-- Tabela de Patrocinadores
-- ================================
CREATE TABLE Patrocinador (
    CodPatrocinador INT AUTO_INCREMENT PRIMARY KEY,
    NomePatrocinador VARCHAR(120) NOT NULL
) ENGINE=InnoDB;

-- ================================
-- Tabela Participa (Tenista x Torneio)
-- ================================
CREATE TABLE Participa (
    CodTenista INT NOT NULL,
    CodTorneio INT NOT NULL,
    Classificacao INT CHECK (Classificacao BETWEEN 1 AND 10),
    PRIMARY KEY (CodTenista, CodTorneio),
    CONSTRAINT fk_participa_tenista
        FOREIGN KEY (CodTenista) REFERENCES Tenista(CodTenista),
    CONSTRAINT fk_participa_torneio
        FOREIGN KEY (CodTorneio) REFERENCES Torneio(CodTorneio)
) ENGINE=InnoDB;

-- ================================
-- Tabela Patrocinio (Tenista x Patrocinador)
-- ================================
CREATE TABLE Patrocinio (
    CodTenista INT NOT NULL,
    CodPatrocinador INT NOT NULL,
    PRIMARY KEY (CodTenista, CodPatrocinador),
    CONSTRAINT fk_patroc_tenista
        FOREIGN KEY (CodTenista) REFERENCES Tenista(CodTenista),
    CONSTRAINT fk_patroc_patrocinador
        FOREIGN KEY (CodPatrocinador) REFERENCES Patrocinador(CodPatrocinador)
) ENGINE=InnoDB;
