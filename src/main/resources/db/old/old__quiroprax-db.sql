CREATE TABLE `usuario` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `login` VARCHAR(80) NOT NULL,
  `senha` VARCHAR(80) UNIQUE NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `paciente` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `email` VARCHAR(80) UNIQUE NOT NULL,
  `telefone` VARCHAR(40) UNIQUE NOT NULL,
  `cpf` VARCHAR(11) UNIQUE NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `status_agendamento` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE `agendamento` (
  `id` BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `email` VARCHAR(80) UNIQUE NOT NULL,
  `paciente_id` BIGINT NOT NULL,
  `status_id` INT NOT NULL,
  `data_hora` TIMESTAMP
);

ALTER TABLE `agendamento` ADD FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`id`);

ALTER TABLE `agendamento` ADD FOREIGN KEY (`status_id`) REFERENCES `status_agendamento` (`id`);
