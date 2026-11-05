-- Ativa o suporte a chaves estrangeiras no SQLite
PRAGMA foreign_keys = ON;

-- 1. Tabela Pai: Personagens do Jogo
CREATE TABLE TB_PERSONAGEM (
    ID_Personagem INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL UNIQUE,
    Sanidade INTEGER Not NULL,
	Arma TEXT
);

-- 2. Tabela Filho: Missões do Personagem (Relacionamento 1 para N)
CREATE TABLE TB_MEDO (
    ID_Medo INTEGER PRIMARY KEY AUTOINCREMENT,
    Titulo_Medo TEXT NOT NULL,
  	Causa_Medo TEXT NOT NULL,
  	Abilidade TEXT,
  	Estado_Mente TEXT, 
    ID_Personagem INTEGER NOT NULL,
    FOREIGN KEY (ID_Personagem) REFERENCES TB_PERSONAGEM(ID_Personagem) ON DELETE CASCADE
);

-- 3. INSERINDO DADOS DE EXEMPLO (Popula as tabelas criadas)
INSERT INTO TB_PERSONAGEM (Nome, Sanidade, Arma) 
VALUES ('Vorned', '45', 'Foice' );

INSERT INTO TB_PERSONAGEM (Nome, Sanidade, Arma) 
VALUES ('Karyn', '12', 'Livro');

INSERT INTO TB_PERSONAGEM (Nome, Sanidade, Arma) 
VALUES ('Uporle', '93', 'Poções');

INSERT INTO TB_MEDO (Titulo_Medo, Causa_Medo, ID_Personagem, Abilidade, Estado_Mente) 
VALUES ('Lugares pequenos', 'Preso em caixas', 1, 'Força', 'Quase estável');

INSERT INTO TB_MEDO (Titulo_Medo, Causa_Medo, ID_Personagem, Abilidade, Estado_Mente) 
VALUES ('Escuro', 'Se perdeu na foresta', 2, 'Inteligência', 'Não estável');

INSERT INTO TB_MEDO (Titulo_Medo, Causa_Medo, ID_Personagem, Abilidade, Estado_Mente) 
VALUES ('Dragões', 'Luta contra dragões', 3, 'Agilidade', 'Estável');

-- 4. SELECTS DE VISUALIZAÇÃO (Faz os atributos e colunas aparecerem na tela do SQLite Online)
SELECT * FROM TB_PERSONAGEM;
SELECT * FROM TB_MEDO;