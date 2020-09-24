USE [master]
GO
/****** Object:  Database [SARAIVA]    Script Date: 24/09/2020 10:26:11 ******/
CREATE DATABASE [SARAIVA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SARAIVA', FILENAME = N'C:\Public\SARAIVA.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SARAIVA_log', FILENAME = N'C:\Public\SARAIVA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SARAIVA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SARAIVA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SARAIVA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SARAIVA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SARAIVA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SARAIVA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SARAIVA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SARAIVA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SARAIVA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SARAIVA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SARAIVA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SARAIVA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SARAIVA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SARAIVA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SARAIVA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SARAIVA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SARAIVA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SARAIVA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SARAIVA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SARAIVA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SARAIVA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SARAIVA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SARAIVA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SARAIVA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SARAIVA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SARAIVA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SARAIVA] SET  MULTI_USER 
GO
ALTER DATABASE [SARAIVA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SARAIVA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SARAIVA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SARAIVA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SARAIVA]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/09/2020 10:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Livro]    Script Date: 24/09/2020 10:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](50) NOT NULL,
	[Descricao] [nvarchar](500) NULL,
	[Genero] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Livros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locacao]    Script Date: 24/09/2020 10:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdLivro] [int] NOT NULL,
	[DataLocacao] [datetime] NOT NULL,
 CONSTRAINT [PK_Locacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

GO
INSERT [dbo].[Cliente] ([Id], [Nome]) VALUES (1, N'José Carlos da Silva')
GO
INSERT [dbo].[Cliente] ([Id], [Nome]) VALUES (2, N'João da Silva')
GO
INSERT [dbo].[Cliente] ([Id], [Nome]) VALUES (1010, N'Mariana Costa')
GO
INSERT [dbo].[Cliente] ([Id], [Nome]) VALUES (1011, N'Diego M')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Livro] ON 

GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (1, N'O Monge', N'Um livro profundo sobre auto conhecimento.', N'Auto-ajuda')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (2, N'A Revolução dos bichos', N'A história do porquinho tirano.', N'Politica')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (3, N'Poder sem limites', N'O caminho do sucesso pessoal.', N'Auto-Ajuda')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (6, N'TI', N'Softwares', N'Educação')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (7, N'O rei Arthur', N'A grande descrição', N'Infantil')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (8, N'Treinando a emoção', NULL, N'Auto-Ajuda')
GO
INSERT [dbo].[Livro] ([Id], [Titulo], [Descricao], [Genero]) VALUES (10, N'A sombra', N'teste', N'genero')
GO
SET IDENTITY_INSERT [dbo].[Livro] OFF
GO
SET IDENTITY_INSERT [dbo].[Locacao] ON 

GO
INSERT [dbo].[Locacao] ([Id], [IdCliente], [IdLivro], [DataLocacao]) VALUES (1, 1, 2, CAST(0x0000AC2900000000 AS DateTime))
GO
INSERT [dbo].[Locacao] ([Id], [IdCliente], [IdLivro], [DataLocacao]) VALUES (2, 2, 1, CAST(0x0000AC1300000000 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Locacao] OFF
GO
ALTER TABLE [dbo].[Locacao]  WITH CHECK ADD  CONSTRAINT [FK_Locacao_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Locacao] CHECK CONSTRAINT [FK_Locacao_Cliente]
GO
ALTER TABLE [dbo].[Locacao]  WITH CHECK ADD  CONSTRAINT [FK_Locacao_Livro] FOREIGN KEY([IdLivro])
REFERENCES [dbo].[Livro] ([Id])
GO
ALTER TABLE [dbo].[Locacao] CHECK CONSTRAINT [FK_Locacao_Livro]
GO
USE [master]
GO
ALTER DATABASE [SARAIVA] SET  READ_WRITE 
GO
