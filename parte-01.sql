DROP TABLE IF EXISTS redes_sociais, enderecos, usuarios, usuario_rede_sociais;

CREATE TABLE IF NOT EXISTS redes_sociais(
    id              BIGSERIAL PRIMARY KEY,
    nome            VARCHAR(150) NOT NULL unique   
);

CREATE TABLE IF NOT EXISTS enderecos(
    id              BIGSERIAL PRIMARY KEY,
    rua             VARCHAR NOT NULL,
    pais            VARCHAR(100) NOT NULL,
    cidade          VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios(
    id              BIGSERIAL PRIMARY KEY,
    nome            VARCHAR(100),
    email           VARCHAR NOT NULL UNIQUE,
    senha           VARCHAR NOT NULL,
    endereco_id     INTEGER NOT NULL REFERENCES enderecos(id)
);


CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
    id              BIGSERIAL PRIMARY KEY,
    usuario_id      INTEGER NOT NULL REFERENCES usuarios(id),
    rede_social_id  INTEGER NOT NULL REFERENCES redes_sociais(id)  
);