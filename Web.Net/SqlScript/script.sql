USE [master]
GO
/****** Object:  Database [OOP-DbPersonel]    Script Date: 2.10.2021 15:49:24 ******/
CREATE DATABASE [OOP-DbPersonel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OOP-DbPersonel', FILENAME = N'C:\Users\azder\OOP-DbPersonel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OOP-DbPersonel_log', FILENAME = N'C:\Users\azder\OOP-DbPersonel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OOP-DbPersonel] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OOP-DbPersonel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OOP-DbPersonel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET ARITHABORT OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OOP-DbPersonel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OOP-DbPersonel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OOP-DbPersonel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OOP-DbPersonel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OOP-DbPersonel] SET  MULTI_USER 
GO
ALTER DATABASE [OOP-DbPersonel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OOP-DbPersonel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OOP-DbPersonel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OOP-DbPersonel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OOP-DbPersonel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OOP-DbPersonel] SET QUERY_STORE = OFF
GO
USE [OOP-DbPersonel]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [OOP-DbPersonel]
GO
/****** Object:  Table [dbo].[Departman]    Script Date: 2.10.2021 15:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departman](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[DepAd] [varchar](50) NULL,
 CONSTRAINT [PK_Departman] PRIMARY KEY CLUSTERED 
(
	[DepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 2.10.2021 15:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [varchar](50) NULL,
	[MusteriSoyad] [varchar](50) NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 2.10.2021 15:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PerId] [int] IDENTITY(1,1) NOT NULL,
	[PerAd] [varchar](20) NULL,
	[PerSoyad] [varchar](30) NULL,
	[PerFoto] [varchar](500) NULL,
	[PerDepartman] [int] NULL,
	[PerMaas] [decimal](18, 3) NULL,
	[PerSemt] [varchar](50) NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[PerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satıs]    Script Date: 2.10.2021 15:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satıs](
	[SatısId] [int] IDENTITY(1,1) NOT NULL,
	[Urun] [int] NULL,
	[Personel] [int] NULL,
	[Tutar] [decimal](18, 3) NULL,
	[Musteri] [int] NULL,
 CONSTRAINT [PK_Satıs] PRIMARY KEY CLUSTERED 
(
	[SatısId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urun]    Script Date: 2.10.2021 15:49:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](50) NULL,
	[UrunFiyat] [decimal](18, 3) NULL,
	[UrunAdet] [int] NULL,
 CONSTRAINT [PK_Urun] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departman] ON 

INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (1, N'Muhasebe')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (2, N'Satis')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (3, N'Güvenlik')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (4, N'Yönetim')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (5, N'Sekreter')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (6, N'Insan Kaynaklar')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (7, N'Müsteri Temsilcisi')
INSERT [dbo].[Departman] ([DepId], [DepAd]) VALUES (1002, N'Bilgi Islem')
SET IDENTITY_INSERT [dbo].[Departman] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (1, N'Emel', N'Sayin')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (2, N'Türkan', N'Soray')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (3, N'Filiz', N'Akin')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (4, N'Meltem', N'Cumbul')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (5, N'Sibel', N'Kekili')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (1002, N'Fatma', N'Grik')
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad]) VALUES (3002, N'Kenan', N'Imirzalioglu')
SET IDENTITY_INSERT [dbo].[Musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (1, N'Barbara', N'Palvin', N'Test', 1, CAST(6000.000 AS Decimal(18, 3)), N'Bebek')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (2, N'Jason', N'Mamoa', N'Test', 3, CAST(5300.000 AS Decimal(18, 3)), N'Cihangir')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (3, N'Scarlet', N'Johanson', N'Test', 3, CAST(55000.000 AS Decimal(18, 3)), N'Bebek')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (4, N'Megan', N'Fox', N'Test', 2, CAST(10000.000 AS Decimal(18, 3)), N'Tuzla')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (5, N'Jennifer', N'Lawrence', N'Test', 5, CAST(7500.000 AS Decimal(18, 3)), N'Ümraniye')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (6, N'Jennifer', N'Anniston', N'Test', 6, CAST(6000.000 AS Decimal(18, 3)), N'Üsküdar')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (7, N'Angelina', N'Jolie', N'Test', 7, CAST(5900.000 AS Decimal(18, 3)), N'Kadiköy')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (8, N'Özgür', N'Tokay', N'Test', 4, CAST(1000000.000 AS Decimal(18, 3)), N'Belirtilmedi!')
INSERT [dbo].[Personel] ([PerId], [PerAd], [PerSoyad], [PerFoto], [PerDepartman], [PerMaas], [PerSemt]) VALUES (1002, N'Evangeline', N'Lily', NULL, 1, CAST(4900.000 AS Decimal(18, 3)), N'Dudullu')
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Satıs] ON 

INSERT [dbo].[Satıs] ([SatısId], [Urun], [Personel], [Tutar], [Musteri]) VALUES (1, 2, 1, CAST(10000.000 AS Decimal(18, 3)), 2)
INSERT [dbo].[Satıs] ([SatısId], [Urun], [Personel], [Tutar], [Musteri]) VALUES (2, 4, 3, CAST(1500.000 AS Decimal(18, 3)), 2)
INSERT [dbo].[Satıs] ([SatısId], [Urun], [Personel], [Tutar], [Musteri]) VALUES (1002, 3, 4, CAST(950.000 AS Decimal(18, 3)), 4)
SET IDENTITY_INSERT [dbo].[Satıs] OFF
GO
SET IDENTITY_INSERT [dbo].[Urun] ON 

INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (1, N'Bilgisayar', CAST(10000.000 AS Decimal(18, 3)), 50)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (2, N'Klavye', CAST(700.000 AS Decimal(18, 3)), 200)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (3, N'Mouse', CAST(350.000 AS Decimal(18, 3)), 150)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (4, N'Kulaklik', CAST(1500.000 AS Decimal(18, 3)), 90)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (5, N'Mouse Ped', CAST(200.000 AS Decimal(18, 3)), 450)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (6, N'Sogutucu', CAST(600.000 AS Decimal(18, 3)), 100)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (1002, N'Iphone 6 Plus', CAST(2100.000 AS Decimal(18, 3)), 10)
INSERT [dbo].[Urun] ([UrunId], [UrunAd], [UrunFiyat], [UrunAdet]) VALUES (1003, N'Lenovo Ideapd 520', CAST(5200.000 AS Decimal(18, 3)), 50)
SET IDENTITY_INSERT [dbo].[Urun] OFF
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Departman] FOREIGN KEY([PerDepartman])
REFERENCES [dbo].[Departman] ([DepId])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Departman]
GO
ALTER TABLE [dbo].[Satıs]  WITH CHECK ADD  CONSTRAINT [FK_Satıs_Musteri] FOREIGN KEY([Musteri])
REFERENCES [dbo].[Musteri] ([MusteriId])
GO
ALTER TABLE [dbo].[Satıs] CHECK CONSTRAINT [FK_Satıs_Musteri]
GO
ALTER TABLE [dbo].[Satıs]  WITH CHECK ADD  CONSTRAINT [FK_Satıs_Personel] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personel] ([PerId])
GO
ALTER TABLE [dbo].[Satıs] CHECK CONSTRAINT [FK_Satıs_Personel]
GO
ALTER TABLE [dbo].[Satıs]  WITH CHECK ADD  CONSTRAINT [FK_Satıs_Urun] FOREIGN KEY([Urun])
REFERENCES [dbo].[Urun] ([UrunId])
GO
ALTER TABLE [dbo].[Satıs] CHECK CONSTRAINT [FK_Satıs_Urun]
GO
/****** Object:  StoredProcedure [dbo].[PerListesi]    Script Date: 2.10.2021 15:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PerListesi]
AS
	SELECT PerId,PerAd,PerSoyad,PerFoto,DepAd,PerMaas,PerSemt from Personel
	inner join Departman
	on Personel.PerDepartman = Departman.DepId

GO
/****** Object:  StoredProcedure [dbo].[Satislar]    Script Date: 2.10.2021 15:49:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[Satislar]
as
select SatısId,UrunAd , PerAd+' '+PerSoyad as 'Personel', MusteriAd+' '+MusteriSoyad as 'Musteri', Tutar from Satıs
inner join Urun 
on Satıs.Urun=Urun.UrunId
inner join Personel
on Satıs.Personel = Personel.PerId
inner join Musteri
on Satıs.Musteri=Musteri.MusteriId
GO
USE [master]
GO
ALTER DATABASE [OOP-DbPersonel] SET  READ_WRITE 
GO
