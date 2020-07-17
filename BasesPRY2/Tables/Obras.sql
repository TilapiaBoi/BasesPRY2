﻿CREATE TABLE [dbo].[Obras]
(
	[Id] INT NOT NULL IDENTITY, 
    [Nombre] NVARCHAR(50) NOT NULL, 
    [Descripcion] NVARCHAR(200) NOT NULL,
    [IdTipo] INT NOT NULL, 
    CONSTRAINT PkObras_Id PRIMARY KEY (Id),
    CONSTRAINT UnObras_Nombre UNIQUE (Nombre),
    CONSTRAINT CkObras_Nombre CHECK (NOT NOMBRE=''),
    CONSTRAINT FkObras_IdTipo FOREIGN KEY (IdTipo) REFERENCES Tipos (Id) ON DELETE NO ACTION ON UPDATE CASCADE
)
