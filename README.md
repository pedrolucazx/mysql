# Desafio MySQL: Sistema de Rede Social Avançado com Grupos e Conceitos Adicionais

## Sobre

Desafio de criação de um sistema de rede social avançado utilizando MySQL e DBEAVER como IDE de desenvolvimento. Este desafio abrange desde conceitos básicos até funcionalidades avançadas do MySQL, incluindo Stored Procedures, Backup, Otimização de Consultas e mais.

## Objetivo

Colocar em prática o que aprendi no curso [Banco de Dados SQL do Zero ao Avançado + Projetos Reais 2024](https://www.udemy.com/course/curso-sql-do-zero-ao-avancado/?couponCode=KEEPLEARNING) e desenvolver um sistema de rede social com funcionalidades que incluem gerenciamento de usuários, posts, comentários, likes, mensagens privadas, entre outros.

## Tecnologias

![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
[![DBeaver](https://img.shields.io/badge/DBeaver-white?style=for-the-badge&logo=data:image/png;base64,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)](https://dbeaver.io/)

## Desafio

Você vai criar um sistema de rede social usando apenas o DBEAVER como IDE de desenvolvimento e um servidor MySQL. O sistema deve lidar com usuários, posts, comentários, likes, mensagens privadas etc.

### Tabelas necessárias:

1. **Usuários**: ID, nome, email, senha, data de registro, etc.
2. **Posts**: ID, ID do autor, texto, data de publicação, ID do grupo (opcional), etc.
3. **Comentários**: ID, ID do post associado, ID do autor, texto, data de publicação, etc.
4. **Likes**: ID, ID do post associado, ID do autor do like, etc.
5. **MensagensPrivadas**: ID, ID do remetente, ID do destinatário, texto, data de envio, etc.
6. **Amizades**: ID do usuário1, ID do usuário2, data de início da amizade, etc.
7. **Grupos**: ID, nome do grupo, descrição, etc.
8. **MembrosGrupo**: ID do usuário, ID do grupo, data de entrada no grupo, etc.

### Relacionamentos:

1. Um usuário pode pertencer a vários grupos.
2. Um grupo pode ter vários membros.
3. Um post, se estiver relacionado a um grupo, deverá ser exibido apenas para membros daquele grupo. Se o post não estiver relacionado a um grupo, então ele é um post público e pode ser exibido por qualquer pessoa.

### Stored Procedures:

1. Crie alguns procedimentos armazenados simples para realizar operações comuns, como inserção de um novo usuário, exclusão de um post ou atualização de dados de um usuário.

### Backup:

1. Crie um procedimento para realizar o backup dos dados do banco de dados em um arquivo de texto e outro procedimento para restaurar esses dados a partir do arquivo de backup.

### Otimização de Consultas:

1. Adicione índices nas colunas relevantes das tabelas utilizadas.

### Segurança do Banco de Dados:

1. Implemente um esquema de usuários que podem acessar seu banco de dados e realizar operações. Defina privilégios a esses usuários.

## Mini-Desafios

Popule seu banco de dados e execute os seguintes mini-desafios para fortalecer seus conhecimentos em MySQL:

1. **MySQL SELECT**:

   - Escreva uma consulta para selecionar o nome e o email de todos os usuários da tabela "Usuários".

2. **MySQL WHERE**:

   - Escreva uma consulta para selecionar todos os posts feitos por um usuário específico, identificado pelo seu ID.

3. **MySQL AND, OR, NOT**:

   - Escreva uma consulta para selecionar todos os posts que contêm uma determinada palavra-chave no texto e que foram publicados depois de uma determinada data, ou que foram feitos por um usuário específico.

4. **MySQL ORDER BY**:

   - Escreva uma consulta para selecionar os posts mais recentes, ordenados pela data de publicação em ordem decrescente.

5. **MySQL INSERT INTO**:

   - Escreva uma instrução SQL para inserir um novo registro na tabela "Usuários" com informações de um novo usuário.

6. **MySQL NULL Values**:

   - Escreva uma consulta para selecionar todos os posts que não têm um grupo associado (NULL no campo ID do grupo).

7. **MySQL UPDATE**:

   - Escreva uma instrução SQL para atualizar o nome de um usuário específico na tabela "Usuários".

8. **MySQL DELETE**:

   - Escreva uma instrução SQL para excluir um post específico da tabela "Posts".

9. **MySQL LIMIT**:

   - Escreva uma consulta para selecionar os 10 posts mais recentes, limitando o número de resultados (paginação).

10. **MySQL MIN and MAX**:

    - Escreva uma consulta para encontrar a data do primeiro e do último post feito por um usuário específico.

11. **MySQL COUNT, AVG, SUM**:

    - Escreva uma consulta para contar o número total de likes em um post específico e calcular a média de likes por post.

12. **MySQL LIKE**:

    - Escreva uma consulta para selecionar todos os usuários cujo nome começa com a letra "A".

13. **MySQL Wildcards**:

    - Escreva uma consulta para selecionar todos os usuários cujo nome contém a palavra "dev", independentemente da posição da palavra no nome.

14. **MySQL IN**:

    - Escreva uma consulta para selecionar todos os posts feitos por usuários específicos, identificados por seus IDs.

15. **MySQL BETWEEN**:

    - Escreva uma consulta para selecionar todos os posts feitos entre duas datas específicas.

16. **MySQL Aliases**:

    - Escreva uma consulta para selecionar o nome do autor e o texto do post, renomeando as colunas como "Autor" e "Conteúdo".

17. **MySQL Joins**:

    - Escreva uma consulta para selecionar o nome do autor e o texto do post, incluindo informações do usuário autor do post da tabela "Usuários".

18. **MySQL INNER JOIN**:

    - Escreva uma consulta para selecionar os posts e os respectivos autores, excluindo aqueles que não têm um autor associado.

19. **MySQL LEFT JOIN**:

    - Escreva uma consulta para selecionar todos os usuários e os posts que eles fizeram, incluindo os usuários que não têm posts.

20. **MySQL RIGHT JOIN**:

    - Escreva uma consulta para selecionar todos os posts e os respectivos autores, incluindo os posts que não têm um autor associado.

21. **MySQL CROSS JOIN**:

    - Escreva uma consulta para criar todas as combinações possíveis de usuários e grupos, sem aplicar uma condição de junção.

22. **MySQL Self Join**:

    - Escreva uma consulta para selecionar todos os pares de usuários que são amigos, utilizando a tabela "Amizades".

23. **MySQL UNION**:

    - Escreva uma consulta para combinar os resultados de duas consultas diferentes que selecionam posts e mensagens privadas, respectivamente.

24. **MySQL GROUP BY**:

    - Escreva uma consulta para contar o número de posts feitos por cada usuário, agrupando os resultados pelo ID do autor.

25. **MySQL HAVING**:

    - Escreva uma consulta para selecionar os grupos que têm mais de 10 membros, aplicando a condição após a cláusula GROUP BY.

26. **MySQL EXISTS**:

    - Escreva uma consulta para selecionar todos os usuários que têm pelo menos um post na tabela "Posts".

27. **MySQL ANY, ALL**:

    - Escreva uma consulta para selecionar todos os posts que receberam likes de todos os usuários que estão na tabela "Usuários".

28. **MySQL INSERT SELECT**:

    - Escreva uma instrução SQL para inserir uma cópia de todos os posts feitos por um usuário específico em outra tabela chamada "PostsBackup".

29. **MySQL CASE**:

    - Escreva uma consulta para selecionar o nome do autor e o texto do post, substituindo o nome do autor por "Usuário Anônimo" se o autor estiver ausente.

30. **MySQL Operators**:

    - Escreva uma consulta para selecionar os posts que foram publicados depois de uma determinada data e que receberam mais de 10 likes.

31. **MySQL Views**:
    - Crie uma view chamada "PopularPosts" que exiba os posts mais populares (com mais de 100 likes) com o nome do autor e o número de likes.
