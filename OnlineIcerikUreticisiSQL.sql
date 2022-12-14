USE [master]
GO
/****** Object:  Database [OnlineİcerikUreticisi]    Script Date: 8.12.2022 14:38:12 ******/
CREATE DATABASE [OnlineİcerikUreticisi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineİcerikUreticisi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineİcerikUreticisi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineİcerikUreticisi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OnlineİcerikUreticisi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineİcerikUreticisi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET QUERY_STORE = OFF
GO
USE [OnlineİcerikUreticisi]
GO
/****** Object:  Table [dbo].[İcerikler]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İcerikler](
	[İcerikNo] [int] IDENTITY(1,1) NOT NULL,
	[İcerikAdi] [varchar](50) NULL,
	[İcerikTuru] [varchar](50) NULL,
 CONSTRAINT [PK_İcerikler] PRIMARY KEY CLUSTERED 
(
	[İcerikNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriNo] [int] IDENTITY(1,1) NOT NULL,
	[MAdSoyad] [varchar](50) NULL,
	[MEmail] [varchar](50) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[Uid1] [int] IDENTITY(1,1) NOT NULL,
	[Name1] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Password1] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[Role] [int] NULL,
	[Createdon] [datetime] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[Uid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[İcerikler] ON 

INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (1, N'Amadeus', N'Tiyatro')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (4, N'Community', N'Komedi dizisi')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (5, N'Gibi', N'Komedi dizisi')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (6, N'Cem Yılmaz Diomand Elite Platinium Plus', N'Stand-up')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (7, N'Broklyn Nine Nine', N'Komedi dizisi')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (8, N'House of the Dragon', N'Fantastik dizi')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (9, N'Succession', N'Dram dizisi')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (10, N'Güldür Güldür', N'Tiyatro')
INSERT [dbo].[İcerikler] ([İcerikNo], [İcerikAdi], [İcerikTuru]) VALUES (11, N'Ink Master Returns', N'Yarışma')
SET IDENTITY_INSERT [dbo].[İcerikler] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriNo], [MAdSoyad], [MEmail]) VALUES (1, N'Zeynep Orman Koç', N'zo@gmail.com')
INSERT [dbo].[Musteriler] ([MusteriNo], [MAdSoyad], [MEmail]) VALUES (2, N'Fadime Dere', N'fd@gmail.com')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [Createdon]) VALUES (1, N'Admin', N'Admin', N'12345', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
GO
/****** Object:  StoredProcedure [dbo].[İcerikEkleYenile]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[İcerikEkleYenile] --crup
@İcerikNo int,
@İcerikAdi varchar(50),
@İcerikTuru varchar(50)
as begin
IF @İcerikNo = 0 
INSERT INTO İcerikler (İcerikAdi, İcerikTuru) values (@İcerikAdi, @İcerikTuru)
ELSE
UPDATE İcerikler SET İcerikAdi = @İcerikAdi, İcerikTuru=@İcerikTuru WHERE İcerikNo=@İcerikNo
END
GO
/****** Object:  StoredProcedure [dbo].[İcerikListele]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[İcerikListele]
as begin 
select * from İcerikler
end
GO
/****** Object:  StoredProcedure [dbo].[İcerikNoSirala]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[İcerikNoSirala]
@İcerikNo int 
as begin
select * from İcerikler where İcerikNo=@İcerikNo
end
GO
/****** Object:  StoredProcedure [dbo].[İSİL]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[İSİL]
@İcerikNo int
as begin
delete from İcerikler where İcerikNo=@İcerikNo
end
GO
/****** Object:  StoredProcedure [dbo].[MSİL]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[MSİL]
@MusteriNo int
as begin
delete from Musteriler where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkleYenile]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MusteriEkleYenile] --crup
@MusteriNo int,
@MAdSoyad varchar(50),
@MEmail varchar(50)
as begin
IF @MusteriNo = 0 
INSERT INTO Musteriler (MAdSoyad, MEmail) values (@MAdSoyad, @MEmail)
ELSE
UPDATE Musteriler SET MAdSoyad = @MAdSoyad, MEmail=@MEmail WHERE MusteriNo=@MusteriNo
END
GO
/****** Object:  StoredProcedure [dbo].[MusteriListele]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MusteriListele]
as begin 
select * from Musteriler
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriNoSirala]    Script Date: 8.12.2022 14:38:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MusteriNoSirala]
@MusteriNo int 
as begin
select * from Musteriler where MusteriNo=@MusteriNo
end
GO
USE [master]
GO
ALTER DATABASE [OnlineİcerikUreticisi] SET  READ_WRITE 
GO
