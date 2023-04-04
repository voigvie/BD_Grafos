##Banco de Dados orientado a Grafos 

O projeto que será apresentado utiliza Banco de Dados que serão orientados a grafos, por meio do SGBD Neo4j, que tem como objetivo catalogar filmes e seus gêneros correspondentes, para organização e facilidade ao escolher um filme para ser assistido.

O Neo4j é um dos principais SGBDs orientados a grafos disponíveis atualmente e permite a criação de bancos de dados flexíveis, escaláveis e de alto desempenho, a linguagem que é utilizada. Além disso, ele possui uma ampla variedade de ferramentas e recursos que facilitam a modelagem de dados, a criação de consultas e a integração com outras tecnologias, o que torna a utilização do banco de dados mais fácil e intuitiva, o que foi algo decisivo para a escolha dessa SGBD para o projeto.

###Instalação 

Este é um tutorial para instalar um banco de dados Neo4j usando Docker:
1. Abra um terminal no seu sistema operacional e certifique-se de que o Docker está instalado e em execução.
2. Digite o seguinte comando:
![Captura de tela 2023-04-03 203525](https://user-images.githubusercontent.com/108762029/229659925-ac0bd54e-9635-4100-b902-5b65297041a0.png)

3. Este comando vai iniciar um contêiner do Neo4j chamado "MovieDB" usando a imagem "neo4j:latest".
4. O parâmetro "-p" definirá as portas para acesso ao Neo4j Browser e à interface Bolt. O número "7474" é a porta padrão do Neo4j Browser e o número "7687" é a porta padrão do Bolt.
5. O parâmetro "-d" definirá o contêiner para executar em segundo plano.
6. Os parâmetros "-v" mapearam diretórios do host para diretórios dentro do contêiner. Esses diretórios contêm dados, logs, arquivos de importação e plugins do Neo4j.
7. O parâmetro "--env" definirá as variáveis de ambiente usadas para configurar o nome de usuário e a senha padrão para o Neo4j.
8. Depois de executar o comando, aguarde alguns segundos para que o contêiner seja iniciado. Em seguida, abra um navegador da web e digite "http://localhost:7474" para acessar o Neo4j Browser.
9. Na tela de login do Neo4j, digite o nome de usuário "neo4j" e a senha "password" conforme definido na variável de ambiente NEO4J_AUTH.

-> Inserção dos dados 

Agora adicionamos os dados e as relações no banco de dados, copiando os comandos abaixo e colando na barra de comandos do Neo4j. 

1. Criação dos nós de Filme.
   CREATE (m:Movie {title: "Matrix"});
   CREATE (m:Movie {title: "O Poderoso Chefão"});
   CREATE (m:Movie {title: "Star Wars: Uma Nova Esperança"});
   CREATE (m:Movie {title: "Jurassic Park"});
   CREATE (m:Movie {title: "Titanic"});
   CREATE (m:Movie {title: "O Senhor dos Anéis: A Sociedade do Anel"});
   CREATE (m:Movie {title: "De Volta Para o Futuro"});
   CREATE (m:Movie {title: "Pulp Fiction"});
   CREATE (m:Movie {title: "O Rei Leão"});
   CREATE (m:Movie {title: "Gladiador"});
   CREATE (m:Movie {title: "Os Vingadores"});
   CREATE (m:Movie {title: "Harry Potter e a Pedra Filosofal"});
   CREATE (m:Movie {title: "O Exterminador do Futuro 2: O Julgamento Final"});
   CREATE (m:Movie {title: "Forrest Gump: O Contador de Histórias"});
   CREATE (m:Movie {title: "Os Caçadores da Arca Perdida"});
   CREATE (m:Movie {title: "E.T.: O Extraterrestre"});
   CREATE (m:Movie {title: "A Lista de Schindler"});
   CREATE (m:Movie {title: "A Origem"});
   CREATE (m:Movie {title: "Interestelar"});
   CREATE (m:Movie {title: "Cidade de Deus"});
   CREATE (m:Movie {title: "As Branquelas"});
   CREATE (m:Movie {title: "Todo Mundo em Pânico"});
   CREATE (m:Movie {title: "Se Beber, Não Case!"});
   CREATE (m:Movie {title: "Missão Madrinha de Casamento"});
   CREATE (m:Movie {title: "Um Príncipe em Nova York"});
   CREATE (m:Movie {title: "O Resgate do Soldado Ryan"});
   CREATE (m:Movie {title: "Platoon"});
   CREATE (m:Movie {title: "Até o Último Homem"});
   CREATE (m:Movie {title: "Pearl Harbor"});

2. Criação dos nós de Gênero dos Filmes 
   CREATE (g:Genre {name: "Ação"});
   CREATE (g:Genre {name: "Drama"});
   CREATE (g:Genre {name: "Ficção Científica"});
   CREATE (g:Genre {name: "Romance"});
   CREATE (g:Genre {name: "Fantasia"});
   CREATE (g:Genre {name: "Crime"});
   CREATE (g:Genre {name: "Animação"});
   CREATE (g:Genre {name: "Aventura"});
   CREATE (g:Genre {name: "Comédia"});
   CREATE (g:Genre {name: "Guerra"});

3. Criação das relações entre Filme e Gênero
   MATCH (g:Genre {name: "Ação"}), (m:Movie {title: "Matrix"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Crime"}), (m:Movie {title: "O Poderoso Chefão"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "Star Wars: Uma Nova      Esperança"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Aventura"}), (m:Movie {title: "Jurassic Park"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Romance"}), (m:Movie {title: "Titanic"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Fantasia"}), (m:Movie {title: "O Senhor dos Anéis: A Sociedade do Anel"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Aventura"}), (m:Movie {title: "De Volta Para o Futuro"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Crime"}), (m:Movie {title: "Pulp Fiction"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Animação"}), (m:Movie {title: "O Rei Leão"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ação"}), (m:Movie {title: "Gladiador"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ação"}), (m:Movie {title: "Os Vingadores"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Fantasia"}), (m:Movie {title: "Harry Potter e a Pedra Filosofal"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "O Exterminador do Futuro 2: O Julgamento Final"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Drama"}), (m:Movie {title: "Forrest Gump: O Contador de Histórias"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Aventura"}), (m:Movie {title: "Os Caçadores da Arca Perdida"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "E.T.: O Extraterrestre"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Drama"}), (m:Movie {title: "A Lista de Schindler"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Drama"}), (m:Movie {title: "Cidade de Deus"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Comédia"}), (m:Movie {title: "As Branquelas"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Comédia"}), (m:Movie {title: "Todo Mundo em Pânico"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Comédia"}), (m:Movie {title: "Se Beber, Não Case!"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Comédia"}), (m:Movie {title: "Missão Madrinha de Casamento"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Comédia"}), (m:Movie {title: "Um Príncipe em Nova York"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Guerra"}), (m:Movie {title: "O Resgate do Soldado Ryan"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Guerra"}), (m:Movie {title: "Platoon"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Guerra"}), (m:Movie {title: "Até o Último Homem"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Guerra"}), (m:Movie {title: "Pearl Harbor"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "A Origem"})
   CREATE (m)-[:HAS_GENRE]->(g);

   MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "Interestelar"})
   CREATE (m)-[:HAS_GENRE]->(g);



###Tutorial de uso dos bancos 

Agora que adicionamos os dados, vamos utilizar os comandos em cypher para:

1. Selecionar todos os relacionamentos e nós do banco de dados, utilizando: 
![Captura de tela 2023-04-03 210128](https://user-images.githubusercontent.com/108762029/229660173-9f662db3-3526-455a-a6cc-12aa026db1fa.png)
2. Selecionar todos os nós de acordo com o tipo:
![Captura de tela 2023-04-03 210446](https://user-images.githubusercontent.com/108762029/229660212-c77b3b3e-3920-46c0-856b-466473645f08.png)
Esse comando irá retornar todos os filmes presentes no banco de dados. 
![Captura de tela 2023-04-03 210616](https://user-images.githubusercontent.com/108762029/229660230-26b38012-7d0a-48de-870c-256814af6f4a.png)
E esse retornará todos os gêneros de filmes presentes no banco de dados.

3. Escolher os nós e incluir um critério de filtragem:
![Captura de tela 2023-04-03 211321](https://user-images.githubusercontent.com/108762029/229660289-2341808d-e976-4c4a-8b0a-721f43e6fdb8.png)
Esse comando faz uma query em todos os nós de Genre e usa o atributo chamado "name" para pegar todos os nós que possuem o nome igual a "Drama" ou qualquer outro nome de gênero que você utilizar para buscar.

![Captura de tela 2023-04-03 211837](https://user-images.githubusercontent.com/108762029/229660328-da27550c-9c39-42f9-b1b1-6570535e996c.png)
Esse comando faz uma query em todos os nós de Movie e usa o atributo chamado "title" para pegar todos os nós que possuem o nome igual a "Titanic" ou qualquer outro nome de filme que você utilizar para buscar.

4. Selecionar as relações 
![Captura de tela 2023-04-03 212453](https://user-images.githubusercontent.com/108762029/229660376-5bafdbc6-e925-4b61-a1dc-6058f280d376.png)
Esse comando é usado para buscar por todos os filmes de um gênero específico, você pode alterar a parte de “g.name =  ‘’ " para qualquer gênero que desejar.

5. Inserindo dados 
![Captura de tela 2023-04-03 213323](https://user-images.githubusercontent.com/108762029/229660421-d5ec3e9d-6eb8-4c5e-b1f6-301967ec7ead.png)
Esse comando irá adicionar um novo título de filme.
![Captura de tela 2023-04-03 213616](https://user-images.githubusercontent.com/108762029/229660457-bfe9c919-3d7a-41dd-a951-a94b48016c0f.png)
Esse comando adiciona um novo nome de gênero.

-> Criando uma relação entre os novos dados adicionados.
![Captura de tela 2023-04-03 214108](https://user-images.githubusercontent.com/108762029/229660502-e69afa1c-638c-44fe-919c-29a2335b5504.png)

6. Removendo dados 
![Captura de tela 2023-04-03 214546](https://user-images.githubusercontent.com/108762029/229660534-6d8e50eb-afd5-456f-b0f0-21152a99a791.png)
Esse comando irá apagar o filme selecionado.



