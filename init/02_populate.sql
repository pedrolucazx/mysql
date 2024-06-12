-- População das tabelas
INSERT INTO usuarios (nome, email, senha)
VALUES
  ('Alice', 'alice@example.com', 'senha123'),
  ('Bob', 'bob@example.com', 'senha123'),
  ('Carol', 'carol@example.com', 'senha123'),
  ('Devin', 'devin@example.com', 'senha123'),
  ('Eve', 'eve@example.com', 'senha123'),
  ('Frank', 'frank@example.com', 'senha123'),
  ('Grace', 'grace@example.com', 'senha123'),
  ('Heidi', 'heidi@example.com', 'senha123'),
  ('Ivan', 'ivan@example.com', 'senha123'),
  ('Judy', 'judy@example.com', 'senha123'),
  ('Mallory', 'mallory@example.com', 'senha123'),
  ('Niaj', 'niaj@example.com', 'senha123'),
  ('Olivia', 'olivia@example.com', 'senha123'),
  ('Peggy', 'peggy@example.com', 'senha123'),
  ('Sybil', 'sybil@example.com', 'senha123'),
  ('Trent', 'trent@example.com', 'senha123'),
  ('Victor', 'victor@example.com', 'senha123'),
  ('Walter', 'walter@example.com', 'senha123');

INSERT INTO
  grupos (nome, descricao)
VALUES
  ('Grupo A', 'Descrição do Grupo A'),
  ('Grupo B', 'Descrição do Grupo B');

INSERT INTO
  posts (autor_id, texto, grupo_id)
VALUES
  (1, 'Primeiro post de Alice', NULL),
  (2, 'Post de Bob no Grupo A', 1),
  (3, 'Post de Carol no Grupo B', 2),
  (4, 'Post de Devin sem grupo', NULL),
  (5, 'Post de Eve no Grupo A', 1),
  (6, 'Post de Frank no Grupo A', 1),
  (7, 'Post de Grace no Grupo A', 1),
  (8, 'Post de Heidi no Grupo A', 1),
  (9, 'Post de Ivan no Grupo A', 1),
  (10, 'Post de Judy no Grupo A', 1),
  (11, 'Post de Mallory no Grupo A', 1),
  (12, 'Post de Niaj no Grupo A', 1),
  (13, 'Post de Olivia no Grupo A', 1),
  (14, 'Post de Peggy no Grupo A', 1),
  (15, 'Post de Sybil no Grupo A', 1),
  (NULL, 'Post sem autor', NULL);

INSERT INTO
  comentarios (post_id, autor_id, texto)
VALUES
  (1, 2, 'Comentário de Bob no post de Alice'),
  (2, 3, 'Comentário de Carol no post de Bob');

INSERT INTO
  likes (post_id, autor_id)
VALUES
 (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11),
  (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18);

INSERT INTO
  mensagens_privadas (remetente_id, destinatario_id, texto)
VALUES
  (1, 2, 'Mensagem privada de Alice para Bob'),
  (2, 3, 'Mensagem privada de Bob para Carol');

INSERT INTO
  amizades (usuario1_id, usuario2_id, data_inicio)
VALUES
  (1, 2, '2023-01-01'),
  (1, 3, '2023-01-01'),
  (1, 4, '2023-01-01'),
  (1, 5, '2023-01-01'),
  (1, 6, '2023-01-01'),
  (1, 7, '2023-01-01'),
  (1, 8, '2023-01-01'),
  (1, 9, '2023-01-01'),
  (1, 10, '2023-01-01'),
  (1, 11, '2023-01-01'),
  (1, 12, '2023-01-01'),
  (1, 13, '2023-01-01'),
  (1, 14, '2023-01-01'),
  (1, 15, '2023-01-01'),
  (1, 16, '2023-01-01'),
  (1, 17, '2023-01-01'),
  (1, 18, '2023-01-01'),
  (2, 1, '2023-01-01'), 
  (3, 1, '2023-01-01'), 
  (4, 1, '2023-01-01'), 
  (5, 1, '2023-01-01'), 
  (6, 1, '2023-01-01'), 
  (7, 1, '2023-01-01'), 
  (8, 1, '2023-01-01'), 
  (9, 1, '2023-01-01'), 
  (10, 1, '2023-01-01'), 
  (11, 1, '2023-01-01'), 
  (12, 1, '2023-01-01'), 
  (13, 1, '2023-01-01'), 
  (14, 1, '2023-01-01'), 
  (15, 1, '2023-01-01'), 
  (16, 1, '2023-01-01'), 
  (17, 1, '2023-01-01'), 
  (18, 1, '2023-01-01'); 

INSERT INTO
  membros_grupo (usuario_id, grupo_id, data_entrada)
VALUES
  (1, 1, '2023-02-01'),
  (2, 1, '2023-02-01'),
  (3, 1, '2023-02-01'),
  (4, 1, '2023-02-01'),
  (5, 1, '2023-02-01'),
  (6, 1, '2023-02-01'),
  (7, 1, '2023-02-01'),
  (8, 1, '2023-02-01'),
  (9, 1, '2023-02-01'),
  (10, 1, '2023-02-01'),
  (11, 1, '2023-02-01'),
  (12, 1, '2023-02-01'),
  (13, 1, '2023-02-01'),
  (14, 1, '2023-02-01'),
  (15, 1, '2023-02-01'),
  (16, 1, '2023-02-01');