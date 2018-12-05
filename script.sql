USE [master]
GO
/****** Object:  Database [MStore]    Script Date: 12/5/2018 2:35:13 PM ******/
CREATE DATABASE [MStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MStore_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [MStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MStore] SET  MULTI_USER 
GO
ALTER DATABASE [MStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MStore]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NULL,
	[Password] [varchar](100) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [varchar](50) NULL,
	[RoleID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banners]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[AttName1] [nvarchar](255) NULL,
	[AttName2] [nvarchar](255) NULL,
	[AttName3] [nvarchar](255) NULL,
	[AttName4] [nvarchar](255) NULL,
	[AttName5] [nvarchar](255) NULL,
	[AttName6] [nvarchar](255) NULL,
	[AttName7] [nvarchar](255) NULL,
	[AttName8] [nvarchar](255) NULL,
	[AttName9] [nvarchar](255) NULL,
	[AttName10] [nvarchar](255) NULL,
	[Image] [varchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](255) NULL,
	[LandLine] [varchar](50) NULL,
	[CellPhone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Skype] [varchar](255) NULL,
	[Facebook] [varchar](255) NULL,
	[Gmail] [varchar](255) NULL,
	[Twitter] [varchar](255) NULL,
	[Instagram] [varchar](255) NULL,
	[Working] [varchar](255) NULL,
	[AccountID] [varchar](50) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Messages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[AccountID] [varchar](50) NULL,
	[IsAnswered] [bit] NULL,
	[AnsweredAccountId] [nvarchar](128) NULL,
	[Answer] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [varchar](50) NOT NULL,
	[ProductID] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[SaleOff] [float] NOT NULL CONSTRAINT [DF_OrderDetails_SaleOff]  DEFAULT ((0)),
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [varchar](50) NOT NULL,
	[AccountID] [varchar](50) NOT NULL,
	[DatePurchased] [datetime] NOT NULL CONSTRAINT [DF_Orders_DatePurchased]  DEFAULT (getdate()),
	[Status] [varchar](50) NOT NULL,
	[Total] [float] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image1] [varchar](50) NOT NULL,
	[Image2] [varchar](50) NULL,
	[Image3] [varchar](50) NULL,
	[Image4] [varchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](255) NULL,
	[OtherInfo] [nvarchar](255) NULL,
	[Stock] [int] NOT NULL,
	[DateArrivals] [datetime] NOT NULL CONSTRAINT [DF_Products_DateArrivals]  DEFAULT (getdate()),
	[SaleOff] [float] NULL CONSTRAINT [DF_Products_SaleOff]  DEFAULT ((0)),
	[AttVal1] [nvarchar](255) NULL,
	[AttVal2] [nvarchar](255) NULL,
	[AttVal3] [nvarchar](255) NULL,
	[AttVal4] [nvarchar](255) NULL,
	[AttVal5] [nvarchar](255) NULL,
	[AttVal6] [nvarchar](255) NULL,
	[AttVal7] [nvarchar](255) NULL,
	[AttVal8] [nvarchar](255) NULL,
	[AttVal9] [nvarchar](255) NULL,
	[AttVal10] [nvarchar](255) NULL,
	[RatingScore] [int] NULL,
	[NumOfRates] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [varchar](50) NOT NULL,
	[Discount] [float] NOT NULL,
	[Description] [varchar](max) NULL,
	[Type] [int] NOT NULL,
	[ProductID] [varchar](50) NULL,
	[AccountID] [varchar](50) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [varchar](10) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 12/5/2018 2:35:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wishlist](
	[AccountID] [varchar](50) NOT NULL,
	[ProductID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201812040711221_InitialCreate', N'AdminECommerceWeb.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3F40FF83A0A7F620B57239BBD813D85BA44ED2137473C13ABBA76F0B5AA21D62254A95A83441D15FD687FEA4F317CE50A26489175D6CC5768A05161639FC66381C92C3E130FFFBF3AFF10F4F816F3DE23821219DD847A343DBC2D40D3D4297133B658BEFDFD93FBCFFE61FE30B2F78B23E1774279C0E5AD264623F30169D3A4EE23EE00025A380B87198840B3672C3C0415EE81C1F1EFEDB393A723040D8806559E38F296524C0D9077C4E43EAE288A5C8BF0E3DEC27A21C6A6619AA7583029C44C8C513FBCC0B08BD988641806317FF17CF47791BDB3AF309027966D85FD816A234648881B4A79F123C63714897B3080A907FFF1C61A05B203FC1A217A72BF2AE1D3A3CE61D72560D0B28374D5818F4043C3A111A72E4E66BE9D92E35083ABC005DB367DEEB4C8F13FBCAC359D1C7D00705C80C4FA77ECC8927F675C9E22C896E301B150D4739E4650C70BF85F1D75115F1C0EADCEEA0B4A8E3D121FF77604D539FA5319E509CB218F907D65D3AF789FB337EBE0FBF623A39399A2F4EDEBD798BBC93B7FFC2276FAA3D85BE025DAD008AEEE230C231C8861765FF6DCBA9B773E48665B34A9B5C2B604B30396CEB1A3D7DC074C91E60DA1CBFB3AD4BF284BDA24418D7274A602E412316A7F07993FA3E9AFBB8AC771A79F2FF1BB81EBF793B08D71BF44896D9D04BFC61E2C430AF3E623FAB4D1E48944FAFDA787F1164977118F0EFBA7DE5B55F66610AB3153A131A49EE51BCC4AC2EDDD859196F2793E650C39B7581BAFFA6CD2555CD5B4BCA3BB4CE4C28586C7B3614F2BE2CDFCE1677164530789969718D34199C69CB1A4918079642B932A3A3AE6644A17B7FE755F12240C41F6059ECC005FC920589035CF6F2C7108C10D1DE32DFA1248155C1FB0F4A1E1A44879F03883EC36E1A83B1CE180AA217E776F710527C9306733E07B6C76BB0A1B9FF2DBC442E0BE30BCA5B6D8CF72174BF8629BBA0DE3962F813730B40FE794F82EE00838873E6BA38492EC198B1370DC1ED2E00AF283B39EE0DC797A95DBB25531F9140EF97480BEA978274E59BE82914FFC440A6F3519A44FD102E09ED266A416A1635A768155590F5159583759354509A05CD085AE5CCA906F3FAB2111ADEEDCB60F7DFEFDB6CF336AD051535CE6085C43F618A6358C6BC3BC4188EE96A04BAAC1BBB7016B2E1E34C5F7C6FCA387D467E3A34ABB56643B6080C3F1B32D8FD9F0D999850FC483CEE9574380C15C400DF895E7FCE6A9F739264DB9E0EB56E6E9BF976D600D374394B92D025D92CD084C14410A32E3FF870567B4423EF8D1C15818E81A113BEE54109F4CD968DEA969E631F336C9DB97998708A121779AA1AA1435E0FC18A1D5523D82A3A5217EE9F0A4FB0741CF346881F821298A98432755A10EA9208F9AD5A925A76DCC278DF4B1E72CD398E30E50C5B35D185B93E18C20528F94883D2A6A1B153B1B866433478ADA6316F736157E3AEC428B662932DBEB3C12E85FFF62286D9ACB12D1867B34ABA08600CECEDC240C559A5AB01C807977D3350E9C4643050E1526DC540EB1ADB8181D655F2EA0C343FA2761D7FE9BCBA6FE6593F286F7F5B6F54D70E6CB3A68F3D33CDDCF784360C5AE05835CFF339AFC44F4C73380339C5F92C11AEAE6C221C7C86593D64B3F277B57EA8D30C221B5113E0CAD05A40C595A002A44CA81EC215B1BC46E98417D103B688BB35C28AB55F82ADD8808A5DBD1AAD109A2F5065E3EC74FA287B565A8362E49D0E0B151C8D41C88B57BDE31D94628ACBAA8AE9E20BF7F1862B1D1383D1A0A016CFD5A0A4A233836BA930CD762DE91CB23E2ED9465A92DC2783968ACE0CAE2561A3ED4AD238053DDC828D5454DFC2079A6C45A4A3DC6DCABAB193E74D8982B16348B01A5FA32822745949B81225D62CCFB69A7E3FEB9F8014E4188E9B68F2904A694B4E2C8CD1124BB5C01A24BD2471C2CE114373C4E33C532F50C8B47BAB61F92F5856B74F75108B7DA0A0E6BF85E9992EF26B3BAEEA9208A44BE867C0FD9A2C98AEB1027D738BA7C1211FC59AF8FD34F4D3809ADD2C73EBFC16AFDA3E2F5111C68E24BFE246293A539CDDFA00741A1E756A0C3A54A52FB3FE7099214C4A2F3CD1AADA4DDEA919A5085655514C01AC9D0D9FC9A95963C864AFB1FF88B522BCCC1C13A92A550051D413A392EDA08055EABAA3D61352AA98F59AEE8852D6491552AAEA216535B7A42664B5622D3C8346F514DD39A8D9245574B5B63BB226AFA40AADA95E035B23B35CD71D55937A5205D65477C75EE5A1C84BE91EEF62C6B3CC86DB587EE8DD6C1F3360BCCCBA38CC3658B9DBAF02558A7B6289DB7B054C94EFA54D194F7E1BDA541EF1D8CCA60C18E655A876375E5F841A2FF4CD98B50BEFDA42DF74E16FC6EB67B92F6A1FCAF14F2629B997C740E9B8371647AFF64737CA592C27B1AD428DB0C93F270C07234E309AFDEA4F7D82F9925E105C234A1638617992877D7C78742CBDD8D99FD7334E9278BEE6E86A7A42531FB32DE46BD14714BB0F2856B327367861B2025502D357D4C34F13FBF7ACD56916E3E0BFB2E203EB2AF944C9AF2954DCC729B6FE50B34187C9B8EFF0C6A314F48F57F178A2BBCAAF7EF992373DB06E63984EA7D6A1A4E87586BFFEA4A2973479D30DA459FBA1C5EB9D6DB5970B5A5469B6ACFF50614ED8208F140A29BF0DD0D3777D45D33E44D80851F3D86028BC4154687A4CB00E96F12181079F2C7B48D0AFB3FA8705EB88667C5440687F30F94941F765A868B9C37D48736CDAC69294E9B935257BA3FCCC5DEF4D4AE6F646135DCDCEEE01376806F6662ECA2BCB6C1E6CEBD4242E0F86BD4BBB7FF16CE57D49505E39EDBBCD4BDE662A72C315D3DF2A03790F72E6343940BBCF33DEB6AD99E2C07B9EACD92F9B78CF8C4D6CF3BBCF19DEB6B19902C47B6E6CBD3283F7CCD676B57FEED8D23A6FA13BCFF35553960CF739BA28725B1E6F1E7287E3FF3C0423C83DCAFCF9A53E71AC29E9B585E18AC4CCD49CB1263356268EC257A16866DBAFAF62C36FECACA069666BC8F36CE22DD6FF46DE82A699B7217B721719C8DAFC455D5678CB3AD69450F59A328E6B3D6949706FF3591B2FE75F5382F1204AA9CD1EC3EDF2EBC9271E4425434E9D1EF9C3EA4531EC9D95BFE108FB7742962B08FE171D29766BBB664973451761B1794B1215245284E61A33E4C1967A1633B2402E836A1E80CEDE8F67413D7E0D32C7DE15BD4D599432E8320EE67E2DE0C59D8026FE5992745DE6F16DC4BF9221BA0062121EB8BFA53FA6C4F74AB92F3531210304F72E44B8978F25E361DFE573897413D28E40427DA553748F83C807B0E496CED0235E473630BF0F7889DCE75504D004D23E1075B58FCF095AC6284804C6AA3D7C820D7BC1D3FBFF032BFA4E24CA540000, N'6.2.0-61023')
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'dat', N'Lê ', N'Phát Đạt Handsome', N'datlp98@gmail.com', N'0123456', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'Quận Cam, Sai Gòn ^^', N'img/featured-image/account.jpg', N'US')
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'datlp', N'Thích', N'Cờ Bạc', N'Dat', NULL, N'123', NULL, N'img/team/dat.jpg', N'AD')
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'phund', N'Thích', N'Nhậu Nhẹt', N'phund@gmail.com', N'01678162', N'123', NULL, N'img/team/phu.jpg', N'AD')
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'thanhnd', N'Thích', N'Đá Đà', N'thichdaga@gmail.com', N'0123456789', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'Gia Lai', N'img/team/thanh.jpg', N'AD')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'814faaf1-7d6b-43f8-8b9c-b0a6bfbb8495', N'thanhphonui321@gmail.com', 0, N'AFaSCQnGI7LXhhC9p4xSGZypBR5QrTbgIeuUKzi+2FhT37RGRxfSrnR+aQxJLh33oQ==', N'0eb34e75-6fe3-4a28-aedf-0eb8978118f3', NULL, 0, 0, NULL, 1, 0, N'thanhphonui321@gmail.com')
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (1, N'1', N'img/hero-slider/01.jpg')
INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (2, N'5', N'img/hero-slider/02.jpg')
INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (4, N'4', N'img/hero-slider/03.jpg')
SET IDENTITY_INSERT [dbo].[Banners] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (1, N'Clocks', N'Size', N'Gender', N'Origin', N'Machine Type
', NULL, NULL, NULL, NULL, NULL, NULL, N'img\categories\cat01.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (2, N'Furniture', N'Dimensions', N'Weight', N'Materials', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL, N'img\categories\cat02.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (3, N'Lightning', N'Performance', N'Model', N'Voltage', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL, N'img\categories\cat03.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (4, N'Bags', N'Size', N'Gender', N'Materials', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL, N'img\categories\cat04.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (5, N'Mobile Phone', N'Camera', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'img\categories\cat01.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10], [Image]) VALUES (7, N'Thanh Dep Trai 2', N'Performance', N'Model', N'Voltage', N'Colors', N'Test xem sao', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([ID], [Name], [Email], [Message], [AccountID], [IsAnswered], [AnsweredAccountId], [Answer], [Status]) VALUES (1, N'Thích Ðá Ðà', N'thichdaga@gmail.com', N'Hello anh em', N'thanhnd', 1, NULL, N'Hello cc gi', 1)
INSERT [dbo].[Messages] ([ID], [Name], [Email], [Message], [AccountID], [IsAnswered], [AnsweredAccountId], [Answer], [Status]) VALUES (2, N'abc', N'thanh@gmail.com', N'Ac', NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850228040', N'2', 1, 3515, 0.15)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850228040', N'3', 1, 1000, 0.4)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850228040', N'5', 1, 800, 0.75)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850228040', N'8', 1, 100, 0.3)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850374110', N'8', 1, 100, 0.3)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850374110', N'9', 1, 1080, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1543850399434', N'8', 1, 100, 0.3)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'2', N'2', 1, 200, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'1', 4, 700, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'2', 1, 50, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'3', 2, 200, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'5', 5, 1999, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'6', 6, 800, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'7', 1, 56, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'8', 5, 780, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'4', N'3', 2, 600, 0.2)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'4', N'6', 1, 750, 0.1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'4', N'7', 1, 600, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'5', N'6', 2, 650, 0.2)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'6', N'2', 1, 700, 0.1)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'1543850228040', N'thanhnd', CAST(N'2018-12-03 22:17:08.100' AS DateTime), N'Waiting for confirm', 3857.75, N'Thanh ', N'0123456789', N'Gia Lai', N'thichdaga@gmail.com')
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'1543850374110', N'thanhnd', CAST(N'2018-12-03 22:19:34.110' AS DateTime), N'Waiting for confirm', 1150, N'Thanh', N'0123456789', N'Gia Lai', N'thichdaga@gmail.com')
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'1543850399434', N'thanhnd', CAST(N'2018-12-03 22:19:59.433' AS DateTime), N'Waiting for confirm', 70, N'Thanh ', N'0123456789', N'Gia Lai', N'thichdaga@gmail.com')
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'2', N'datlp', CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'Delivered', 1000, N'Phat Dat Dep Trai', N'123', NULL, NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'3', N'datlp', CAST(N'2018-12-21 00:00:00.000' AS DateTime), N'Delivered', 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'4', N'dat', CAST(N'2018-12-01 15:26:50.703' AS DateTime), N'Delivered', 1900, N'Đạt chứ ai', N'001122', N'Quận Cam Sài Gòn', NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'5', N'dat', CAST(N'2018-12-01 15:27:08.673' AS DateTime), N'In Progress', 900, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'6', N'dat', CAST(N'2018-12-01 15:27:18.420' AS DateTime), N'Canceled', 500, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'1', N'Maharam Shell Chair', 128, 2, N'img/shop/th01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'Norway', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam hic totam, tempore quos dicta voluptate tempora ex voluptatum amet, veniam assumenda magnam eveniet eius reiciendis, ab necessitatibus quis iure libero.

Alias commodi aspernatur quo illo dolor voluptatem animi ipsum laudantium similique blanditiis, molestias facilis vitae harum minima obcaecati corrupti quibusdam minus modi.', N'Quisque rutrum eu sapien in viverra. Quisque id consectetur tellus. Etiam in lacus ut lorem vehicula vehicula non et felis. Integer quis solis.', N'Repellendus ea laudantium pariatur eum.', 10, CAST(N'2018-11-26 13:09:44.393' AS DateTime), 0.3, N'120 x 75 x 90 cm', N'2.65 kg
', N'40% wood, 37% cotton, 23% plastic', N'Blue, Creme, Orange, Red', NULL, NULL, NULL, NULL, NULL, NULL, 20, 5)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'2', N'Citizen BE9170-56A', 3515, 1, N'img/shop/th01.jpg', N'shop/preview02.jpg', N'shop/preview02.jpg', N'shop/preview02.jpg', N'Citizen', NULL, NULL, NULL, 20, CAST(N'2018-11-29 10:39:10.800' AS DateTime), 0.15, N'39 mm', N'Male', N'Japan', N'Quartz', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'3', N'Iphone', 1000, 5, N'img/shop/th02.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'Apple', N'a', N'a', N'a', 100, CAST(N'2018-11-28 00:00:00.000' AS DateTime), 0.4, N'2', N'Blue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'4', N'Samsung ', 900, 5, N'img/shop/th03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'Samsung ', N'b', N'b', N'b', 100, CAST(N'2018-11-29 20:49:27.133' AS DateTime), 0.05, N'3', N'Yellow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'5', N'Oppo', 800, 5, N'img/shop/th04.jpg', N'shop/preview03.jpg', N'shop/preview02.jpg', N'shop/preview01.jpg', N'Oppo', N'c', N'c', N'c', 100, CAST(N'2018-11-29 00:00:00.000' AS DateTime), 0.75, N'1', N'Red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'6', N'Ipad', 1000, 5, N'img/shop/th05.jpg', NULL, NULL, NULL, N'a', N'a', N'a', N'a', 100, CAST(N'2018-11-30 12:03:11.580' AS DateTime), 0.1, N'4', N'Black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 5)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'7', N'Ipod', 200, 3, N'img/shop/th06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, CAST(N'2018-11-30 12:03:56.457' AS DateTime), 0.2, N'1', N'2', N'3', N'4', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'8', N'Ipid', 100, 4, N'img/shop/th07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, CAST(N'2018-11-30 12:04:20.270' AS DateTime), 0.3, N'1', N'2', N'3', N'4', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'9', N'Book', 1080, 1, N'img/shop/th01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, CAST(N'2018-11-30 12:15:15.990' AS DateTime), 0, N'1', N'2', N'3', N'4', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2)
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'US', N'User')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'dat', N'1')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'dat', N'2')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'dat', N'6')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'dat', N'7')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'thanhnd', N'3')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'thanhnd', N'6')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'thanhnd', N'7')
INSERT [dbo].[Wishlist] ([AccountID], [ProductID]) VALUES (N'thanhnd', N'8')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/5/2018 2:35:14 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Promotions] ADD  CONSTRAINT [DF_Promotions_Time]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles1]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Banners]  WITH CHECK ADD  CONSTRAINT [FK_Banners_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Banners] CHECK CONSTRAINT [FK_Banners_Products]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Accounts]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Accounts]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers] FOREIGN KEY([AnsweredAccountId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_AspNetUsers]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Promotions]  WITH CHECK ADD  CONSTRAINT [FK_Promotions_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Promotions] CHECK CONSTRAINT [FK_Promotions_Products]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Accounts]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Products]
GO
USE [master]
GO
ALTER DATABASE [MStore] SET  READ_WRITE 
GO
