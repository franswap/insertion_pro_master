USE [master]
GO
/****** Object:  Database [InsertionProfessionnelleMaster]    Script Date: 20/12/2023 10:48:39 ******/
CREATE DATABASE [InsertionProfessionnelleMaster]
 CONTAINMENT = NONE
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InsertionProfessionnelleMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET RECOVERY FULL 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET  MULTI_USER 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'InsertionProfessionnelleMaster', N'ON'
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET QUERY_STORE = ON
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [InsertionProfessionnelleMaster]
GO
/****** Object:  Table [dbo].[DimDiplomes]    Script Date: 20/12/2023 10:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDiplomes](
	[IdDiplome] [int] IDENTITY(1,1) NOT NULL,
	[NomDiplome] [nvarchar](50) NULL,
	[DateExecution] [datetime] NULL,
 CONSTRAINT [PK_DimDiplomes] PRIMARY KEY CLUSTERED 
(
	[IdDiplome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDisciplines]    Script Date: 20/12/2023 10:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDisciplines](
	[IdDiscipline] [int] IDENTITY(1,1) NOT NULL,
	[NomDiscipline] [nvarchar](100) NULL,
	[NomDomaine] [nvarchar](100) NULL,
	[DateExecution] [datetime] NOT NULL,
 CONSTRAINT [PK_DimDisciplines] PRIMARY KEY CLUSTERED 
(
	[IdDiscipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLieux]    Script Date: 20/12/2023 10:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLieux](
	[IdLieu] [int] IDENTITY(1,1) NOT NULL,
	[NomEtablissement] [nvarchar](50) NULL,
	[NomAcademie] [nvarchar](50) NULL,
	[DateExecution] [datetime] NOT NULL,
 CONSTRAINT [PK_DimLieux] PRIMARY KEY CLUSTERED 
(
	[IdLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTemps]    Script Date: 20/12/2023 10:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTemps](
	[IdTemps] [int] IDENTITY(1,1) NOT NULL,
	[AnneeTemps] [int] NULL,
	[DateExecution] [datetime] NOT NULL,
 CONSTRAINT [PK_DimTemps] PRIMARY KEY CLUSTERED 
(
	[IdTemps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactInsertionProfessionnelleMaster]    Script Date: 20/12/2023 10:48:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactInsertionProfessionnelleMaster](
	[IdDiplome] [int] NOT NULL,
	[IdLieu] [int] NOT NULL,
	[IdTemps] [int] NOT NULL,
	[IdDiscipline] [int] NOT NULL,
	[cle_disc] [nvarchar](10) NOT NULL,
	[SituationMois] [int] NULL,
	[NombreReponses] [int] NULL,
	[TauxReponses] [int] NULL,
	[TauxInsertion] [int] NULL,
	[SalaireBrutAnnuelEstime] [int] NULL,
	[DateExecution] [datetime] NOT NULL,
 CONSTRAINT [PK_FactInsertionProfessionnelleMaster_1] PRIMARY KEY CLUSTERED 
(
	[IdDiplome] ASC,
	[IdLieu] ASC,
	[IdTemps] ASC,
	[IdDiscipline] ASC,
	[cle_disc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Diplome]    Script Date: 20/12/2023 10:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Diplome] ON [dbo].[FactInsertionProfessionnelleMaster]
(
	[IdDiplome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Discipline]    Script Date: 20/12/2023 10:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Discipline] ON [dbo].[FactInsertionProfessionnelleMaster]
(
	[IdDiscipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lieu]    Script Date: 20/12/2023 10:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Lieu] ON [dbo].[FactInsertionProfessionnelleMaster]
(
	[IdLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Temps]    Script Date: 20/12/2023 10:48:39 ******/
CREATE NONCLUSTERED INDEX [IX_Temps] ON [dbo].[FactInsertionProfessionnelleMaster]
(
	[IdTemps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster]  WITH CHECK ADD  CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimDiplomes] FOREIGN KEY([IdDiplome])
REFERENCES [dbo].[DimDiplomes] ([IdDiplome])
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster] CHECK CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimDiplomes]
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster]  WITH CHECK ADD  CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimDisciplines] FOREIGN KEY([IdDiscipline])
REFERENCES [dbo].[DimDisciplines] ([IdDiscipline])
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster] CHECK CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimDisciplines]
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster]  WITH CHECK ADD  CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimLieux] FOREIGN KEY([IdLieu])
REFERENCES [dbo].[DimLieux] ([IdLieu])
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster] CHECK CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimLieux]
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster]  WITH CHECK ADD  CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimTemps] FOREIGN KEY([IdTemps])
REFERENCES [dbo].[DimTemps] ([IdTemps])
GO
ALTER TABLE [dbo].[FactInsertionProfessionnelleMaster] CHECK CONSTRAINT [FK_FactInsertionProfessionnelleMaster_DimTemps]
GO
USE [master]
GO
ALTER DATABASE [InsertionProfessionnelleMaster] SET  READ_WRITE 
GO
