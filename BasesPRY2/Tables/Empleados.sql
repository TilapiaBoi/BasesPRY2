﻿CREATE TABLE [dbo].[Empleados]
(
	[Id] INT NOT NULL IDENTITY, 
    [Cedula] NCHAR(9) NOT NULL, 
    [Nombre] NVARCHAR(50) NOT NULL, 
    [FechaNacimiento] DATE NOT NULL, 
    [Direccion] NVARCHAR(100) NOT NULL, 
    [Sexo] NCHAR NOT NULL, 
    [Correo] NVARCHAR(80) NOT NULL, 
    [TelCasa] NCHAR(8) NULL, 
    [TelCelular] NCHAR(8) NOT NULL, 
    [TelOtro] NCHAR(8) NULL,
    [Usuario] NVARCHAR(20) NOT NULL, 
    [Contrasena] NVARCHAR(20) NOT NULL, 
    [Tipo] INT NOT NULL, 
    [IdTeatro] INT NULL, 
    CONSTRAINT PkEmpelados_Id PRIMARY KEY (Id),
    CONSTRAINT UnEmpleados_Cedula UNIQUE (Cedula),
    CONSTRAINT UnEmpleados_TelCelular UNIQUE (TelCelular),
    CONSTRAINT UnEmpleados_Correo UNIQUE (Correo),
    CONSTRAINT UnEmpleados_Usuario UNIQUE (Usuario),
    CONSTRAINT FkEmpleados_IdTeatro FOREIGN KEY (IdTeatro) REFERENCES Teatros (Id) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT CkEmpleados_IdTeatro CHECK (NOT (Tipo=3 AND IdTeatro IS NOT NULL)),
    CONSTRAINT CkEmpleados_Cedula CHECK ((LEN(Cedula) = 9) AND (Cedula NOT LIKE '%[^0-9]%')),
    CONSTRAINT CkEmpleados_Sexo CHECK (Sexo = 'M' OR Sexo = 'F'),
    CONSTRAINT CkEmpleados_Correo CHECK (Correo LIKE '%_@__%.__%' AND (PATINDEX('%[^a-z,0-9,@,.,_,\-]%', Correo) = 0)),
    CONSTRAINT CkEmpleados_TelCasa CHECK (LEN(TelCasa) = 8 AND (TelCasa NOT LIKE '%[^0-9]%')),
    CONSTRAINT CkEmpleados_TelCelular CHECK (LEN(TelCelular) = 8 AND (TelCelular NOT LIKE '%[^0-9]%')),
    CONSTRAINT CkEmpleados_TelOtro CHECK (LEN(TelOtro) = 8 AND (TelOtro NOT LIKE '%[^0-9]%')),
    CONSTRAINT CkEmpleados_Nombre CHECK (NOT Nombre=''),
    CONSTRAINT CkEmpleados_Tipo CHECK (Tipo = 1 OR Tipo = 2 OR Tipo = 3)
)
