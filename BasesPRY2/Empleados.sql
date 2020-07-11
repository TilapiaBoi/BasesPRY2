﻿CREATE TABLE [dbo].[Empleados]
(
	[Id] INT NOT NULL IDENTITY, 
    [Cedula] NCHAR(9) NOT NULL, 
    [Nombre] NVARCHAR(20) NOT NULL, 
    [Apellido] NVARCHAR(20) NOT NULL, 
    [FechaNacimiento] DATE NOT NULL, 
    [Direccion] NVARCHAR(50) NOT NULL, 
    [Sexo] NCHAR NOT NULL, 
    [Correo] NVARCHAR(50) NOT NULL, 
    [TelCasa] NCHAR(8) NOT NULL, 
    [TelCelular] NCHAR(8) NOT NULL, 
    [TelOtro] NCHAR(8) NULL,
    [Usuario] NVARCHAR(20) NOT NULL, 
    [Contrasena] NVARCHAR(20) NOT NULL, 
    [Tipo] NCHAR(1) NOT NULL, 
    [IdTeatro] INT NULL, 
    PRIMARY KEY (Id),
    UNIQUE (Cedula),
    UNIQUE (TelCelular),
    UNIQUE (Correo),
    UNIQUE (Usuario),
    FOREIGN KEY (IdTeatro) REFERENCES Teatros (Id)
)