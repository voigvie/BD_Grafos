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

MATCH (g:Genre {name: "Ação"}), (m:Movie {title: "Matrix"})
CREATE (m)-[:HAS_GENRE]->(g);

MATCH (g:Genre {name: "Crime"}), (m:Movie {title: "O Poderoso Chefão"})
CREATE (m)-[:HAS_GENRE]->(g);

MATCH (g:Genre {name: "Ficção Científica"}), (m:Movie {title: "Star Wars: Uma Nova Esperança"})
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