-- Criação das tabelas
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE grupos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    autor_id INT DEFAULT NULL,
    texto TEXT,
    data_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    grupo_id INT,
    FOREIGN KEY (autor_id) REFERENCES usuarios(id),
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
);

CREATE TABLE comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT,
    autor_id INT,
    texto TEXT,
    data_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (autor_id) REFERENCES usuarios(id)
);

CREATE TABLE likes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT,
    autor_id INT,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (autor_id) REFERENCES usuarios(id)
);

CREATE TABLE mensagens_privadas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    remetente_id INT,
    destinatario_id INT,
    texto TEXT,
    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (remetente_id) REFERENCES usuarios(id),
    FOREIGN KEY (destinatario_id) REFERENCES usuarios(id)
);

CREATE TABLE amizades (
    usuario1_id INT,
    usuario2_id INT,
    data_inicio DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (usuario1_id, usuario2_id),
    FOREIGN KEY (usuario1_id) REFERENCES usuarios(id),
    FOREIGN KEY (usuario2_id) REFERENCES usuarios(id)
);

CREATE TABLE membros_grupo (
    usuario_id INT,
    grupo_id INT,
    data_entrada DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (usuario_id, grupo_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (grupo_id) REFERENCES grupos(id)
);

-- Stored Procedures
DELIMITER //
CREATE PROCEDURE adicionar_usuario (IN p_nome VARCHAR(255), IN p_email VARCHAR(255), IN p_senha VARCHAR(255))
BEGIN
    INSERT INTO usuarios (nome, email, senha) VALUES (p_nome, p_email, p_senha);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE deletar_post (IN p_post_id INT)
BEGIN
    DELETE FROM posts WHERE id = p_post_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE atualizar_usuario (IN p_id INT, IN p_nome VARCHAR(255), IN p_email VARCHAR(255), IN p_senha VARCHAR(255))
BEGIN
    UPDATE usuarios SET nome = p_nome, email = p_email, senha = p_senha WHERE id = p_id;
END //
DELIMITER ;

-- Backup Procedures
DELIMITER //
CREATE PROCEDURE backup_dados (IN p_filepath VARCHAR(255))
BEGIN
    SET @query = CONCAT('SELECT * INTO OUTFILE "', p_filepath, '" FROM usuarios');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE restaurar_dados (IN p_filepath VARCHAR(255))
BEGIN
    SET @query = CONCAT('LOAD DATA INFILE "', p_filepath, '" INTO TABLE usuarios');
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Índices
CREATE INDEX idx_post_autor ON posts (autor_id);
CREATE INDEX idx_comentario_post ON comentarios (post_id);
CREATE INDEX idx_like_post ON likes (post_id);
CREATE INDEX idx_mensagem_remetente ON mensagens_privadas (remetente_id);
CREATE INDEX idx_amizade_usuario1 ON amizades (usuario1_id);
CREATE INDEX idx_membro_usuario ON membros_grupo (usuario_id);

