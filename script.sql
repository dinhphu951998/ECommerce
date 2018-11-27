USE [master]
GO
/****** Object:  Database [MStore]    Script Date: 11/27/2018 1:24:01 PM ******/
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
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/27/2018 1:24:01 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/27/2018 1:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/27/2018 1:24:01 PM ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 11/27/2018 1:24:01 PM ******/
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
	[Message] [varchar](max) NULL,
	[AccountID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/27/2018 1:24:01 PM ******/
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
	[SaleOff] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/27/2018 1:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [varchar](50) NOT NULL,
	[AccountID] [varchar](50) NOT NULL,
	[DatePurchased] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/27/2018 1:24:01 PM ******/
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
	[Dimensions] [varchar](255) NULL,
	[Materials] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](255) NULL,
	[OtherInfo] [nvarchar](255) NULL,
	[Stock] [int] NOT NULL,
	[DateArrivals] [datetime] NOT NULL CONSTRAINT [DF_Products_DateArrivals]  DEFAULT (getdate()),
	[SaleOff] [float] NULL CONSTRAINT [DF_Products_SaleOff]  DEFAULT ((0)),
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 11/27/2018 1:24:01 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/27/2018 1:24:01 PM ******/
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
/****** Object:  Table [dbo].[Wishlist]    Script Date: 11/27/2018 1:24:01 PM ******/
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
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Clocks')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Furniture')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Lightning')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Bags')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Dimensions], [Materials], [Weight], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff]) VALUES (N'1', N'Maharam Shell Chair', 128, 2, N'shop/preview01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'Norway', N'120 x 75 x 90 cm', N'40% wood, 37% cotton, 23% plastic', N'2.65 kg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam hic totam, tempore quos dicta voluptate tempora ex voluptatum amet, veniam assumenda magnam eveniet eius reiciendis, ab necessitatibus quis iure libero.

Alias commodi aspernatur quo illo dolor voluptatem animi ipsum laudantium similique blanditiis, molestias facilis vitae harum minima obcaecati corrupti quibusdam minus modi.', N'Quisque rutrum eu sapien in viverra. Quisque id consectetur tellus. Etiam in lacus ut lorem vehicula vehicula non et felis. Integer quis solis.', N'Repellendus ea laudantium pariatur eum.', 10, CAST(N'2018-11-26 13:09:44.393' AS DateTime), 0)
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'US', N'User')
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_SaleOff]  DEFAULT ((0)) FOR [SaleOff]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_DatePurchased]  DEFAULT (getdate()) FOR [DatePurchased]
GO
ALTER TABLE [dbo].[Promotions] ADD  CONSTRAINT [DF_Promotions_Time]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles1]
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
