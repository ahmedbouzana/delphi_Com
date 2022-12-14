USE [master]
GO
/****** Object:  Database [bd_sonelgaz]    Script Date: 28/09/2022 10:33:59 ******/
ALTER DATABASE [bd_sonelgaz] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_sonelgaz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_sonelgaz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_sonelgaz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_sonelgaz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bd_sonelgaz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_sonelgaz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bd_sonelgaz] SET  MULTI_USER 
GO
ALTER DATABASE [bd_sonelgaz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_sonelgaz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_sonelgaz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_sonelgaz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_sonelgaz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd_sonelgaz] SET QUERY_STORE = OFF
GO
USE [bd_sonelgaz]
GO
/****** Object:  Table [dbo].[abonne]    Script Date: 28/09/2022 10:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abonne](
	[id_ab] [int] IDENTITY(1,1) NOT NULL,
	[ref_ab] [varchar](15) NOT NULL,
	[nom_ab] [varchar](20) NOT NULL,
	[prenom_ab] [varchar](20) NOT NULL,
	[adr_ab] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approvisionner]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approvisionner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code_type] [int] NULL,
	[num_dem_app] [int] NULL,
	[qte_app] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[demande_app]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[demande_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[num_dem_app] [int] NOT NULL,
	[date_dem_app] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[energie]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[energie](
	[code_enrg] [int] NOT NULL,
	[nom_enrg] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[utilisateur] [varchar](25) NOT NULL,
	[motdepasse] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operation]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operation](
	[id_aff] [int] IDENTITY(1,1) NOT NULL,
	[num_aff] [varchar](15) NOT NULL,
	[ref_ab_aff] [varchar](15) NULL,
	[code_type_aff] [int] NULL,
	[num_cpt] [varchar](50) NULL,
	[nature_aff] [varchar](20) NULL,
	[d_enr_aff] [nchar](10) NULL,
	[d_rec_aff] [nchar](10) NULL,
	[d_etud_aff] [nchar](10) NULL,
	[nom_agent] [varchar](20) NULL,
	[prenom_agent] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock_cpt]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock_cpt](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[num_ser] [varchar](50) NOT NULL,
	[code_type] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_cpt]    Script Date: 28/09/2022 10:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_cpt](
	[code_type] [int] IDENTITY(1,1) NOT NULL,
	[nom_type] [nvarchar](10) NOT NULL,
	[cap_cpt] [int] NOT NULL,
	[code_enrg] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_demande_app]    Script Date: 28/09/2022 10:34:00 ******/
CREATE NONCLUSTERED INDEX [IX_demande_app] ON [dbo].[demande_app]
(
	[num_dem_app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bd_sonelgaz] SET  READ_WRITE 
GO
