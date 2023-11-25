CREATE TABLE Autor 
( 
 ID_Autor INT PRIMARY KEY,  
 Nome VARCHAR(255) NOT NULL,  
 Pais VARCHAR(255) NOT NULL
);
CREATE TABLE Usuario 
( 
 ID_Usuario INT PRIMARY KEY,  
 Nome VARCHAR(255),  
 Endereco VARCHAR(255)
); 

CREATE TABLE Emprestimo ( 
 ID_Emprestimo INT PRIMARY KEY,  
 Data_Emprestimo INT,  
 Data_Devolucao INT,  
 ID_Usuario INT,
FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
); 

CREATE TABLE Livro_Emprestimo (
    ID_Livro INT,
    ID_Emprestimo INT,
    PRIMARY KEY (ID_Livro, ID_Emprestimo),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro),
    FOREIGN KEY (ID_Emprestimo) REFERENCES Emprestimo(ID_Emprestimo)
);

CREATE TABLE Devolucao 
( 
 ID_Devolucao INT PRIMARY KEY,  
 Data_Devolucao DATE,  
 ID_Emprestimo INT,
FOREIGN KEY (ID_Emprestimo) REFERENCES Emprestimo(ID_Emprestimo)
);


