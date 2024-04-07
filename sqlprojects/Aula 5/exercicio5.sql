CREATE SCHEMA IF NOT EXISTS mydb;

SET search_path TO mydb;

CREATE TABLE IF NOT EXISTS pessoa (
  idpessoa SERIAL PRIMARY KEY,
  Nome VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS imovel (
  idimovel SERIAL PRIMARY KEY,
  "Descrição" VARCHAR(50) NOT NULL,
  idproprietário INT NOT NULL,
  idinquilino INT NOT NULL,
  FOREIGN KEY (idproprietário) REFERENCES pessoa(idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (idinquilino) REFERENCES pessoa(idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION
);