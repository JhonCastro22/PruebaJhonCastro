USE [master]
GO
/****** Object:  Database [PruebaDesarrolloJhonCastro]    Script Date: 26/12/2024 4:40:47 p. m. ******/
CREATE DATABASE [PruebaDesarrolloJhonCastro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaDesarrolloJhonCastro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PruebaDesarrolloJhonCastro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaDesarrolloJhonCastro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PruebaDesarrolloJhonCastro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaDesarrolloJhonCastro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaDesarrolloJhonCastro', N'ON'
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET QUERY_STORE = ON
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PruebaDesarrolloJhonCastro]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id] [smallint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [EstadoCivil_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Apellido] [varchar](70) NOT NULL,
	[TipoDocumento] [smallint] NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[ValorGanar] [int] NOT NULL,
	[EstadoCivil] [smallint] NOT NULL,
 CONSTRAINT [Persona_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [smallint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [TipoDocumento_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EstadoCivil] ([Id], [Nombre]) VALUES (1, N'CASADO')
GO
INSERT [dbo].[EstadoCivil] ([Id], [Nombre]) VALUES (2, N'SOLTERO')
GO
INSERT [dbo].[EstadoCivil] ([Id], [Nombre]) VALUES (3, N'UNION LIBRE')
GO
INSERT [dbo].[EstadoCivil] ([Id], [Nombre]) VALUES (4, N'VUIDO')
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 
GO
INSERT [dbo].[Persona] ([Id], [Nombre], [Apellido], [TipoDocumento], [FechaNacimiento], [ValorGanar], [EstadoCivil]) VALUES (1, N'JUAN', N'AGUILAR', 3, CAST(N'2024-12-27T00:00:00.000' AS DateTime), 20000, 4)
GO
INSERT [dbo].[Persona] ([Id], [Nombre], [Apellido], [TipoDocumento], [FechaNacimiento], [ValorGanar], [EstadoCivil]) VALUES (2, N'JHON', N'CASTRO', 1, CAST(N'2000-06-22T00:00:00.000' AS DateTime), 50000, 2)
GO
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
INSERT [dbo].[TipoDocumento] ([Id], [Nombre]) VALUES (1, N'CEDULA CIUDADANIA')
GO
INSERT [dbo].[TipoDocumento] ([Id], [Nombre]) VALUES (2, N'TARJETA IDENTIDAD')
GO
INSERT [dbo].[TipoDocumento] ([Id], [Nombre]) VALUES (3, N'CEDULA EXTRANJERIA')
GO
INSERT [dbo].[TipoDocumento] ([Id], [Nombre]) VALUES (4, N'PASAPORTE')
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([EstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id])
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD FOREIGN KEY([TipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[GetEstadoCivil]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEstadoCivil]
	-- Add the parameters for the stored procedure here
	@Id smallint = null,
	@Nombre varchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id]
      ,[Nombre]
  FROM [PruebaDesarrolloJhonCastro].[dbo].[EstadoCivil]
  WHERE 1=1 
  AND(@Id IS NULL OR (Id =@Id))
  AND(@Nombre IS NULL OR (Nombre =@Nombre))
END
GO
/****** Object:  StoredProcedure [dbo].[GetPersona]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPersona]
	-- Add the parameters for the stored procedure here
@Id smallint = null
      ,@Nombre varchar(70) = null
      ,@Apellido varchar(70)= null
      ,@TipoDocumento smallint= null
      ,@FechaNacimiento datetime = null
      ,@ValorGanar int= null
      ,@EstadoCivil smallint = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (1000) [Id]
      ,[Nombre]
      ,[Apellido]
      ,[TipoDocumento]
      ,[FechaNacimiento]
      ,[ValorGanar]
      ,[EstadoCivil]
  FROM [PruebaDesarrolloJhonCastro].[dbo].[Persona]
	where 1=1
	AND (@Id IS NULL OR (Id =@Id))
    AND (@Nombre IS NULL OR (Nombre =@Nombre))
    AND (@Apellido IS NULL OR (Apellido =@Apellido))
    AND (@TipoDocumento IS NULL OR (TipoDocumento =@TipoDocumento))
    AND (@FechaNacimiento IS NULL OR (FechaNacimiento =@FechaNacimiento))
    AND (@ValorGanar IS NULL OR (ValorGanar =@ValorGanar))
    AND (@EstadoCivil IS NULL OR (EstadoCivil =@EstadoCivil))
END
GO
/****** Object:  StoredProcedure [dbo].[GetTipoDocumento]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTipoDocumento]
	-- Add the parameters for the stored procedure here
	@Id smallint = null,
	@Nombre varchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id]
      ,[Nombre]
  FROM [PruebaDesarrolloJhonCastro].[dbo].[TipoDocumento]
  WHERE 1=1 
  AND(@Id IS NULL OR (Id =@Id))
  AND(@Nombre IS NULL OR (Nombre =@Nombre))
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPersona]    Script Date: 26/12/2024 4:40:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertPersona]
	-- Add the parameters for the stored procedure here
	@Id smallint OUTPUT
      ,@Nombre varchar(70) = null
      ,@Apellido varchar(70)= null
      ,@TipoDocumento smallint= null
      ,@FechaNacimiento datetime = null
      ,@ValorGanar int= null
      ,@EstadoCivil smallint = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Persona]
           ([Nombre]
           ,[Apellido]
           ,[TipoDocumento]
           ,[FechaNacimiento]
           ,[ValorGanar]
           ,[EstadoCivil])
     VALUES
           (@Nombre
           ,@Apellido
           ,@TipoDocumento
           ,@FechaNacimiento
           ,@ValorGanar
           ,@EstadoCivil)
		   
		   SET @Id = SCOPE_IDENTITY();

		   SELECT @Id AS Id;
END
GO
USE [master]
GO
ALTER DATABASE [PruebaDesarrolloJhonCastro] SET  READ_WRITE 
GO
