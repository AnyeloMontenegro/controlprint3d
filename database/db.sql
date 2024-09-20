CREATE DATABASE  proyecto_titulo;

USE proyecto_titulo;

--TABLA DE USUARIOS
CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    email VARCHAR(60) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY(id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE users;

--TABLA DE IMPRESORAS
CREATE TABLE impresoras(
    id INT(11) NOT NULL,
    username VARCHAR(50) NOT NULL,
    ubicacion INT(11),
    user_id INT(11),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE impresoras
ADD PRIMARY KEY(id);

ALTER TABLE impresoras
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE impresoras;