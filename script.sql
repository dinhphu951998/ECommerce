USE [master]
GO
/****** Object:  Database [MStore]    Script Date: 11/30/2018 8:35:05 PM ******/
CREATE DATABASE [MStore]
GO
USE [MStore]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Banners]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2018 8:35:05 PM ******/
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
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Messages]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Promotions]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/30/2018 8:35:05 PM ******/
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
/****** Object:  Table [dbo].[Wishlist]    Script Date: 11/30/2018 8:35:05 PM ******/
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
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'datlp', N'Le', N'Phat', N'Dat', NULL, N'123', NULL, N'Sieu cap dep trai', N'AD')
INSERT [dbo].[Accounts] ([Id], [FirstName], [LastName], [Email], [Phone], [Password], [Address], [Image], [RoleID]) VALUES (N'thanhphonui', N'Thanh', N'Da Ga', N'thichdaga@gmail.com', N'0123456789', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', N'Gia Lai', N'Shit', N'AD')
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (1, N'1', N'hero-slider/01.jpg')
INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (2, N'5', N'hero-slider/02.jpg')
INSERT [dbo].[Banners] ([Id], [ProductID], [Image]) VALUES (4, N'4', N'hero-slider/03.jpg')
SET IDENTITY_INSERT [dbo].[Banners] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10]) VALUES (1, N'Clocks', N'Size', N'Gender', N'Origin', N'Machine Type
', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10]) VALUES (2, N'Furniture', N'Dimensions', N'Weight', N'Materials', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10]) VALUES (3, N'Lightning', N'Performance', N'Model', N'Voltage', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10]) VALUES (4, N'Bags', N'Size', N'Gender', N'Materials', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [AttName1], [AttName2], [AttName3], [AttName4], [AttName5], [AttName6], [AttName7], [AttName8], [AttName9], [AttName10]) VALUES (5, N'Mobile Phone', N'Camera', N'Colors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1', N'1', 2, 1000, 0.1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1', N'2', 1, 200, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'1', N'3', 1, 20, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'2', N'2', 1, 200, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'1', 4, 700, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'2', 1, 50, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'3', 2, 200, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'5', 5, 1999, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'6', 6, 800, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'7', 1, 56, 0)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [Price], [SaleOff]) VALUES (N'3', N'8', 5, 780, 0)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'1', N'thanhphonui', CAST(N'2018-11-30 14:29:23.060' AS DateTime), N'1', 1000, N'Thanh du ga', N'0123', NULL, NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'2', N'datlp', CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'1', 1000, N'Phat Dat Dep Trai', N'123', NULL, NULL)
INSERT [dbo].[Orders] ([ID], [AccountID], [DatePurchased], [Status], [Total], [Name], [Phone], [Address], [Email]) VALUES (N'3', N'datlp', CAST(N'2018-11-21 00:00:00.000' AS DateTime), N'1', 1000, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'1', N'Maharam Shell Chair', 128, 2, N'shop/th01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'shop/preview01.jpg', N'Norway', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam hic totam, tempore quos dicta voluptate tempora ex voluptatum amet, veniam assumenda magnam eveniet eius reiciendis, ab necessitatibus quis iure libero.

Alias commodi aspernatur quo illo dolor voluptatem animi ipsum laudantium similique blanditiis, molestias facilis vitae harum minima obcaecati corrupti quibusdam minus modi.', N'Quisque rutrum eu sapien in viverra. Quisque id consectetur tellus. Etiam in lacus ut lorem vehicula vehicula non et felis. Integer quis solis.', N'Repellendus ea laudantium pariatur eum.', 10, CAST(N'2018-11-26 13:09:44.393' AS DateTime), 0.3, N'120 x 75 x 90 cm', N'2.65 kg
', N'40% wood, 37% cotton, 23% plastic', N'Blue, Creme, Orange, Red', NULL, NULL, NULL, NULL, NULL, NULL, 20, 5)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'2', N'Citizen BE9170-56A', 3515, 1, N'shop/th01.jpg', N'shop/preview02.jpg', N'shop/preview02.jpg', N'shop/preview02.jpg', N'Citizen', NULL, NULL, NULL, 20, CAST(N'2018-11-29 10:39:10.800' AS DateTime), 0.15, N'39 mm', N'Male', N'Japan', N'Quartz', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'3', N'Iphone', 1000, 5, N'shop/th02.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'Apple', N'a', N'a', N'a', 100, CAST(N'2018-11-28 00:00:00.000' AS DateTime), 0.4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'4', N'Samsung ', 900, 5, N'shop/th03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'Samsung ', N'b', N'b', N'b', 100, CAST(N'2018-11-29 20:49:27.133' AS DateTime), 0.05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 4)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'5', N'Oppo', 800, 5, N'shop/th04.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'shop/preview03.jpg', N'Oppo', N'c', N'c', N'c', 100, CAST(N'2018-11-29 00:00:00.000' AS DateTime), 0.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'6', N'Ipad', 1000, 5, N'shop/th05.jpg', NULL, NULL, NULL, N'a', N'a', N'a', N'a', 100, CAST(N'2018-11-30 12:03:11.580' AS DateTime), 0.1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 5)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'7', N'Ipod', 200, 3, N'shop/th06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, CAST(N'2018-11-30 12:03:56.457' AS DateTime), 0.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'8', N'Ipid', 100, 4, N'shop/th07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, CAST(N'2018-11-30 12:04:20.270' AS DateTime), 0.3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Manufacturer], [Description], [ShortDescription], [OtherInfo], [Stock], [DateArrivals], [SaleOff], [AttVal1], [AttVal2], [AttVal3], [AttVal4], [AttVal5], [AttVal6], [AttVal7], [AttVal8], [AttVal9], [AttVal10], [RatingScore], [NumOfRates]) VALUES (N'9', N'Book', 1080, 1, N'shop/th01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, CAST(N'2018-11-30 12:15:15.990' AS DateTime), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2)
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'AD', N'Admin')
INSERT [dbo].[Roles] ([ID], [RoleName]) VALUES (N'US', N'User')
ALTER TABLE [dbo].[Promotions] ADD  CONSTRAINT [DF_Promotions_Time]  DEFAULT (getdate()) FOR [StartTime]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles1]
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
