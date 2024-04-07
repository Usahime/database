CREATE SCHEMA IF NOT EXISTS mydb;


SET search_path TO mydb;

CREATE TABLE IF NOT EXISTS tarefapai (
  idtarefapai SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS tarefa (
  idtarefa SERIAL,
  nome VARCHAR(30),
  valor FLOAT,
  tarefapai_idtarefapai INT NOT NULL,
  PRIMARY KEY (idtarefa, tarefapai_idtarefapai),
  FOREIGN KEY (tarefapai_idtarefapai) REFERENCES tarefapai (idtarefapai) ON DELETE NO ACTION ON UPDATE NO ACTION
);