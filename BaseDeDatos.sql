CREATE DATABASE SistemaUsuarios;
GO

USE SistemaUsuarios;
GO

CREATE TABLE Roles
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Usuarios
(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    RolId INT NOT NULL,

    CONSTRAINT FK_Usuarios_Roles
        FOREIGN KEY (RolId)
        REFERENCES Roles(Id)
);
GO
