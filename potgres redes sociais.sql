DROP TABLE IF EXISTS comentarios;
DROP TABLE IF EXISTS postagens;
DROP TABLE IF EXISTS usuarios;

/* criar tabela */
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(50) NOT NULL,
    nome_completo VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    senha TEXT NOT NULL,
    idade INTEGER NOT NULL
);

/* listar todos os clientes */
SELECT * FROM usuarios;

/* cadastrar clientes */
INSERT INTO usuarios
(nome_completo, nome_usuario, email, senha, idade)
VALUES
(
    'Cliente 01',
    'cliente_01',
    'cliente01@gmail.com',
    '12418974',
    24
);

INSERT INTO usuarios
(nome_completo, nome_usuario, email, senha, idade)
VALUES
(
    'Cliente 02',
    'cliente_02',
    'cliente02@gmail.com',
    '58374192',
    31
);

INSERT INTO usuarios
(nome_completo, nome_usuario, email, senha, idade)
VALUES
(
    'Cliente 03',
    'cliente_03',
    'cliente03@gmail.com',
    '91726384',
    19
);

INSERT INTO usuarios
(nome_completo, nome_usuario, email, senha, idade)
VALUES
(
    'Cliente 04',
    'cliente_04',
    'cliente04@gmail.com',
    '36581927',
    42
);

INSERT INTO usuarios
(nome_completo, nome_usuario, email, senha, idade)
VALUES
(
    'Cliente 05',
    'cliente_05',
    'cliente05@gmail.com',
    '74192853',
    27
);

SELECT * FROM usuarios;

CREATE TABLE postagens (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    texto TEXT NOT NULL,
    usuario_id INTEGER,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO postagens
(titulo, texto, usuario_id)
VALUES
(
    'Meu primeiro post',
    'Essa é minha primeira postagem.',
    1
);

SELECT * FROM postagens;

CREATE TABLE comentarios (
    id SERIAL PRIMARY KEY,
    texto TEXT NOT NULL,
    usuario_id INTEGER,
    postagem_id INTEGER,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO comentarios
(texto, usuario_id, postagem_id)
VALUES
(
    'Gostei muito da postagem!',
    2,
    1
);

SELECT * FROM comentarios;