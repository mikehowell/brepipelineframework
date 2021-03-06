USE [master]
GO
/****** Object:  Database [BREPipelineFrameworkTest]    Script Date: 06/06/2014 09:01:55 ******/
CREATE DATABASE [BREPipelineFrameworkTest] ON  PRIMARY 
( NAME = N'BREPipelineFrameworkTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BREPipelineFrameworkTest.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BREPipelineFrameworkTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BREPipelineFrameworkTest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BREPipelineFrameworkTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ARITHABORT OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET  DISABLE_BROKER
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET  READ_WRITE
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET RECOVERY FULL
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET  MULTI_USER
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BREPipelineFrameworkTest] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BREPipelineFrameworkTest', N'ON'
GO
USE [BREPipelineFrameworkTest]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 06/06/2014 09:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Test](
	[Column1] [varchar](50) NOT NULL,
	[Column2] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Column1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Test] ([Column1], [Column2]) VALUES (N'test', N'hello')
