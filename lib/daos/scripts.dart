const createTableUsuario = '''
CREATE TABLE Usuario(
id INTEGER NOT NULL PRIMARY KEY, 
nome VARCHAR(50) NOT NULL, 
contato VARCHAR(50) NOT NULL, 
tipoContato VARCHAR(50) NOT NULL
);
''';

const createTableAnuncio = '''
CREATE TABLE Anuncio(
id INTEGER NOT NULL PRIMARY KEY, 
usuarioID INTEGER NOT NULL,
tipoAnuncio VARCHAR(50) NOT NULL, 
descricao VARCHAR(50) NOT NULL, 
descricaoAdicional VARCHAR(50) NULL, 
descricaoComplementar VARCHAR(50) NULL, 
expectativa VARCHAR(50) NOT NULL, 
expectativaAdicional VARCHAR(50) NULL, 
expectativaComplementar VARCHAR(50) NULL, 
estado VARCHAR(50) NOT NULL, 
cidade VARCHAR(50) NOT NULL, 
bairro VARCHAR(50) NOT NULL, 
exibirContato BIT NOT NULL,
dataAnuncio VARCHAR(50) NOT NULL, 
status VARCHAR(50) NOT NULL, 
);
''';