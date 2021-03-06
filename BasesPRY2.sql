/*
Tarea Programada #2 - Bases de Datos I
Joseph Tenorio y Jose Pablo Muñoz

El siguiente script crea todos los componentes de la instancia necesarios para correr la solución a la tarea programada 2
NOTAS IMPORTANTES:

1) El script debe ser ejecutado desde un login de administrador del sistema
2) Los scripts de post-publicación 2 y 3 (últimas dos secciones del presente script) REQUIEREN DE UNA PEQUEÑA MODIFICACIÓN ANTES DE EJECUTAR EL PRESENTE SCRIPT.
Las instrucciones de dicha modificación se encuentran en su respectivo encabezado.
3) EL script de la seccion 2 (creacion de la base de datos) REQUIEREN DE UNA PEQUEÑA MODIFICACIÓN ANTES DE EJECUTAR EL PRESENTE SCRIPT.
Las instrucciones de dicha modificación se encuentran en su respectivo encabezado.
*/

/*
-------------------------Sección 1: Script de Pre-Publicación #1----------------------
Esta primera sección del script crea los 5 ApplicationLogins por medio de los cuales se interactúa
con la base de datos.
--------------------------------------------------------------------------------------
*/
USE [master]
GO

CREATE LOGIN [ApplicationLogin1] WITH PASSWORD=N'ElGalloDeDatos25=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

CREATE LOGIN [ApplicationLogin2] WITH PASSWORD=N'ElGalloDeDatos25', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

CREATE LOGIN [ApplicationLogin3] WITH PASSWORD=N'ElGalloDeDatos25', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

CREATE LOGIN [ApplicationLogin4] WITH PASSWORD=N'ElGalloDeDatos25', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

CREATE LOGIN [ApplicationLogin5] WITH PASSWORD=N'ElGalloDeDatos25', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO

/*
-------------------------Sección 2: Script de Publicación----------------------------
Esta sección del script crea todos los componentes de la base de datos de empleada.

IMPORTANTE: Se debe modificar el parametro FILENAME con la direccio de la instancia de
SQL Server en la computadora actual.
--------------------------------------------------------------------------------------
*/

CREATE DATABASE [BasesPRY2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BasesPRY2', FILENAME = N'D:\SQL 2019\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BasesPRY2_Primary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- Se debe cambiar la direccion anterior con la ubicacion de la instancia en la computadora actual para poder crear la base de datos
 LOG ON 
( NAME = N'BasesPRY2_log', FILENAME = N'D:\SQL 2019\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BasesPRY2_Primary.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- Se debe cambiar la direccion anterior con la ubicacion de la instancia en la computadora actual para poder crear la base de datos
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BasesPRY2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BasesPRY2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BasesPRY2] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [BasesPRY2] SET ANSI_NULLS ON 
GO
ALTER DATABASE [BasesPRY2] SET ANSI_PADDING ON 
GO
ALTER DATABASE [BasesPRY2] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [BasesPRY2] SET ARITHABORT ON 
GO
ALTER DATABASE [BasesPRY2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BasesPRY2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BasesPRY2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BasesPRY2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BasesPRY2] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [BasesPRY2] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [BasesPRY2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BasesPRY2] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [BasesPRY2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BasesPRY2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BasesPRY2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BasesPRY2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BasesPRY2] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [BasesPRY2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BasesPRY2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BasesPRY2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BasesPRY2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BasesPRY2] SET RECOVERY FULL 
GO
ALTER DATABASE [BasesPRY2] SET  MULTI_USER 
GO
ALTER DATABASE [BasesPRY2] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [BasesPRY2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BasesPRY2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BasesPRY2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BasesPRY2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BasesPRY2', N'ON'
GO
ALTER DATABASE [BasesPRY2] SET QUERY_STORE = OFF
GO
USE [BasesPRY2]
GO
/****** Object:  User [ApplicationUser5]    Script Date: 28/7/2020 16:20:02 ******/
CREATE USER [ApplicationUser5] FOR LOGIN [ApplicationLogin5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ApplicationUser4]    Script Date: 28/7/2020 16:20:02 ******/
CREATE USER [ApplicationUser4] FOR LOGIN [ApplicationLogin4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ApplicationUser3]    Script Date: 28/7/2020 16:20:02 ******/
CREATE USER [ApplicationUser3] FOR LOGIN [ApplicationLogin3] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ApplicationUser2]    Script Date: 28/7/2020 16:20:02 ******/
CREATE USER [ApplicationUser2] FOR LOGIN [ApplicationLogin2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ApplicationUser1]    Script Date: 28/7/2020 16:20:02 ******/
CREATE USER [ApplicationUser1] FOR LOGIN [ApplicationLogin1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [TheaterAgent]    Script Date: 28/7/2020 16:20:02 ******/
CREATE ROLE [TheaterAgent]
GO
/****** Object:  DatabaseRole [TheaterAdmin]    Script Date: 28/7/2020 16:20:02 ******/
CREATE ROLE [TheaterAdmin]
GO
/****** Object:  DatabaseRole [SystemAdmin]    Script Date: 28/7/2020 16:20:02 ******/
CREATE ROLE [SystemAdmin]
GO
/****** Object:  DatabaseRole [InitialRole]    Script Date: 28/7/2020 16:20:02 ******/
CREATE ROLE [InitialRole]
GO
ALTER ROLE [InitialRole] ADD MEMBER [ApplicationUser5]
GO
ALTER ROLE [InitialRole] ADD MEMBER [ApplicationUser4]
GO
ALTER ROLE [InitialRole] ADD MEMBER [ApplicationUser3]
GO
ALTER ROLE [InitialRole] ADD MEMBER [ApplicationUser2]
GO
ALTER ROLE [InitialRole] ADD MEMBER [ApplicationUser1]
GO
/****** Object:  UserDefinedTableType [dbo].[ListaAsientos]    Script Date: 28/7/2020 16:20:02 ******/
CREATE TYPE [dbo].[ListaAsientos] AS TABLE(
	[IdAsientoPresentacion] [int] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[IdAsientoPresentacion] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fila] [nchar](1) NOT NULL,
	[Columna] [int] NOT NULL,
	[IdBloque] [int] NOT NULL,
 CONSTRAINT [PkAsientos_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnAsientos_FilaYColumnaYIdBloque] UNIQUE NONCLUSTERED 
(
	[Fila] ASC,
	[Columna] ASC,
	[IdBloque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwCantidadAsientosPorFila]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwCantidadAsientosPorFila]
	AS 
	SELECT IdBloque, Fila, COUNT(*) AS CantidadAsientos
	FROM Asientos
	GROUP BY IdBloque, Fila
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
 CONSTRAINT [PkEstados_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnEstados_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obras]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[IdTipo] [int] NOT NULL,
 CONSTRAINT [PkObras_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnObras_NombreYIdTipo] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC,
	[IdTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraInicio] [datetime] NULL,
	[FechaHoraFin] [datetime] NULL,
	[IdTeatro] [int] NOT NULL,
	[IdObra] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PkProducciones_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnProducciones_IdTeatroYIdObra] UNIQUE NONCLUSTERED 
(
	[IdTeatro] ASC,
	[IdObra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teatros]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teatros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Link] [nvarchar](50) NOT NULL,
	[TelBoleteria] [nchar](8) NOT NULL,
	[TelAdmin] [nchar](8) NOT NULL,
 CONSTRAINT [PkTeatros_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnTeatros_Correo] UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnTeatros_Link] UNIQUE NONCLUSTERED 
(
	[Link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnTeatros_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnTeatros_TelAdmin] UNIQUE NONCLUSTERED 
(
	[TelAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
 CONSTRAINT [PkTipos_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnTipos_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwProduccionesPublicas]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VwProduccionesPublicas]
	AS 
	SELECT p.Id, p.FechaHoraInicio, p.FechaHoraFin, e.Nombre AS Estado, te.Nombre AS Teatro, o.Nombre AS Obra, ti.Nombre AS Tipo, o.Descripcion
	FROM Producciones p
	INNER JOIN Estados e ON p.IdEstado = e.Id 
	INNER JOIN Teatros  te ON p.IdTeatro = te.Id
	INNER JOIN Obras o ON p.IdObra = o.Id
	INNER JOIN Tipos ti ON o.IdTipo = ti.Id
	WHERE e.Nombre <> 'Confidencial'
GO
/****** Object:  Table [dbo].[AsientosPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsientosPresentaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EstaOcupado] [bit] NOT NULL,
	[IdPresentacion] [int] NOT NULL,
	[IdAsiento] [int] NOT NULL,
	[IdRegistroPago] [int] NULL,
 CONSTRAINT [PkAsientosPresentaciones_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnAsientosPresentaciones_IdPresentacionYIdAsiento] UNIQUE NONCLUSTERED 
(
	[IdPresentacion] ASC,
	[IdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bloques]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bloques](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[IdTeatro] [int] NOT NULL,
 CONSTRAINT [PkBloques_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnBloques_NombreYIdTeatro] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC,
	[IdTeatro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BloquesProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloquesProducciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[IdBloque] [int] NOT NULL,
	[IdProduccion] [int] NOT NULL,
 CONSTRAINT [PkBloquesProducciones_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnBloquesProducciones_IdBloqueYIdProduccion] UNIQUE NONCLUSTERED 
(
	[IdBloque] ASC,
	[IdProduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Telefono] [nchar](8) NOT NULL,
	[Correo] [nvarchar](80) NULL,
 CONSTRAINT [PkClientes_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnClientes_TelefonoYNombre] UNIQUE NONCLUSTERED 
(
	[Telefono] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [nchar](9) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Sexo] [nchar](1) NOT NULL,
	[Correo] [nvarchar](80) NOT NULL,
	[TelCasa] [nchar](8) NULL,
	[TelCelular] [nchar](8) NOT NULL,
	[TelOtro] [nchar](8) NULL,
	[Usuario] [nvarchar](20) NOT NULL,
	[Contrasena] [nvarchar](20) NOT NULL,
	[Tipo] [int] NOT NULL,
	[IdTeatro] [int] NULL,
 CONSTRAINT [PkEmpelados_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnEmpleados_Cedula] UNIQUE NONCLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnEmpleados_Correo] UNIQUE NONCLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnEmpleados_TelCelular] UNIQUE NONCLUSTERED 
(
	[TelCelular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnEmpleados_Usuario] UNIQUE NONCLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraInicio] [datetime] NOT NULL,
	[IdProduccion] [int] NOT NULL,
 CONSTRAINT [PkPresentaciones_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UnPresentaciones_FechaHoraInicioYIdProduccion] UNIQUE NONCLUSTERED 
(
	[FechaHoraInicio] ASC,
	[IdProduccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroPagos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroPagos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraCompra] [datetime] NOT NULL,
	[Codigo] [nchar](6) NULL,
	[CantidadAsientos] [int] NOT NULL,
	[CostoTotal] [decimal](18, 2) NOT NULL,
	[TipoPago] [bit] NOT NULL,
	[IdCliente] [int] NOT NULL,
 CONSTRAINT [PkRegistroPagos_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reportes]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reportes](
	[Fecha] [date] NOT NULL,
	[TiquetesVendidos] [int] NOT NULL,
	[CostoPromedio] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PkRegistros_Fecha] PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsientosPresentaciones] ADD  DEFAULT ((0)) FOR [EstaOcupado]
GO
ALTER TABLE [dbo].[Teatros] ADD  DEFAULT ((0)) FOR [Capacidad]
GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [FkAsientos_IdBloque] FOREIGN KEY([IdBloque])
REFERENCES [dbo].[Bloques] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [FkAsientos_IdBloque]
GO
ALTER TABLE [dbo].[AsientosPresentaciones]  WITH CHECK ADD  CONSTRAINT [FkAsientosPresentaciones_IdAsiento] FOREIGN KEY([IdAsiento])
REFERENCES [dbo].[Asientos] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsientosPresentaciones] CHECK CONSTRAINT [FkAsientosPresentaciones_IdAsiento]
GO
ALTER TABLE [dbo].[AsientosPresentaciones]  WITH CHECK ADD  CONSTRAINT [FkAsientosPresentaciones_IdPresentacion] FOREIGN KEY([IdPresentacion])
REFERENCES [dbo].[Presentaciones] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsientosPresentaciones] CHECK CONSTRAINT [FkAsientosPresentaciones_IdPresentacion]
GO
ALTER TABLE [dbo].[AsientosPresentaciones]  WITH CHECK ADD  CONSTRAINT [FkAsientosPresentaciones_IdRegistroPago] FOREIGN KEY([IdRegistroPago])
REFERENCES [dbo].[RegistroPagos] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AsientosPresentaciones] CHECK CONSTRAINT [FkAsientosPresentaciones_IdRegistroPago]
GO
ALTER TABLE [dbo].[Bloques]  WITH CHECK ADD  CONSTRAINT [FkBloques_IdTeatro] FOREIGN KEY([IdTeatro])
REFERENCES [dbo].[Teatros] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bloques] CHECK CONSTRAINT [FkBloques_IdTeatro]
GO
ALTER TABLE [dbo].[BloquesProducciones]  WITH CHECK ADD  CONSTRAINT [FkBloquesProducciones_IdBloque] FOREIGN KEY([IdBloque])
REFERENCES [dbo].[Bloques] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BloquesProducciones] CHECK CONSTRAINT [FkBloquesProducciones_IdBloque]
GO
ALTER TABLE [dbo].[BloquesProducciones]  WITH CHECK ADD  CONSTRAINT [FkBloquesProducciones_IdProduccion] FOREIGN KEY([IdProduccion])
REFERENCES [dbo].[Producciones] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BloquesProducciones] CHECK CONSTRAINT [FkBloquesProducciones_IdProduccion]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FkEmpleados_IdTeatro] FOREIGN KEY([IdTeatro])
REFERENCES [dbo].[Teatros] ([Id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FkEmpleados_IdTeatro]
GO
ALTER TABLE [dbo].[Obras]  WITH CHECK ADD  CONSTRAINT [FkObras_IdTipo] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[Tipos] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Obras] CHECK CONSTRAINT [FkObras_IdTipo]
GO
ALTER TABLE [dbo].[Presentaciones]  WITH CHECK ADD  CONSTRAINT [FkPresentaciones_IdProduccion] FOREIGN KEY([IdProduccion])
REFERENCES [dbo].[Producciones] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Presentaciones] CHECK CONSTRAINT [FkPresentaciones_IdProduccion]
GO
ALTER TABLE [dbo].[Producciones]  WITH CHECK ADD  CONSTRAINT [FkProducciones_IdEstado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Producciones] CHECK CONSTRAINT [FkProducciones_IdEstado]
GO
ALTER TABLE [dbo].[Producciones]  WITH CHECK ADD  CONSTRAINT [FkProducciones_IdObra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[Obras] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Producciones] CHECK CONSTRAINT [FkProducciones_IdObra]
GO
ALTER TABLE [dbo].[Producciones]  WITH CHECK ADD  CONSTRAINT [FkProducciones_IdTeatro] FOREIGN KEY([IdTeatro])
REFERENCES [dbo].[Teatros] ([Id])
GO
ALTER TABLE [dbo].[Producciones] CHECK CONSTRAINT [FkProducciones_IdTeatro]
GO
ALTER TABLE [dbo].[RegistroPagos]  WITH CHECK ADD  CONSTRAINT [PkRegistroPagos_IdCliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RegistroPagos] CHECK CONSTRAINT [PkRegistroPagos_IdCliente]
GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [CkAsientos_Columna] CHECK  (([Columna]>(0)))
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [CkAsientos_Columna]
GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [CkAsientos_Fila] CHECK  (([Fila] like '[A-Z]'))
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [CkAsientos_Fila]
GO
ALTER TABLE [dbo].[AsientosPresentaciones]  WITH CHECK ADD  CONSTRAINT [CkAsientosPresentaciones_EstaOcupado] CHECK  ((NOT ([IdRegistroPago] IS NOT NULL AND [EstaOcupado]=(0))))
GO
ALTER TABLE [dbo].[AsientosPresentaciones] CHECK CONSTRAINT [CkAsientosPresentaciones_EstaOcupado]
GO
ALTER TABLE [dbo].[Bloques]  WITH CHECK ADD  CONSTRAINT [CkBloques_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Bloques] CHECK CONSTRAINT [CkBloques_Nombre]
GO
ALTER TABLE [dbo].[BloquesProducciones]  WITH CHECK ADD  CONSTRAINT [CkBloquesProducciones_Precio] CHECK  (([Precio]>(0)))
GO
ALTER TABLE [dbo].[BloquesProducciones] CHECK CONSTRAINT [CkBloquesProducciones_Precio]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [CkClientes_Correo] CHECK  (([Correo] like '%_@__%.__%' AND patindex('%[^a-z,0-9,@,.,_,\-]%',[Correo])=(0)))
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [CkClientes_Correo]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [CkClientes_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [CkClientes_Nombre]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [CkClientes_Telefono] CHECK  ((len([Telefono])=(8) AND NOT [Telefono] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [CkClientes_Telefono]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_Cedula] CHECK  ((len([Cedula])=(9) AND NOT [Cedula] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_Cedula]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_Correo] CHECK  (([Correo] like '%_@__%.__%' AND patindex('%[^a-z,0-9,@,.,_,\-]%',[Correo])=(0)))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_Correo]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_IdTeatro] CHECK  ((NOT ([Tipo]=(3) AND [IdTeatro] IS NOT NULL)))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_IdTeatro]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_Nombre]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_Sexo] CHECK  (([Sexo]='M' OR [Sexo]='F'))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_Sexo]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_TelCasa] CHECK  ((len([TelCasa])=(8) AND NOT [TelCasa] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_TelCasa]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_TelCelular] CHECK  ((len([TelCelular])=(8) AND NOT [TelCelular] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_TelCelular]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_TelOtro] CHECK  ((len([TelOtro])=(8) AND NOT [TelOtro] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_TelOtro]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [CkEmpleados_Tipo] CHECK  (([Tipo]=(1) OR [Tipo]=(2) OR [Tipo]=(3)))
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [CkEmpleados_Tipo]
GO
ALTER TABLE [dbo].[Estados]  WITH CHECK ADD  CONSTRAINT [CkEstados_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Estados] CHECK CONSTRAINT [CkEstados_Nombre]
GO
ALTER TABLE [dbo].[Obras]  WITH CHECK ADD  CONSTRAINT [CkObras_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Obras] CHECK CONSTRAINT [CkObras_Nombre]
GO
ALTER TABLE [dbo].[Producciones]  WITH CHECK ADD  CONSTRAINT [CkProducciones_FechaFin] CHECK  (([FechaHoraFin]>=[FechaHoraInicio]))
GO
ALTER TABLE [dbo].[Producciones] CHECK CONSTRAINT [CkProducciones_FechaFin]
GO
ALTER TABLE [dbo].[RegistroPagos]  WITH CHECK ADD  CONSTRAINT [CkRegistroPagos_CantidadAsientos] CHECK  (([CantidadAsientos]>(0)))
GO
ALTER TABLE [dbo].[RegistroPagos] CHECK CONSTRAINT [CkRegistroPagos_CantidadAsientos]
GO
ALTER TABLE [dbo].[RegistroPagos]  WITH CHECK ADD  CONSTRAINT [CkRegistroPagos_Codigo] CHECK  ((len([Codigo])=(6) AND NOT [CODIGO] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[RegistroPagos] CHECK CONSTRAINT [CkRegistroPagos_Codigo]
GO
ALTER TABLE [dbo].[RegistroPagos]  WITH CHECK ADD  CONSTRAINT [CkRegistroPagos_CostoTotal] CHECK  (([CostoTotal]>(0)))
GO
ALTER TABLE [dbo].[RegistroPagos] CHECK CONSTRAINT [CkRegistroPagos_CostoTotal]
GO
ALTER TABLE [dbo].[RegistroPagos]  WITH CHECK ADD  CONSTRAINT [CkRegistroPagos_TipoPago] CHECK  ((NOT ([Codigo] IS NULL AND [TipoPago]=(1))))
GO
ALTER TABLE [dbo].[RegistroPagos] CHECK CONSTRAINT [CkRegistroPagos_TipoPago]
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD  CONSTRAINT [CkRegistros_PromedioAsientos] CHECK  (([CostoPromedio]>=(0)))
GO
ALTER TABLE [dbo].[Reportes] CHECK CONSTRAINT [CkRegistros_PromedioAsientos]
GO
ALTER TABLE [dbo].[Reportes]  WITH CHECK ADD  CONSTRAINT [CkRegistros_TiquetesVendidos] CHECK  (([TiquetesVendidos]>=(0)))
GO
ALTER TABLE [dbo].[Reportes] CHECK CONSTRAINT [CkRegistros_TiquetesVendidos]
GO
ALTER TABLE [dbo].[Teatros]  WITH CHECK ADD  CONSTRAINT [CkTeatros_Capacidad] CHECK  (([Capacidad]>=(0)))
GO
ALTER TABLE [dbo].[Teatros] CHECK CONSTRAINT [CkTeatros_Capacidad]
GO
ALTER TABLE [dbo].[Teatros]  WITH CHECK ADD  CONSTRAINT [CkTeatros_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Teatros] CHECK CONSTRAINT [CkTeatros_Nombre]
GO
ALTER TABLE [dbo].[Teatros]  WITH CHECK ADD  CONSTRAINT [CkTeatros_TelAdmin] CHECK  ((len([TelAdmin])=(8) AND NOT [TelAdmin] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Teatros] CHECK CONSTRAINT [CkTeatros_TelAdmin]
GO
ALTER TABLE [dbo].[Teatros]  WITH CHECK ADD  CONSTRAINT [CkTeatros_TelBoleteria] CHECK  ((len([TelBoleteria])=(8) AND NOT [TelBoleteria] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[Teatros] CHECK CONSTRAINT [CkTeatros_TelBoleteria]
GO
ALTER TABLE [dbo].[Tipos]  WITH CHECK ADD  CONSTRAINT [CkTipos_Nombre] CHECK  ((NOT [Nombre]=''))
GO
ALTER TABLE [dbo].[Tipos] CHECK CONSTRAINT [CkTipos_Nombre]
GO
/****** Object:  StoredProcedure [dbo].[AdmSisCreateAsiento]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisCreateAsiento]
	@IdBloque INT,
	@Cantidad INT
AS
	SET NOCOUNT ON

	DECLARE @Fila NCHAR(1)
	SET @Fila = 
	(
		SELECT TOP 1 Fila
		FROM Asientos
		WHERE IdBloque = @IdBloque
		ORDER BY Fila DESC
	)

	IF @Fila IS NOT NULL
		SET @Fila = NCHAR(ASCII(@Fila) + 1)
	ELSE
		SET @Fila = 'A'

	DECLARE @Columna INT
	SET @Columna = 1

	WHILE @Cantidad > 0
	BEGIN
		INSERT INTO Asientos (Fila, Columna, IdBloque)
		VALUES (@Fila, @Columna, @IdBloque)
		SET @Columna = @Columna + 1
		SET @Cantidad = @Cantidad - 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AdmSisCreateBloque]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisCreateBloque]
	@IdTeatro INT,
	@Nombre NVARCHAR(30)
AS
	SET NOCOUNT ON

	INSERT INTO Bloques (Nombre, IdTeatro)
	VALUES (@Nombre, @IdTeatro)
GO
/****** Object:  StoredProcedure [dbo].[AdmSisCreateEmpleadoAdmTe]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisCreateEmpleadoAdmTe]
	@Cedula NCHAR(9),
	@Nombre NVARCHAR(50),
	@FechaNacimiento DATE,
	@Direccion NVARCHAR(100),
	@Sexo NCHAR(1),
	@Correo NVARCHAR(80),
	@Usuario NVARCHAR(20),
	@Contrasena NVARCHAR(20),
	@TelCelular NCHAR(8),
	@TelCasa NCHAR(8) = NULL,
	@TelOtro NCHAR(8) = NULL,
	@IdTeatro INT
AS
	SET NOCOUNT ON

	DECLARE @Tipo INT
	SET @Tipo = 2

	INSERT INTO Empleados (Cedula, Nombre, FechaNacimiento, Direccion, Sexo, Correo, Usuario, Contrasena, TelCelular, TelCasa, TelOtro, Tipo, IdTeatro)
	VALUES (@Cedula, @Nombre, @FechaNacimiento, @Direccion, @Sexo, @Correo, @Usuario, @Contrasena, @TelCelular, @TelCasa, @TelOtro, @Tipo, @IdTeatro)
GO
/****** Object:  StoredProcedure [dbo].[AdmSisCreateTeatro]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisCreateTeatro]
	@Nombre NVARCHAR(50),
	@Direccion NVARCHAR(100),
	@Correo NVARCHAR(50),
	@Link NVARCHAR(50),
	@TelBoleteria NCHAR(8),
	@TelAdmin NCHAR(8)
AS
	SET NOCOUNT ON

	INSERT INTO Teatros (Nombre, Direccion, Correo, Link, TelBoleteria, TelAdmin)
	VALUES (@Nombre, @Direccion, @Correo, @Link, @TelBoleteria, @TelAdmin)
GO
/****** Object:  StoredProcedure [dbo].[AdmSisReadAsientos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisReadAsientos]
	@IdBloque INT
AS
	SET NOCOUNT ON

	SELECT 0, a.Fila, COUNT(a.Columna) AS Cantidad
	FROM Asientos a
	WHERE a.IdBloque = @IdBloque
	GROUP BY a.Fila
GO
/****** Object:  StoredProcedure [dbo].[AdmSisReadBloques]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisReadBloques]
	@IdTeatro INT
AS
	SET NOCOUNT ON

	SELECT b.Id, b.Nombre
	FROM Bloques b
	WHERE b.IdTeatro = @IdTeatro
	ORDER BY b.Id
GO
/****** Object:  StoredProcedure [dbo].[AdmSisReadEmpleados]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisReadEmpleados]
	@Tipo INT = NULL
AS
	SELECT e.Cedula, e.Nombre, CONVERT(NVARCHAR, e.FechaNacimiento) AS FechaNacimiento, 
	CASE
		WHEN e.Sexo = 'f' THEN 'Femenino'
		ELSE 'Masculino'
	END AS Sexo, e.Direccion, e.Correo, e.TelCelular, ISNULL(e.TelCasa, '-') AS TelCasa, ISNULL(e.TelOtro, '-') AS TelOtro, e.Usuario, 
	CASE
		WHEN e.Tipo = 1 THEN 'Agente Teatro'
		WHEN e.Tipo = 2 THEN 'Admin Teatro'
		ELSE 'Admin Sistema'
	END AS Tipo, ISNULL(t.Nombre, 'No Aplica') AS Teatro
	FROM Empleados e LEFT OUTER JOIN Teatros t ON e.IdTeatro = t.Id
	WHERE e.Tipo = ISNULL(@Tipo, e.Tipo)
	ORDER BY e.Tipo, t.Id, e.Nombre
GO
/****** Object:  StoredProcedure [dbo].[AdmSisReadRegistroPagos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisReadRegistroPagos]

AS
	SET NOCOUNT ON

	SELECT DISTINCT CONVERT(NVARCHAR, r.FechaHoraCompra) AS FechaHoraCompra, b.Nombre AS Bloque, r.CantidadAsientos, r.CostoTotal, 
	CASE
		WHEN r.TipoPago = 1 THEN 'Tarjeta'
		ELSE 'Efectivo'
	END AS TipoPago, ISNULL(CONVERT(NVARCHAR(10), r.Codigo), 'No Aplica') AS Codigo, v.Obra + ' (' + v.Tipo + ')' AS Obra, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraPresentacion, c.Nombre AS Cliente
	FROM RegistroPagos r 
	INNER JOIN Clientes c ON r.IdCliente = c.Id
	INNER JOIN AsientosPresentaciones ap ON ap.IdRegistroPago = r.Id
	INNER JOIN Presentaciones p ON p.Id = ap.IdPresentacion
	INNER JOIN VwProduccionesPublicas v ON v.Id = p.IdProduccion
	INNER JOIN Asientos a ON a.Id = ap.IdAsiento
	INNER JOIN Bloques b ON b.Id = a.IdBloque
GO
/****** Object:  StoredProcedure [dbo].[AdmSisReadTeatros]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmSisReadTeatros]

AS
	SET NOCOUNT ON

	SELECT Id, Nombre
	FROM Teatros
	ORDER BY Nombre
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreateBloqueProduccion]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreateBloqueProduccion]
	@IdProduccion INT,
	@IdBloque INT,
	@Precio DECIMAL(18,2),
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado NOT IN 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre IN ('Cancelada', 'Concluida')
		)
	) AND
	(
		SELECT p.IdTeatro
		FROM Producciones p
		WHERE p.Id = @IdProduccion
	) = @IdTeatro 
	AND
	(
		SELECT b.IdTeatro
		FROM Bloques b
		WHERE b.Id = @IdBloque
	) = @IdTeatro
	BEGIN
		INSERT INTO BloquesProducciones (IdProduccion, IdBloque, Precio)
		VALUES (@IdProduccion, @IdBloque, @Precio)
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] El estado de la produccion no permite agregar precios', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreateEmpleadoAgnTe]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreateEmpleadoAgnTe]
	@Cedula NCHAR(9),
	@Nombre NVARCHAR(50),
	@FechaNacimiento DATE,
	@Direccion NVARCHAR(100),
	@Sexo NCHAR(1),
	@Correo NVARCHAR(80),
	@Usuario NVARCHAR(20),
	@Contrasena NVARCHAR(20),
	@TelCelular NCHAR(8),
	@TelCasa NCHAR(8) = NULL,
	@TelOtro NCHAR(8) = NULL,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	DECLARE @Tipo INT
	SET @Tipo = 1

	INSERT INTO Empleados (Cedula, Nombre, FechaNacimiento, Direccion, Sexo, Correo, Usuario, Contrasena, TelCelular, TelCasa, TelOtro, Tipo, IdTeatro)
	VALUES (@Cedula, @Nombre, @FechaNacimiento, @Direccion, @Sexo, @Correo, @Usuario, @Contrasena, @TelCelular, @TelCasa, @TelOtro, @Tipo, @IdTeatro)
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreateObra]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreateObra]
	@Nombre NVARCHAR(50),
	@Descripcion NVARCHAR(200),
	@IdTipo INT
AS
	SET NOCOUNT ON
	INSERT INTO Obras (Nombre, Descripcion, IdTipo)
	VALUES (@Nombre, @Descripcion, @IdTipo)
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreatePresentacion]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreatePresentacion]
	@IdProduccion INT,
	@FechaHoraInicio DATETIME,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado NOT IN 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre IN ('Cancelada', 'Concluida')
		)
	) AND
	(
		SELECT p.IdTeatro
		FROM Producciones p
		WHERE p.Id = @IdProduccion
	) = @IdTeatro 
	BEGIN
		INSERT INTO Presentaciones (FechaHoraInicio, IdProduccion)
		VALUES (@FechaHoraInicio, @IdProduccion)
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] El estado de la produccion no permite agregar presentaciones', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreateProduccion]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreateProduccion]
	@IdObra INT,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	DECLARE @IdEstado INT

	SELECT @IdEstado = Id
	FROM Estados
	WHERE Nombre = 'Confidencial'

	INSERT INTO Producciones (IdObra, IdTeatro, IdEstado)
	VALUES (@IdObra, @IdTeatro, @IdEstado)
GO
/****** Object:  StoredProcedure [dbo].[AdmTeCreateTipo]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeCreateTipo]
	@Nombre NVARCHAR(20)
AS
	SET NOCOUNT ON
	INSERT INTO Tipos (Nombre)
	VALUES (@Nombre)
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadBloques]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadBloques]
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	SELECT b.Id, b.Nombre
	FROM Bloques b
	WHERE b.IdTeatro = @IdTeatro
	ORDER BY b.Id
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadEstados]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadEstados]

AS
	SET NOCOUNT ON
	SELECT Id, Nombre
	FROM Estados
	ORDER BY Id
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadObras]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadObras]

AS
	SET NOCOUNT ON
	SELECT o.Id, o.Nombre + ' (' + t.Nombre + ')' AS Nombre
	FROM Obras o
	INNER JOIN Tipos t ON o.IdTipo = t.Id
	ORDER BY o.Nombre, t.Nombre
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadPresentaciones]
	@IdProduccion INT,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF 
	(
		SELECT p.IdTeatro
		FROM Producciones p
		WHERE p.Id = @IdProduccion
	) = @IdTeatro 

	BEGIN
		SELECT pre.Id, CONVERT(NVARCHAR, pre.FechaHoraInicio)
		FROM Presentaciones pre INNER JOIN Producciones pro ON pre.IdProduccion = pro.Id
		WHERE pro.Id = @IdProduccion
		ORDER BY pre.FechaHoraInicio
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadProducciones]
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	SELECT p.Id, o.Nombre + ' (' + t.Nombre + ')' AS Obra, e.Nombre AS Estado
	FROM Producciones p 
	INNER JOIN Estados e ON p.IdEstado = e.Id
	INNER JOIN Obras o ON p.IdObra = o.Id
	INNER JOIN Tipos t ON o.IdTipo = t.Id
	WHERE p.IdTeatro = @IdTeatro
	ORDER BY o.Nombre, t.Nombre
GO
/****** Object:  StoredProcedure [dbo].[AdmTeReadTipos]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeReadTipos]

AS
	SET NOCOUNT ON
	SELECT Id, Nombre
	FROM Tipos
GO
/****** Object:  StoredProcedure [dbo].[AdmTeUpdateProduccionEstado]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AdmTeUpdateProduccionEstado]
	@IdProduccion INT,
	@IdEstado INT,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON
	
	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF NOT (
	(
		SELECT Nombre
		FROM Estados
		WHERE Id = @IdEstado
	) IN ('Anunciada', 'Abierta') AND (
	(
		SELECT FechaHoraInicio	
		FROM Producciones
		WHERE Id = @IdProduccion
	) IS NULL OR NOT EXISTS
	(
		SELECT 'True'
		FROM BloquesProducciones
		WHERE IdProduccion = @IdProduccion
	))) AND
	(
		SELECT p.IdTeatro
		FROM Producciones p
		WHERE p.Id = @IdProduccion
	) = @IdTeatro 
	BEGIN
		UPDATE Producciones
		SET IdEstado = @IdEstado
		WHERE Id = @IdProduccion
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion requiere presentaciones y precios para actualizarse al estado ingresado', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AgnTeCreateCompraEfectivo]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeCreateCompraEfectivo]
	@IdsAsientosPresentaciones ListaAsientos READONLY,
	@Nombre NVARCHAR(50),
	@Telefono NCHAR(8),
	@Correo NVARCHAR(80) = NULL,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdBloque INT
	DECLARE @IdPresentacion INT

	BEGIN TRY
		SET @IdPresentacion =
		(
			SELECT DISTINCT p.Id
			FROM Presentaciones p
			INNER JOIN AsientosPresentaciones a ON a.IdPresentacion = p.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = a.Id		
		)
		SET @IdBloque =
		(
			SELECT DISTINCT b.Id
			FROM Bloques b
			INNER JOIN Asientos a ON a.IdBloque = b.Id
			INNER JOIN AsientosPresentaciones ap ON ap.IdAsiento = a.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = ap.Id
		)
	END TRY

	BEGIN CATCH;
		THROW 51000, '[CustomError] Los asientos no pertenecen a un mismo bloque o presentacion', 1
	END CATCH

	DECLARE @IdProduccion INT
	SET @IdProduccion = 
	(
		SELECT pro.Id
		FROM Producciones pro INNER JOIN Presentaciones pre ON pro.Id = pre.IdProduccion
		WHERE pre.Id = @IdPresentacion
	)

	DECLARE @CantidadAsientos INT
	SET @CantidadAsientos = (SELECT COUNT(*) FROM @IdsAsientosPresentaciones)

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF @CantidadAsientos > 8 OR @CantidadAsientos <= 0
	OR EXISTS
	(
		SELECT 'True'
		FROM @IdsAsientosPresentaciones i INNER JOIN AsientosPresentaciones a ON i.IdAsientoPresentacion = a.Id
		WHERE a.EstaOcupado = 1
	) 
	BEGIN;
		THROW 51000, '[CustomError] Se han elegido asientos invalidos', 1
	END
	
	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado != 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre = 'Abierta'
		)
	) OR @IdProduccion NOT IN
	(
		SELECT p.Id
		FROM Producciones p
		WHERE p.IdTeatro = @IdTeatro
	)
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END

	DECLARE @Monto DECIMAL(18, 2)
	SET @Monto = 
	(
		SELECT bp.Precio
		FROM BloquesProducciones bp
		WHERE bp.IdBloque = @IdBloque AND bp.IdProduccion = @IdProduccion
	) * @CantidadAsientos

	DECLARE @FechaHora DATETIME
	DECLARE @IdCliente INT
	DECLARE @IdRegistro INT

	BEGIN TRY
		BEGIN TRAN Compra

		EXEC SisCreateCliente @Nombre, @Telefono, @Correo, @IdCliente OUTPUT

		SET @FechaHora = GETDATE()

		EXEC SisCreateRegistroPago @FechaHora, NULL, @CantidadAsientos, @Monto, 0, @IdCliente, @IdRegistro OUTPUT

		UPDATE AsientosPresentaciones
		SET IdRegistroPago = @IdRegistro, EstaOcupado = 1
		WHERE Id IN 
		(
			SELECT i.IdAsientoPresentacion
			FROM @IdsAsientosPresentaciones i
		)

		COMMIT TRAN Compra
		EXEC SisCreateCompraResumen @IdsAsientosPresentaciones, @IdProduccion, @IdPresentacion, @IdBloque, @Monto, @FechaHora
	END TRY

	BEGIN CATCH;
		THROW
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[AgnTeCreateCompraTarjeta]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeCreateCompraTarjeta]
	@IdsAsientosPresentaciones ListaAsientos READONLY,
	@Nombre NVARCHAR(50),
	@Telefono NCHAR(8),
	@Correo NVARCHAR(80),
	@Tarjeta NCHAR(16),
	@Expira DATE,
	@CVV NCHAR(3),
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdBloque INT
	DECLARE @IdPresentacion INT

	BEGIN TRY
		SET @IdPresentacion =
		(
			SELECT DISTINCT p.Id
			FROM Presentaciones p
			INNER JOIN AsientosPresentaciones a ON a.IdPresentacion = p.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = a.Id		
		)
		SET @IdBloque =
		(
			SELECT DISTINCT b.Id
			FROM Bloques b
			INNER JOIN Asientos a ON a.IdBloque = b.Id
			INNER JOIN AsientosPresentaciones ap ON ap.IdAsiento = a.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = ap.Id
		)
	END TRY

	BEGIN CATCH;
		THROW 51000, '[CustomError] Los asientos no pertenecen a un mismo bloque o presentacion', 1
	END CATCH

	DECLARE @IdProduccion INT
	SET @IdProduccion = 
	(
		SELECT pro.Id
		FROM Producciones pro INNER JOIN Presentaciones pre ON pro.Id = pre.IdProduccion
		WHERE pre.Id = @IdPresentacion
	)

	DECLARE @CantidadAsientos INT
	SET @CantidadAsientos = (SELECT COUNT(*) FROM @IdsAsientosPresentaciones)

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF @CantidadAsientos > 8 OR @CantidadAsientos <= 0
	OR EXISTS
	(
		SELECT 'True'
		FROM @IdsAsientosPresentaciones i INNER JOIN AsientosPresentaciones a ON i.IdAsientoPresentacion = a.Id
		WHERE a.EstaOcupado = 1
	) 
	BEGIN;
		THROW 51000, '[CustomError] Se han elegido asientos invalidos', 1
	END
	
	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado != 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre = 'Abierta'
		)
	) OR @IdProduccion NOT IN
	(
		SELECT p.Id
		FROM Producciones p
		WHERE p.IdTeatro = @IdTeatro
	)
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END

	DECLARE @Monto DECIMAL(18, 2)
	SET @Monto = 
	(
		SELECT bp.Precio
		FROM BloquesProducciones bp
		WHERE bp.IdBloque = @IdBloque AND bp.IdProduccion = @IdProduccion
	) * @CantidadAsientos

	DECLARE @FechaHora DATETIME
	DECLARE @Codigo NCHAR(6)
	DECLARE @Aprobado BIT
	DECLARE @IdCliente INT
	DECLARE @IdRegistro INT

	BEGIN TRY
		BEGIN TRAN Compra

		EXEC SisGetCodigoAprobacion @Nombre, @Tarjeta, @Expira, @CVV, @Monto, @Codigo OUTPUT, @FechaHora OUTPUT, @Aprobado OUTPUT

		EXEC SisCreateCliente @Nombre, @Telefono, @Correo, @IdCliente OUTPUT

		EXEC SisCreateRegistroPago @FechaHora, @Codigo, @CantidadAsientos, @Monto, 1, @IdCliente, @IdRegistro OUTPUT

		UPDATE AsientosPresentaciones
		SET IdRegistroPago = @IdRegistro, EstaOcupado = 1
		WHERE Id IN 
		(
			SELECT i.IdAsientoPresentacion
			FROM @IdsAsientosPresentaciones i
		)

		IF @Aprobado = 1
		BEGIN
			COMMIT TRAN Compra
			EXEC SisCreateCompraResumen @IdsAsientosPresentaciones, @IdProduccion, @IdPresentacion, @IdBloque, @Monto, @FechaHora
		END
		ELSE
		BEGIN
			ROLLBACK TRAN Compra;
			THROW 51000, '[CustomError] La transaccion fue rechazada', 1
		END
	END TRY

	BEGIN CATCH;
		IF @Aprobado = 0
		BEGIN;
			THROW 51000, '[CustomError] La transaccion fue rechazada', 1
		END
		ELSE
		BEGIN;
			THROW
		END
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[AgnTeReadAsientosPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeReadAsientosPresentaciones]
	@IdPresentacion INT,
	@IdBloque INT,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = 
		(
			SELECT p.IdProduccion
			FROM Presentaciones p
			WHERE p.Id = @IdPresentacion
		)
		AND v.Estado IN ('Abierta', 'Anunciada')
	) AND @IdPresentacion IN
	(
		SELECT pre.Id
		FROM Presentaciones pre INNER JOIN Producciones pro ON pre.IdProduccion = pro.Id
		WHERE pro.IdTeatro = @IdTeatro
	)
	BEGIN
		SELECT ap.Id, asi.Fila, asi.Columna
		FROM AsientosPresentaciones ap INNER JOIN Asientos asi ON ap.IdAsiento = asi.Id
		WHERE ap.IdPresentacion = @IdPresentacion AND ap.EstaOcupado  = 0 AND ap.IdAsiento IN
		(
			SELECT a.Id
			FROM Asientos a INNER JOIN Bloques b ON a.IdBloque = b.Id
			WHERE b.Id = @IdBloque
		)
		ORDER BY asi.Fila, asi.Columna
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AgnTeReadBloquesProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeReadBloquesProducciones]
	@IdProduccion INT,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = @IdProduccion AND v.Estado IN ('Abierta', 'Anunciada')
	) AND @IdProduccion IN
	(
		SELECT p.Id
		FROM Producciones p
		WHERE p.IdTeatro = @IdTeatro
	)
	BEGIN
		SELECT bl.Id, bl.Nombre, bp.Precio
		FROM BloquesProducciones bp INNER JOIN Bloques bl ON bp.IdBloque = bl.Id
		WHERE bp.IdProduccion = @IdProduccion AND bp.IdBloque IN
		(
			SELECT b.Id
			FROM Bloques b 
			INNER JOIN Teatros t ON b.IdTeatro = t.Id
			INNER JOIN Producciones p ON t.Id = p.IdTeatro
			WHERE p.Id = @IdProduccion
		)
		ORDER BY bp.Precio
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AgnTeReadCompraResumen]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeReadCompraResumen]
	@IdsAsientosPresentaciones ListaAsientos READONLY,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdBloque INT
	DECLARE @IdPresentacion INT

	BEGIN TRY
		SET @IdPresentacion =
		(
			SELECT DISTINCT p.Id
			FROM Presentaciones p
			INNER JOIN AsientosPresentaciones a ON a.IdPresentacion = p.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = a.Id		
		)
		SET @IdBloque =
		(
			SELECT DISTINCT b.Id
			FROM Bloques b
			INNER JOIN Asientos a ON a.IdBloque = b.Id
			INNER JOIN AsientosPresentaciones ap ON ap.IdAsiento = a.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = ap.Id
		)
	END TRY

	BEGIN CATCH;
		THROW 51000, '[CustomError] Los asientos no pertenecen a un mismo bloque o presentacion', 1
	END CATCH

	DECLARE @IdProduccion INT
	SET @IdProduccion = 
	(
		SELECT pro.Id
		FROM Producciones pro INNER JOIN Presentaciones pre ON pro.Id = pre.IdProduccion
		WHERE pre.Id = @IdPresentacion
	)

	DECLARE @CantidadAsientos INT
	SET @CantidadAsientos = (SELECT COUNT(*) FROM @IdsAsientosPresentaciones)

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF @CantidadAsientos > 8 OR @CantidadAsientos <= 0
	OR EXISTS
	(
		SELECT 'True'
		FROM @IdsAsientosPresentaciones i INNER JOIN AsientosPresentaciones a ON i.IdAsientoPresentacion = a.Id
		WHERE a.EstaOcupado = 1
	) 
	BEGIN;
		THROW 51000, '[CustomError] Se han elegido asientos invalidos', 1
	END
	
	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado != 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre = 'Abierta'
		)
	) OR @IdProduccion NOT IN
	(
		SELECT p.Id
		FROM Producciones p
		WHERE p.IdTeatro = @IdTeatro
	)
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END

	DECLARE @Monto DECIMAL(18, 2)
	SET @Monto = 
	(
		SELECT bp.Precio
		FROM BloquesProducciones bp
		WHERE bp.IdBloque = @IdBloque AND bp.IdProduccion = @IdProduccion
	) * @CantidadAsientos

	EXEC SisCreateCompraResumen @IdsAsientosPresentaciones, @IdProduccion, @IdPresentacion, @IdBloque, @Monto
GO
/****** Object:  StoredProcedure [dbo].[AgnTeReadPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeReadPresentaciones]
	@IdProduccion INT,
	@FechaHoraInicio DATETIME = NULL,
	@FechaHoraFin DATETIME = NULL,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = @IdProduccion AND v.Estado IN ('Abierta', 'Anunciada')
	) AND @IdProduccion IN
	(
		SELECT p.Id
		FROM Producciones p		
		WHERE p.IdTeatro = @IdTeatro
	)
	BEGIN
		IF @FechaHoraInicio IS NOT NULL AND @FechaHoraFin IS NOT NULL AND @FechaHoraInicio <= @FechaHoraFin
		BEGIN
			SELECT p.Id, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraInicio
			FROM Presentaciones p
			WHERE p.IdProduccion = @IdProduccion AND p.FechaHoraInicio BETWEEN @FechaHoraInicio AND @FechaHoraFin
			ORDER BY p.FechaHoraInicio
		END

		ELSE IF @FechaHoraInicio IS NULL AND @FechaHoraFin IS NULL
		BEGIN
			SELECT p.Id, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraInicio
			FROM Presentaciones p
			WHERE p.IdProduccion = @IdProduccion
			ORDER BY p.FechaHoraInicio
		END
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[AgnTeReadProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgnTeReadProducciones]
	@FechaHoraInicio DATETIME = NULL,
	@FechaHoraFin DATETIME = NULL,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF @FechaHoraInicio IS NOT NULL AND @FechaHoraFin IS NOT NULL AND @FechaHoraInicio <= @FechaHoraFin
	BEGIN
		SELECT v.Id, v.Obra + ' (' + v.Tipo + ')' AS Obra, v.Teatro, v.Estado, CONVERT(NVARCHAR, v.FechaHoraInicio), CONVERT(NVARCHAR, v.FechaHoraFin), v.Descripcion
		FROM VwProduccionesPublicas v
		WHERE v.FechaHoraInicio IS NOT NULL AND (v.FechaHoraInicio BETWEEN @FechaHoraInicio AND @FechaHoraFin) AND v.Id IN
		(
			SELECT p.Id
			FROM Producciones p
			WHERE p.IdTeatro = @IdTeatro
		)
		ORDER BY v.Obra, v.Tipo, v.Teatro
	END

	ELSE IF @FechaHoraInicio IS NULL AND @FechaHoraFin IS NULL
	BEGIN
		SELECT v.Id, v.Obra + ' (' + v.Tipo + ')' AS Obra, v.Teatro, v.Estado, 
		CASE
			WHEN v.Estado = 'Adelantada' THEN 'Por Definir'
			WHEN v.Estado IN ('Cancelada', 'Concluida') THEN 'No Aplica'
			ELSE CONVERT(NVARCHAR, v.FechaHoraInicio)
		END AS FechaHoraInicio, 
		CASE
			WHEN v.Estado = 'Adelantada' THEN 'Por Definir'
			WHEN v.Estado IN ('Cancelada', 'Concluida') THEN 'No Aplica'
			ELSE CONVERT(NVARCHAR, v.FechaHoraFin)
		END AS FechaHoraFin, v.Descripcion
		FROM VwProduccionesPublicas v
		WHERE v.Id IN
		(
			SELECT p.Id
			FROM Producciones p
			WHERE p.IdTeatro = @IdTeatro
		)
		ORDER BY v.Obra, v.Tipo, v.Teatro
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] Alguna de las fechas de busqueda es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[PubCreateCompraTarjeta]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubCreateCompraTarjeta]
	@IdsAsientosPresentaciones ListaAsientos READONLY,
	@Nombre NVARCHAR(50),
	@Telefono NCHAR(8),
	@Correo NVARCHAR(80),
	@Tarjeta NCHAR(16),
	@Expira DATE,
	@CVV NCHAR(3)
AS
	SET NOCOUNT ON

	DECLARE @IdBloque INT
	DECLARE @IdPresentacion INT

	BEGIN TRY
		SET @IdPresentacion =
		(
			SELECT DISTINCT p.Id
			FROM Presentaciones p
			INNER JOIN AsientosPresentaciones a ON a.IdPresentacion = p.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = a.Id		
		)
		SET @IdBloque =
		(
			SELECT DISTINCT b.Id
			FROM Bloques b
			INNER JOIN Asientos a ON a.IdBloque = b.Id
			INNER JOIN AsientosPresentaciones ap ON ap.IdAsiento = a.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = ap.Id
		)
	END TRY

	BEGIN CATCH;
		THROW 51000, '[CustomError] Los asientos no pertenecen a un mismo bloque o presentacion', 1
	END CATCH

	DECLARE @IdProduccion INT
	SET @IdProduccion = 
	(
		SELECT pro.Id
		FROM Producciones pro INNER JOIN Presentaciones pre ON pro.Id = pre.IdProduccion
		WHERE pre.Id = @IdPresentacion
	)

	DECLARE @CantidadAsientos INT
	SET @CantidadAsientos = (SELECT COUNT(*) FROM @IdsAsientosPresentaciones)

	IF @CantidadAsientos > 8 OR @CantidadAsientos <= 0
	OR EXISTS
	(
		SELECT 'True'
		FROM @IdsAsientosPresentaciones i INNER JOIN AsientosPresentaciones a ON i.IdAsientoPresentacion = a.Id
		WHERE a.EstaOcupado = 1
	)
	BEGIN;
		THROW 51000, '[CustomError] Se han elegido asientos invalidos', 1
	END

	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado != 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre = 'Abierta'
		)
	)
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END

	DECLARE @Monto DECIMAL(18, 2)
	SET @Monto = 
	(
		SELECT bp.Precio
		FROM BloquesProducciones bp
		WHERE bp.IdBloque = @IdBloque AND bp.IdProduccion = @IdProduccion
	) * @CantidadAsientos

	DECLARE @FechaHora DATETIME
	DECLARE @Codigo NCHAR(6)
	DECLARE @Aprobado BIT
	DECLARE @IdCliente INT
	DECLARE @IdRegistro INT

	BEGIN TRY
		BEGIN TRAN Compra

		EXEC SisGetCodigoAprobacion @Nombre, @Tarjeta, @Expira, @CVV, @Monto, @Codigo OUTPUT, @FechaHora OUTPUT, @Aprobado OUTPUT

		EXEC SisCreateCliente @Nombre, @Telefono, @Correo, @IdCliente OUTPUT

		EXEC SisCreateRegistroPago @FechaHora, @Codigo, @CantidadAsientos, @Monto, 1, @IdCliente, @IdRegistro OUTPUT

		UPDATE AsientosPresentaciones
		SET IdRegistroPago = @IdRegistro, EstaOcupado = 1
		WHERE Id IN 
		(
			SELECT i.IdAsientoPresentacion
			FROM @IdsAsientosPresentaciones i
		)

		IF @Aprobado = 1
		BEGIN
			COMMIT TRAN Compra
			EXEC SisCreateCompraResumen @IdsAsientosPresentaciones, @IdProduccion, @IdPresentacion, @IdBloque, @Monto, @FechaHora
		END
		ELSE
		BEGIN
			ROLLBACK TRAN Compra;
			THROW 51000, '[CustomError] La transaccion fue rechazada', 1
		END
	END TRY

	BEGIN CATCH;
		IF @Aprobado = 0
		BEGIN;
			THROW 51000, '[CustomError] La transaccion fue rechazada', 1
		END
		ELSE
		BEGIN;
			THROW
		END
	END CATCH
GO
/****** Object:  StoredProcedure [dbo].[PubLoginAdmSis]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubLoginAdmSis]
	@AdminLogin nvarchar (20),
	@Password nvarchar (20)
WITH EXECUTE AS OWNER
AS
	IF EXISTS 
	(
		SELECT 'True'
		FROM Empleados
		WHERE Empleados.Tipo = 3
		AND Empleados.Usuario = @AdminLogin
		AND Empleados.Contrasena = @Password
	)
	BEGIN
		IF (ORIGINAL_LOGIN() = 'ApplicationLogin1')
		BEGIN
			ALTER ROLE SystemAdmin ADD MEMBER ApplicationUser1
			DENY ALTER ON ROLE::SystemAdmin TO ApplicationUser1
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser1
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin2')
		BEGIN
			ALTER ROLE SystemAdmin ADD MEMBER ApplicationUser2
			DENY ALTER ON ROLE::SystemAdmin TO ApplicationUser2
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser2
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin3')
		BEGIN
			ALTER ROLE SystemAdmin ADD MEMBER ApplicationUser3
			DENY ALTER ON ROLE::SystemAdmin TO ApplicationUser3
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser3
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin4')
		BEGIN
			ALTER ROLE SystemAdmin ADD MEMBER ApplicationUser4
			DENY ALTER ON ROLE::SystemAdmin TO ApplicationUser4
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser4
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin5')
		BEGIN
			ALTER ROLE SystemAdmin ADD MEMBER ApplicationUser5
			DENY ALTER ON ROLE::SystemAdmin TO ApplicationUser5
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser5
			SELECT 1
			RETURN
		END
		ELSE
		BEGIN
			SELECT 0
			RETURN
		END
	END
	ELSE
	BEGIN
		SELECT 0
		RETURN
	END
GO
/****** Object:  StoredProcedure [dbo].[PubLoginAdmTe]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubLoginAdmTe]
	@AdminLogin nvarchar (20),
	@Password nvarchar (20)
WITH EXECUTE AS OWNER
AS
	IF EXISTS 
	(
		SELECT 'True'
		FROM Empleados
		WHERE Empleados.Tipo = 2
		AND Empleados.Usuario = @AdminLogin
		AND Empleados.Contrasena = @Password
	)
	BEGIN
		IF (ORIGINAL_LOGIN() = 'ApplicationLogin1')
		BEGIN
			ALTER ROLE TheaterAdmin ADD MEMBER ApplicationUser1
			DENY ALTER ON ROLE::TheaterAdmin TO ApplicationUser1
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser1
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin2')
		BEGIN
			ALTER ROLE TheaterAdmin ADD MEMBER ApplicationUser2
			DENY ALTER ON ROLE::TheaterAdmin TO ApplicationUser2
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser2
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin3')
		BEGIN
			ALTER ROLE TheaterAdmin ADD MEMBER ApplicationUser3
			DENY ALTER ON ROLE::TheaterAdmin TO ApplicationUser3
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser3
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin4')
		BEGIN
			ALTER ROLE TheaterAdmin ADD MEMBER ApplicationUser4
			DENY ALTER ON ROLE::TheaterAdmin TO ApplicationUser4
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser4
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin5')
		BEGIN
			ALTER ROLE TheaterAdmin ADD MEMBER ApplicationUser5
			DENY ALTER ON ROLE::TheaterAdmin TO ApplicationUser5
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser5
			SELECT 1
			RETURN
		END
		ELSE
		BEGIN
			SELECT 0
			RETURN
		END
	END
	ELSE
	BEGIN
		SELECT 0
		RETURN
	END
GO
/****** Object:  StoredProcedure [dbo].[PubLoginAgnTe]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubLoginAgnTe]
	@AdminLogin nvarchar (20),
	@Password nvarchar (20)
WITH EXECUTE AS OWNER
AS
	IF EXISTS 
	(
		SELECT 'True'
		FROM Empleados
		WHERE Empleados.Tipo = 1
		AND Empleados.Usuario = @AdminLogin
		AND Empleados.Contrasena = @Password
	)
	BEGIN
		IF (ORIGINAL_LOGIN() = 'ApplicationLogin1')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser1
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser1
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser1
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin2')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser2
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser2
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser2
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin3')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser3
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser3
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser3
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin4')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser4
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser4
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser4
			SELECT 1
			RETURN
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin5')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser5
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser5
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser5
			SELECT 1
			RETURN
		END
		ELSE
		BEGIN
			SELECT 0
			RETURN
		END
	END
	ELSE
	BEGIN
		SELECT 0
		RETURN
	END
GO
/****** Object:  StoredProcedure [dbo].[PubReadAsientosPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubReadAsientosPresentaciones]
	@IdPresentacion INT,
	@IdBloque INT
AS
	SET NOCOUNT ON

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = 
		(
			SELECT p.IdProduccion
			FROM Presentaciones p
			WHERE p.Id = @IdPresentacion
		)
		AND v.Estado IN ('Abierta', 'Anunciada')
	)
	BEGIN
		SELECT ap.Id, asi.Fila, asi.Columna
		FROM AsientosPresentaciones ap INNER JOIN Asientos asi ON ap.IdAsiento = asi.Id
		WHERE ap.IdPresentacion = @IdPresentacion AND ap.EstaOcupado  = 0 AND ap.IdAsiento IN
		(
			SELECT a.Id
			FROM Asientos a INNER JOIN Bloques b ON a.IdBloque = b.Id
			WHERE b.Id = @IdBloque
		)
		ORDER BY asi.Fila, asi.Columna
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[PubReadBloquesProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubReadBloquesProducciones]
	@IdProduccion INT
AS
	SET NOCOUNT ON

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = @IdProduccion AND v.Estado IN ('Abierta', 'Anunciada')
	)
	BEGIN
		SELECT bl.Id, bl.Nombre, bp.Precio
		FROM BloquesProducciones bp INNER JOIN Bloques bl ON bp.IdBloque = bl.Id
		WHERE bp.IdProduccion = @IdProduccion AND bp.IdBloque IN
		(
			SELECT b.Id
			FROM Bloques b 
			INNER JOIN Teatros t ON b.IdTeatro = t.Id
			INNER JOIN Producciones p ON t.Id = p.IdTeatro
			WHERE p.Id = @IdProduccion
		)
		ORDER BY bp.Precio
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[PubReadCompraResumen]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubReadCompraResumen]
	@IdsAsientosPresentaciones ListaAsientos READONLY
AS
	SET NOCOUNT ON

	DECLARE @IdBloque INT
	DECLARE @IdPresentacion INT

	BEGIN TRY
		SET @IdPresentacion =
		(
			SELECT DISTINCT p.Id
			FROM Presentaciones p
			INNER JOIN AsientosPresentaciones a ON a.IdPresentacion = p.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = a.Id		
		)
		SET @IdBloque =
		(
			SELECT DISTINCT b.Id
			FROM Bloques b
			INNER JOIN Asientos a ON a.IdBloque = b.Id
			INNER JOIN AsientosPresentaciones ap ON ap.IdAsiento = a.Id
			INNER JOIN @IdsAsientosPresentaciones i ON i.IdAsientoPresentacion = ap.Id
		)
	END TRY

	BEGIN CATCH;
		THROW 51000, '[CustomError] Los asientos no pertenecen a un mismo bloque o presentacion', 1
	END CATCH

	DECLARE @IdProduccion INT
	SET @IdProduccion = 
	(
		SELECT pro.Id
		FROM Producciones pro INNER JOIN Presentaciones pre ON pro.Id = pre.IdProduccion
		WHERE pre.Id = @IdPresentacion
	)

	DECLARE @CantidadAsientos INT
	SET @CantidadAsientos = (SELECT COUNT(*) FROM @IdsAsientosPresentaciones)

	IF @CantidadAsientos > 8 OR @CantidadAsientos <= 0
	OR EXISTS
	(
		SELECT 'True'
		FROM @IdsAsientosPresentaciones i INNER JOIN AsientosPresentaciones a ON i.IdAsientoPresentacion = a.Id
		WHERE a.EstaOcupado = 1
	) 
	BEGIN;
		THROW 51000, '[CustomError] Se han elegido asientos invalidos', 1
	END

	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado != 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre = 'Abierta'
		)
	)
	BEGIN;
		THROW 51000, '[CustomError] La presentacion es invalida', 1
	END

	DECLARE @Monto DECIMAL(18, 2)
	SET @Monto = 
	(
		SELECT bp.Precio
		FROM BloquesProducciones bp
		WHERE bp.IdBloque = @IdBloque AND bp.IdProduccion = @IdProduccion
	) * @CantidadAsientos

	EXEC SisCreateCompraResumen @IdsAsientosPresentaciones, @IdProduccion, @IdPresentacion, @IdBloque, @Monto
GO
/****** Object:  StoredProcedure [dbo].[PubReadPresentaciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubReadPresentaciones]
	@IdProduccion INT,
	@FechaHoraInicio DATETIME = NULL,
	@FechaHoraFin DATETIME = NULL
AS
	SET NOCOUNT ON

	IF EXISTS
	(
		SELECT 'True'
		FROM VwProduccionesPublicas v
		WHERE v.Id = @IdProduccion AND v.Estado IN ('Abierta', 'Anunciada')
	)
	BEGIN
		IF @FechaHoraInicio IS NOT NULL AND @FechaHoraFin IS NOT NULL AND @FechaHoraInicio <= @FechaHoraFin
		BEGIN
			SELECT p.Id, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraInicio
			FROM Presentaciones p
			WHERE p.IdProduccion = @IdProduccion AND p.FechaHoraInicio BETWEEN @FechaHoraInicio AND @FechaHoraFin
			ORDER BY p.FechaHoraInicio
		END

		ELSE IF @FechaHoraInicio IS NULL AND @FechaHoraFin IS NULL
		BEGIN
			SELECT p.Id, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraInicio
			FROM Presentaciones p
			WHERE p.IdProduccion = @IdProduccion
			ORDER BY p.FechaHoraInicio
		END
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] La produccion es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[PubReadProducciones]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PubReadProducciones]
	@FechaHoraInicio DATETIME = NULL,
	@FechaHoraFin DATETIME = NULL
AS
	SET NOCOUNT ON

	IF @FechaHoraInicio IS NOT NULL AND @FechaHoraFin IS NOT NULL AND @FechaHoraInicio <= @FechaHoraFin
	BEGIN
		SELECT v.Id, v.Obra + ' (' + v.Tipo + ')' AS Obra, v.Teatro, v.Estado, CONVERT(NVARCHAR, v.FechaHoraInicio), CONVERT(NVARCHAR, v.FechaHoraFin), v.Descripcion
		FROM VwProduccionesPublicas v
		WHERE v.FechaHoraInicio IS NOT NULL AND NOT (v.FechaHoraInicio > @FechaHoraFin OR v.FechaHoraFin < @FechaHoraInicio)
		ORDER BY v.Obra, v.Tipo, v.Teatro
	END

	ELSE IF @FechaHoraInicio IS NULL AND @FechaHoraFin IS NULL
	BEGIN
		SELECT v.Id, v.Obra + ' (' + v.Tipo + ')' AS Obra, v.Teatro, v.Estado, 
		CASE
			WHEN v.Estado = 'Adelantada' THEN 'Por Definir'
			WHEN v.Estado IN ('Cancelada', 'Concluida') THEN 'No Aplica'
			ELSE CONVERT(NVARCHAR, v.FechaHoraInicio)
		END AS FechaHoraInicio, 
		CASE
			WHEN v.Estado = 'Adelantada' THEN 'Por Definir'
			WHEN v.Estado IN ('Cancelada', 'Concluida') THEN 'No Aplica'
			ELSE CONVERT(NVARCHAR, v.FechaHoraFin)
		END AS FechaHoraFin, v.Descripcion
		FROM VwProduccionesPublicas v
		ORDER BY v.Obra, v.Tipo, v.Teatro
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] Alguna de las fechas de busqueda es invalida', 1
	END
GO
/****** Object:  StoredProcedure [dbo].[SisCreateCliente]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisCreateCliente]
	@Nombre NVARCHAR(50),
	@Telefono NCHAR(8),
	@Correo NVARCHAR(80),
	@Id INT OUTPUT
AS
	SET NOCOUNT ON

	SELECT @Id = Id
	FROM Clientes
	WHERE Telefono = @Telefono AND Nombre = @Nombre

	If @Id IS NULL
	BEGIN
		INSERT INTO Clientes (Nombre, Telefono, Correo)
		VALUES (@Nombre, @Telefono, @Correo)
		SET @Id = SCOPE_IDENTITY()
	END
GO
/****** Object:  StoredProcedure [dbo].[SisCreateCompraResumen]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisCreateCompraResumen]
	@IdsAsientosPresentaciones ListaAsientos READONLY,
	@IdProduccion INT,
	@IdPresentacion INT,
	@IdBloque INT,
	@Monto DECIMAL(18, 2),
	@FechaHora DATETIME = NULL
AS
	SET NOCOUNT ON

	IF @FechaHora IS NULL
	BEGIN
		SELECT v.Teatro, v.Obra + ' (' + v.Tipo + ')' AS Obra, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraPresentacion, @Monto AS Costo, b.Nombre AS Bloque, STRING_AGG(a.Fila + CONVERT(NVARCHAR, a.Columna), ', ') AS Asientos
		FROM @IdsAsientosPresentaciones i 
		INNER JOIN AsientosPresentaciones ap ON i.IdAsientoPresentacion = ap.Id
		INNER JOIN Asientos a ON ap.IdAsiento = a.Id,
		VwProduccionesPublicas v, Presentaciones p, Bloques b
		WHERE v.Id = @IdProduccion AND p.Id = @IdPresentacion AND b.Id = @IdBloque
		GROUP BY v.Teatro, v.Obra, v.Tipo, p.FechaHoraInicio, b.Nombre
	END
	ELSE
	BEGIN
		SELECT v.Teatro, v.Obra + ' (' + v.Tipo + ')' AS Obra, CONVERT(NVARCHAR, p.FechaHoraInicio) AS FechaHoraPresentacion, @Monto AS Costo, b.Nombre AS Bloque, STRING_AGG(a.Fila + CONVERT(NVARCHAR, a.Columna), ', ') AS Asientos, CONVERT(NVARCHAR, @FechaHora) AS FechaHoraCompra
		FROM @IdsAsientosPresentaciones i
		INNER JOIN AsientosPresentaciones ap ON i.IdAsientoPresentacion = ap.Id
		INNER JOIN Asientos a ON ap.IdAsiento = a.Id,
		VwProduccionesPublicas v, Presentaciones p, Bloques b
		WHERE v.Id = @IdProduccion AND p.Id = @IdPresentacion AND b.Id = @IdBloque
		GROUP BY v.Teatro, v.Obra, v.Tipo, p.FechaHoraInicio, b.Nombre
	END
GO
/****** Object:  StoredProcedure [dbo].[SisCreateRegistroPago]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisCreateRegistroPago]
	@FechaHora DATETIME,
	@Codigo NCHAR(6),
	@CantidadAsientos INT,
	@CostoTotal DECIMAL(18, 2),
	@TipoPago BIT,
	@IdCliente INT,
	@Id INT OUTPUT
AS
	SET NOCOUNT ON
	INSERT INTO RegistroPagos (FechaHoraCompra, Codigo, CantidadAsientos, CostoTotal, TipoPago, IdCliente)
	VALUES (@FechaHora, @Codigo, @CantidadAsientos, @CostoTotal, @TipoPago, @IdCliente)
	SET @Id = SCOPE_IDENTITY()
GO
/****** Object:  StoredProcedure [dbo].[SisCreateReporteDiario]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisCreateReporteDiario]
AS
	SET NOCOUNT ON

	DECLARE @Fecha DATE
	SET @Fecha = CONVERT(DATE, GETDATE())

	INSERT INTO Reportes (Fecha, TiquetesVendidos, CostoPromedio)
	SELECT @Fecha, ISNULL(SUM(r.CantidadAsientos), 0), ISNULL(SUM(r.CostoTotal) / SUM(r.CantidadAsientos), 0)
	FROM RegistroPagos r
	WHERE CONVERT(DATE, r.FechaHoraCompra) = @Fecha
GO
/****** Object:  StoredProcedure [dbo].[SisGetCodigoAprobacion]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisGetCodigoAprobacion]
	@Nombre NVARCHAR(50),
	@Tarjeta NCHAR(16),
	@Expira DATE,
	@CVV NCHAR(3),
	@Monto DECIMAL(18, 2),
	@Codigo NCHAR(6) OUTPUT,
	@FechaHora DATETIME OUTPUT,
	@Aprobado BIT OUTPUT
AS
	SET NOCOUNT ON

	SET @FechaHora = GETDATE()

	IF (CONVERT(INT, @Monto) % 2) != (CONVERT(INT, @CVV) % 2)
	BEGIN
		SET @Aprobado = 1
		SET @Codigo = FORMAT(FLOOR(RAND()*(999999-1+1))+1, '00000#')
	END

	ELSE
	BEGIN
		SET @Aprobado = 0
		SET @Codigo = '000000'
	END
GO
/****** Object:  StoredProcedure [dbo].[SisGetTeatro]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisGetTeatro]
	@User NVARCHAR(20),
	@Password NVARCHAR(20),
	@IdTeatro INT OUTPUT
AS
	SET NOCOUNT ON
	SELECT @IdTeatro = e.IdTeatro
	FROM Empleados e
	WHERE e.Usuario = @User AND e.Contrasena = @Password
GO
/****** Object:  StoredProcedure [dbo].[SisUpdateUserRoles]    Script Date: 28/7/2020 16:20:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisUpdateUserRoles]
WITH EXECUTE AS OWNER
AS
	DECLARE @ActiveLogins TABLE
	(
		loginame nchar (128) 
	)
	INSERT INTO @ActiveLogins
		SELECT loginame
		FROM sys.sysprocesses
		WHERE DB_ID ('BasesPRY2')  = dbid

	IF ('ApplicationLogin1' NOT IN (SELECT loginame FROM @ActiveLogins))
	BEGIN
		IF (IS_ROLEMEMBER ('SystemAdmin', 'ApplicationUser1') = 1)
		BEGIN
		 ALTER ROLE SystemAdmin DROP MEMBER ApplicationUser1
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser1
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser1
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAdmin', 'ApplicationUser1') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser1
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser1
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser1
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAgent', 'ApplicationUser1') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser1
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser1
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser1
		END
		ELSE
		BEGIN
			DECLARE @Filler int
		END
	END
	IF ('ApplicationLogin2' NOT IN (SELECT loginame FROM @ActiveLogins))
	BEGIN
		IF (IS_ROLEMEMBER ('SystemAdmin', 'ApplicationUser2') = 1)
		BEGIN
		 ALTER ROLE SystemAdmin DROP MEMBER ApplicationUser2
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser2
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser2
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAdmin', 'ApplicationUser2') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser2
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser2
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser2
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAgent', 'ApplicationUser2') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser2
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser2
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser2
		END
		ELSE
		BEGIN
			DECLARE @Filler2 int
		END
	END
	IF ('ApplicationLogin3' NOT IN (SELECT loginame FROM @ActiveLogins))
	BEGIN
		IF (IS_ROLEMEMBER ('SystemAdmin', 'ApplicationUser3') = 1)
		BEGIN
		 ALTER ROLE SystemAdmin DROP MEMBER ApplicationUser3
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser3
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser3
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAdmin', 'ApplicationUser3') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser3
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser3
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser3
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAgent', 'ApplicationUser3') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser3
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser3
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser3
		END
		ELSE
		BEGIN
			DECLARE @Filler3 int
		END
	END
	IF ('ApplicationLogin4' NOT IN (SELECT loginame FROM @ActiveLogins))
	BEGIN
		IF (IS_ROLEMEMBER ('SystemAdmin', 'ApplicationUser4') = 1)
		BEGIN
		 ALTER ROLE SystemAdmin DROP MEMBER ApplicationUser4
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser4
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser4
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAdmin', 'ApplicationUser4') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser2
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser2
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser2
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAgent', 'ApplicationUser4') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser4
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser4
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser4
		END
		ELSE
		BEGIN
			DECLARE @Filler4 int
		END
	END
	IF ('ApplicationLogin5' NOT IN (SELECT loginame FROM @ActiveLogins))
	BEGIN
		IF (IS_ROLEMEMBER ('SystemAdmin', 'ApplicationUser5') = 1)
		BEGIN
		 ALTER ROLE SystemAdmin DROP MEMBER ApplicationUser5
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser5
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser5
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAdmin', 'ApplicationUser5') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser5
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser5
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser5
		END
		ELSE IF (IS_ROLEMEMBER ('TheaterAgent', 'ApplicationUser5') = 1)
		BEGIN
		 ALTER ROLE TheaterAdmin DROP MEMBER ApplicationUser5
		 ALTER ROLE InitialRole ADD MEMBER ApplicationUser5
		 DENY ALTER ON ROLE::InitialRole TO ApplicationUser5
		END
		ELSE
		BEGIN
			DECLARE @Filler5 int
		END
	END
RETURN 0
GO
GRANT EXECUTE ON OBJECT::PubLoginAdmTe 
    TO InitialRole 
GO 
GRANT EXECUTE ON OBJECT::PubLoginAdmSis
    TO InitialRole 
GO 
GRANT EXECUTE ON OBJECT::PubLoginAgnTe
    TO InitialRole  
GO 
GRANT EXECUTE ON OBJECT::PubCreateCompraTarjeta 
	TO InitialRole
GO
GRANT EXECUTE ON OBJECT::PubReadAsientosPresentaciones
	TO InitialRole
GO
GRANT EXECUTE ON OBJECT::PubReadBloquesProducciones
	TO InitialRole
GO
GRANT EXECUTE ON OBJECT::PubReadCompraResumen
	TO InitialRole
GO
GRANT EXECUTE ON OBJECT::PubReadPresentaciones 
	TO InitialRole
GO
GRANT EXECUTE ON OBJECT::PubReadProducciones
	TO InitialRole
GO
GRANT EXECUTE ON TYPE::ListaAsientos 
	to InitialRole
GO
GRANT EXECUTE ON OBJECT::AdmSisCreateAsiento
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisCreateBloque
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisCreateEmpleadoAdmTe
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisCreateTeatro
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisReadAsientos
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisReadBloques
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisReadEmpleados
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisReadRegistroPagos
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmSisReadTeatros
	TO SystemAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreateBloqueProduccion 
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreateEmpleadoAgnTe
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreateObra
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreatePresentacion
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreateProduccion
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeCreateTipo 
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadBloques
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadEstados
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadObras
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadPresentaciones
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadProducciones
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeReadTipos
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AdmTeUpdateProduccionEstado
	TO TheaterAdmin
GO
GRANT EXECUTE ON OBJECT::AgnTeCreateCompraEfectivo
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeCreateCompraTarjeta
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeReadAsientosPresentaciones
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeReadBloquesProducciones
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeReadCompraResumen
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeReadPresentaciones 
	TO TheaterAgent
GO
GRANT EXECUTE ON OBJECT::AgnTeReadProducciones
	TO TheaterAgent
GO
GRANT EXECUTE ON TYPE::ListaAsientos 
	to TheaterAgent
GO
CREATE TRIGGER [TrgPresentacionesInsUpd]
	ON [dbo].[Presentaciones]
	AFTER INSERT, UPDATE
	AS
	BEGIN
		SET NOCOUNT ON
		DECLARE @IdProduccion INT
		DECLARE @FechaInsertada DATETIME
		DECLARE @NuevoMin DATETIME 
		DECLARE @NuevoMax DATETIME
		DECLARE CurInserted CURSOR FAST_FORWARD FOR
			SELECT inserted.FechaHoraInicio, inserted.IdProduccion
			FROM inserted
		OPEN CurInserted
		FETCH NEXT FROM CurInserted INTO @FechaInsertada, @IdProduccion
		WHILE @@FETCH_STATUS = 0
		   BEGIN
		    SET @NuevoMin = (SELECT MIN (Presentaciones.FechaHoraInicio) FROM Presentaciones WHERE Presentaciones.IdProduccion = @IdProduccion)
			SET @NuevoMax = (SELECT MAX (Presentaciones.FechaHoraInicio) FROM Presentaciones WHERE Presentaciones.IdProduccion = @IdProduccion)

			IF @FechaInsertada = @NuevoMin
			BEGIN
				UPDATE Producciones
				SET Producciones.FechaHoraInicio = @FechaInsertada
				WHERE Producciones.Id = @IdProduccion
			END

			IF @FechaInsertada = @NuevoMax
			BEGIN
				UPDATE Producciones
				SET Producciones.FechaHoraFin  = @FechaInsertada
				WHERE Producciones.Id = @IdProduccion
			END
		   FETCH NEXT FROM CurInserted INTO @FechaInsertada, @IdProduccion
		END
		CLOSE CurInserted
		DEALLOCATE CurInserted

		IF ((SELECT COUNT(*) AS RowCnt FROM deleted) = 0)
		BEGIN
			INSERT INTO AsientosPresentaciones (IdPresentacion, IdAsiento)
			SELECT RelacionesValidas.IdPresentaciones, RelacionesValidas.IdAsientos
			FROM (SELECT idAsientos, IdPresentaciones
				  FROM 	(SELECT Teatros.Id AS IdTeatroPresentaciones, inserted.Id AS IdPresentaciones
						FROM inserted INNER JOIN Producciones ON
						inserted.IdProduccion = Producciones.Id INNER JOIN Teatros
						ON Teatros.Id = Producciones.IdTeatro) AS PresentacionesInsertadas
						CROSS JOIN
						(SELECT Teatros.Id AS IdTeatroAsientos, Asientos.Id AS IdAsientos
						FROM Asientos INNER JOIN Bloques ON
						Bloques.Id = Asientos.IdBloque INNER JOIN Teatros 
						ON Teatros.Id = Bloques.IdTeatro) AS AsientosValidos
				 WHERE IdTeatroAsientos = IdTeatroPresentaciones
				 EXCEPT
				 SELECT AsientosPresentaciones.IdAsiento, AsientosPresentaciones.IdPresentacion
				 FROM AsientosPresentaciones) AS RelacionesValidas
		END
	END
GO
CREATE TRIGGER [TrgPresentacionesDel]
	ON [dbo].[Presentaciones]
	AFTER DELETE
	AS
	BEGIN
		SET NOCOUNT ON
		DECLARE @NewMin DATETIME
		DECLARE @NewMax DATETIME
		DECLARE @FechaBorrada DATETIME
		DECLARE @deleted_IdProduccion INT
		DECLARE curDeleted CURSOR FOR
			SELECT FechaHoraInicio, IdProduccion
			FROM deleted
	   OPEN curDeleted
	   FETCH NEXT FROM curDeleted INTO @FechaBorrada, @deleted_IdProduccion
	   WHILE @@FETCH_STATUS = 0
	   BEGIN
			SET @NewMax = (SELECT MAX (Presentaciones.FechaHoraInicio) FROM Presentaciones WHERE Presentaciones.IdProduccion = @deleted_IdProduccion)
			SET @NewMin = (SELECT MIN (Presentaciones.FechaHoraInicio) FROM Presentaciones WHERE Presentaciones.IdProduccion = @deleted_IdProduccion)
			IF  @FechaBorrada = (SELECT Producciones.FechaHoraInicio FROM Producciones WHERE Producciones.Id = @deleted_IdProduccion)
			BEGIN
				IF (@NewMin IS NULL)
				BEGIN
					UPDATE Producciones
					SET Producciones.FechaHoraInicio = NULL
					WHERE Producciones.Id = @deleted_IdProduccion
				END
				ELSE
				BEGIN
					UPDATE Producciones
					SET Producciones.FechaHoraInicio = @NewMin
					WHERE Producciones.Id = @deleted_IdProduccion
				END
			END
			IF @FechaBorrada = (SELECT Producciones.FechaHoraFin FROM Producciones WHERE Producciones.Id = @deleted_IdProduccion)
			BEGIN
				IF (@NewMax IS NULL)
				BEGIN
					UPDATE Producciones
					SET Producciones.FechaHoraFin = NULL
					WHERE Producciones.Id = @deleted_IdProduccion
				END
				ELSE
				BEGIN
					UPDATE Producciones
					SET Producciones.FechaHoraFin = @NewMax
					WHERE Producciones.Id = @deleted_IdProduccion
				END
			END
		    FETCH NEXT FROM curDeleted INTO @FechaBorrada, @deleted_IdProduccion
		END
		CLOSE curDeleted
		DEALLOCATE curDeleted
	END
GO
CREATE TRIGGER [TrgAsientosIns]
	ON [dbo].[Asientos]
	AFTER INSERT
	AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Teatros
		SET Teatros.Capacidad += CantidadesInsertadas.AsientosInsertados
		FROM 
			(
			SELECT Bloques.IdTeatro, COUNT(*) as AsientosInsertados
			FROM inserted INNER JOIN Bloques
			ON inserted.IdBloque = Bloques.Id
			GROUP BY Bloques.IdTeatro
			) AS  CantidadesInsertadas
			INNER JOIN Teatros ON CantidadesInsertadas.IdTeatro = Teatros.Id

		INSERT INTO AsientosPresentaciones (IdPresentacion, IdAsiento)
			SELECT RelacionesValidas.IdPresentaciones, RelacionesValidas.IdAsientos
			FROM 
				(
				SELECT idAsientos, IdPresentaciones
				FROM 
					(
					SELECT Teatros.Id AS IdTeatroAsientos, inserted.Id AS IdAsientos
					FROM inserted INNER JOIN Bloques ON
					Bloques.Id = inserted.IdBloque INNER JOIN Teatros 
					ON Teatros.Id = Bloques.IdTeatro
					) AS AsientosInsertados
					CROSS JOIN
					(
					SELECT Teatros.Id AS IdTeatroPresentaciones, Presentaciones.Id AS IdPresentaciones
					FROM Presentaciones INNER JOIN Producciones ON
					Presentaciones.IdProduccion = Producciones.Id INNER JOIN Teatros
					ON Teatros.Id = Producciones.IdTeatro
					) AS PresentacionesValidas
			    WHERE IdTeatroAsientos = IdTeatroPresentaciones
				EXCEPT
				SELECT AsientosPresentaciones.IdAsiento, AsientosPresentaciones.IdPresentacion
				FROM AsientosPresentaciones
				) AS RelacionesValidas
	END
GO
CREATE TRIGGER [TrgAsientosDel]
	ON [dbo].[Asientos]
	AFTER DELETE
	AS
	BEGIN
		SET NOCOUNT ON
		UPDATE Teatros
		SET Teatros.Capacidad -= CantidadesBorradas.AsientosBorrados
		FROM 
			(
			SELECT Bloques.IdTeatro, COUNT(*) AS AsientosBorrados
			FROM deleted INNER JOIN Bloques
			ON deleted.IdBloque = Bloques.Id
			GROUP BY Bloques.IdTeatro
			) AS  CantidadesBorradas
			INNER JOIN Teatros ON CantidadesBorradas.IdTeatro = Teatros.Id 
	END
GO
USE [master]
GO
ALTER DATABASE [BasesPRY2] SET  READ_WRITE 
GO

/*
-------------------------Sección 3: Script de Post-Publicación #1---------------------
Esta sección del script crea el login y logon trigger encargados de limitar la cantidad de conexiones
por ApplicationLogin a una sola.
--------------------------------------------------------------------------------------
*/
ALTER DATABASE BasesPRY2 SET TRUSTWORTHY ON
USE master;  
GO  
CREATE LOGIN LoginAuditor WITH PASSWORD = 'ElGalloDeDatos24';  
GO  
GRANT VIEW SERVER STATE TO LoginAuditor;  
GO  
CREATE TRIGGER TrgServerLogon  
ON ALL SERVER WITH EXECUTE AS 'LoginAuditor'  
FOR LOGON  
AS  
BEGIN  
IF ORIGINAL_LOGIN()= 'ApplicationLogin1' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions  
            WHERE is_user_process = 1 AND  
                original_login_name = 'ApplicationLogin1') > 1
    BEGIN
        RAISERROR ('Login already in use', 16,1)
        ROLLBACK;
    END
IF ORIGINAL_LOGIN()= 'ApplicationLogin2' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions  
            WHERE is_user_process = 1 AND  
                original_login_name = 'ApplicationLogin2') > 1
    BEGIN
        RAISERROR ('Login already in use', 16,1)
        ROLLBACK;
    END
IF ORIGINAL_LOGIN()= 'ApplicationLogin3' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions  
            WHERE is_user_process = 1 AND  
                original_login_name = 'ApplicationLogin3') > 1
    BEGIN
        RAISERROR ('Login already in use', 16,1)
        ROLLBACK;
    END
IF ORIGINAL_LOGIN()= 'ApplicationLogin4' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions  
            WHERE is_user_process = 1 AND  
                original_login_name = 'ApplicationLogin4') > 1
    BEGIN
        RAISERROR ('Login already in use', 16,1)
        ROLLBACK;
    END
IF ORIGINAL_LOGIN()= 'ApplicationLogin5' AND  
    (SELECT COUNT(*) FROM sys.dm_exec_sessions  
            WHERE is_user_process = 1 AND  
                original_login_name = 'ApplicationLogin5') > 1
    BEGIN
        RAISERROR ('Login already in use', 16,1)
        ROLLBACK;
    END
END;
GO

/*
-------------------------Sección 4: Script de Post-Publicación #2---------------------
Esta sección del script crea un SQL Server Agent Job encargado de ejecutar el procedimiento almacenado
SisUpdateUserRoles cada 15 segundos. Dicho procedimiento se encarga de revertir los cambios 
en los roles de los ApplicationLogins que no estan conectados.

IMPORTANTE: Se debe modificar la variable LoginName para que contenga el nombre del login
administrador del sistema usado para crear la base de datos
--------------------------------------------------------------------------------------
*/

USE [msdb]
GO

BEGIN TRANSACTION

DECLARE @LoginName nvarchar(50)
SET @LoginName = 'Jota-PC\Jota' -- Esta variable debe contener nombre del login administrador del sistema usado para crear la base de datos

DECLARE @ReturnCode INT
SELECT @ReturnCode = 0

IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'Data Collector' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'Data Collector'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'ActualizacionRoles', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=0, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'No description available.', 
		@category_name=N'Data Collector', 
		@owner_login_name=@LoginName, @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'ActulizarRoles', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'EXEC SisUpdateUserRoles', 
		@database_name=N'BasesPRY2', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'Every15seconds', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=2, 
		@freq_subday_interval=10, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=0, 
		@active_start_date=20200724, 
		@active_end_date=99991231, 
		@active_start_time=0, 
		@active_end_time=235959, 
		@schedule_uid=N'd637cd30-4fbc-4266-b415-305fd1e7f178'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:
GO

/*
-------------------------Sección 5: Script de Post-Publicación #3---------------------
Esta sección del script crea un SQL Server Agent Job encargado de ejecutar el procedimiento almacenado
SisCreateReporteDiario todos los días a las 17:00 pm. Dicho procedimiento se encarga de
generar reportes diarios de la cantidad y promedio de precios de las ventas del día.

IMPORTANTE: Se debe modificar la variable LoginName para que contenga el nombre del login
administrador del sistema usado para crear la base de datos
--------------------------------------------------------------------------------------
*/

USE [msdb]
GO

BEGIN TRANSACTION


DECLARE @LoginName nvarchar(50)
SET @LoginName = 'Jota-PC\Jota' -- Esta variable debe contener nombre del login administrador del sistema usado para crear la base de datos

DECLARE @ReturnCode INT
SELECT @ReturnCode = 0

IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'Data Collector' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'Data Collector'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'ReporteDiario', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=0, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'No description available.', 
		@category_name=N'Data Collector', 
		@owner_login_name=@LoginName, @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'DailyReport', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'EXEC SisCreateReporteDiario', 
		@database_name=N'BasesPRY2', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'Diario a las 5:00', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=0, 
		@active_start_date=20200724, 
		@active_end_date=99991231, 
		@active_start_time=170000, 
		@active_end_time=235959, 
		@schedule_uid=N'8efe9287-246d-4a51-8dc7-56218cca36fa'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:
GO