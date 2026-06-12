CREATE TABLE utilisateur (
    id_utilisateur   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pseudo           VARCHAR(50)  NOT NULL,
    email            VARCHAR(150) NOT NULL,
    mot_de_passe     VARCHAR      NOT NULL,
    date_inscription DATE         NOT NULL DEFAULT CURRENT_DATE,
    date_naissance   DATE,
    role             VARCHAR(20)  NOT NULL DEFAULT 'membre'
);

CREATE TABLE brasserie (
    id_brasserie   SERIAL PRIMARY KEY,
    nom            VARCHAR(100) NOT NULL,
    pays           VARCHAR(80)  NOT NULL,
    region         VARCHAR(100),
    description    TEXT,
    site_web       VARCHAR(200),
    annee_creation SMALLINT
);

CREATE TABLE style (
    id_style    SERIAL PRIMARY KEY,
    nom         VARCHAR(80) NOT NULL,
    description TEXT
);

CREATE TABLE ingredient (
    id_ingredient SERIAL PRIMARY KEY,
    nom           VARCHAR(100) NOT NULL,
    type          VARCHAR(20)  NOT NULL
);

CREATE TABLE biere (
    id_biere     SERIAL PRIMARY KEY,
    nom          VARCHAR(100) NOT NULL,
    id_brasserie INT          NOT NULL REFERENCES brasserie(id_brasserie),
    id_style     INT          NOT NULL REFERENCES style(id_style),
    degre_alcool DECIMAL(4,1) NOT NULL,
    ibu          SMALLINT,
    ebc          SMALLINT,
    description  TEXT,
    image_url    VARCHAR(300)
);

CREATE TABLE biere_ingredient (
    id_biere      INT        NOT NULL REFERENCES biere(id_biere),
    id_ingredient INT        NOT NULL REFERENCES ingredient(id_ingredient),
    quantite      VARCHAR(50),
    PRIMARY KEY (id_biere, id_ingredient)
);

CREATE TABLE avis (
    id_avis           SERIAL    PRIMARY KEY,
    id_utilisateur    UUID      NOT NULL REFERENCES utilisateur(id_utilisateur),
    id_biere          INT       NOT NULL REFERENCES biere(id_biere),
    note              SMALLINT  NOT NULL CHECK (note BETWEEN 1 AND 5),
    commentaire       TEXT,
    date_publication  TIMESTAMP NOT NULL DEFAULT NOW(),
    date_modification TIMESTAMP
);

CREATE TABLE favori (
    id_utilisateur UUID      NOT NULL REFERENCES utilisateur(id_utilisateur),
    id_biere       INT       NOT NULL REFERENCES biere(id_biere),
    date_ajout     TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (id_utilisateur, id_biere)
);
