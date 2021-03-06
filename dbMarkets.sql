USE [dbMarkets]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](10) NULL,
	[Active] [bit] NOT NULL,
	[Avatar] [nvarchar](255) NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertisements]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisements](
	[AdvertisementsID] [int] IDENTITY(1,1) NOT NULL,
	[SubTitle] [nvarchar](150) NULL,
	[Title] [nvarchar](150) NULL,
	[ImageBG] [nvarchar](250) NULL,
	[ImageProduct] [nvarchar](250) NULL,
	[UrlLink] [nvarchar](250) NULL,
	[Active] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_QuangCaos] PRIMARY KEY CLUSTERED 
(
	[AdvertisementsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesPrices]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesPrices](
	[AttributesPriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AttributesPrices] PRIMARY KEY CLUSTERED 
(
	[AttributesPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NOT NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[SchemaMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Parent] [int] NULL,
	[Levels] [int] NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](100) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[SContents] [nvarchar](255) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Published] [bit] NOT NULL,
	[Alias] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[Author] [nvarchar](255) NULL,
	[AccountID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[isHot] [bit] NOT NULL,
	[isNewfeed] [bit] NOT NULL,
	[Views] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblTinTucs] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Amount] [int] NULL,
	[Discount] [int] NULL,
	[TotalMoney] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Paid] [bit] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[TotalMoney] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](250) NULL,
	[Contents] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Published] [bit] NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Alias] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Ordering] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[Thumb] [nvarchar](255) NULL,
	[Video] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NOT NULL,
	[HomeFlag] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[Tags] [nvarchar](max) NULL,
	[Title] [nvarchar](255) NULL,
	[Alias] [nvarchar](255) NULL,
	[UnitsInStock] [int] NULL,
	[SupplierID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[ShipperName] [nvarchar](150) NULL,
	[Phone] [nchar](10) NULL,
	[Birthday] [datetime] NULL,
	[Email] [nchar](150) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[Avatar] [nvarchar](255) NULL,
	[ShipDate] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[EmailContact] [nchar](150) NULL,
	[Companyname] [nvarchar](255) NULL,
	[ContactTitle] [nvarchar](255) NULL,
	[Addresss] [nvarchar](255) NULL,
	[PostalCode] [nchar](15) NULL,
	[Fax] [nchar](20) NULL,
	[PaymentMethods] [nvarchar](150) NULL,
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[DiscountType] [nchar](10) NULL,
	[Notes] [nvarchar](max) NULL,
	[CurrentOrder] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Logo] [nvarchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK__Supplier__4BE66694AB596B6E] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 5/28/2022 12:07:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (1, N'094-2344-233', N'admin@gmail.com', N'123456', N'1         ', 1, N'test.jpg', N'lương viết bảo', 1, CAST(N'2022-05-27T23:05:08.647' AS DateTime), NULL)
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (3, N'094-2344-233', N'nhanvien', N'123', N'1         ', 0, NULL, N'test', 1, NULL, CAST(N'2022-03-26T23:13:40.510' AS DateTime))
INSERT [dbo].[Accounts] ([AccountID], [Phone], [Email], [Password], [Salt], [Active], [Avatar], [FullName], [RoleID], [LastLogin], [CreateDate]) VALUES (4, N'29192', N'0210210', N'12234', N'1         ', 1, NULL, N'test', 2, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-03-26T23:14:38.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Attributes] ON 

INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (1, N'Kg')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (2, N'Lít')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (3, N'390ml')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (4, N'gram')
INSERT [dbo].[Attributes] ([AttributeID], [Name]) VALUES (5, N'quả')
SET IDENTITY_INSERT [dbo].[Attributes] OFF
GO
SET IDENTITY_INSERT [dbo].[AttributesPrices] ON 

INSERT [dbo].[AttributesPrices] ([AttributesPriceID], [AttributeID], [ProductID], [Price], [Active]) VALUES (2, 1, 36, 220000, 1)
SET IDENTITY_INSERT [dbo].[AttributesPrices] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (3, N'Rau củ', N'Rau, củ', NULL, 1, 1, N'rau-cu.png', N'Danh mục rau củ', N'dn-rau-cu', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (4, N'Trái cây', N'Trái cây', NULL, 1, 1, N'trai-cay.png', N'Danh mục trái cây', N'trai-cay', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (5, N'Thịt/ Hải sản', N'Thịt', NULL, 1, 1, N'thit.png', N'Danh mục thịt', N'thit', NULL)
INSERT [dbo].[Categories] ([CatID], [CatName], [Description], [Levels], [Ordering], [Published], [Thumb], [Title], [Alias], [SchemaMarkup]) VALUES (1010, N'Bột lúa mì', N'Tổng hợp các sản phẩm thuộc Bột lúa mì', NULL, NULL, 1, N'bot-lua-mi.png', NULL, N'bot-lua-mi', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (2005, N'Aaaa', CAST(N'1996-05-03T00:00:00.000' AS DateTime), N'aaaa.png', N'test', N'bao1@gmail.com                                                                                                                                        ', N'1111111112', 7501, 7503, 7502, CAST(N'2022-05-01T14:22:51.783' AS DateTime), N'd01ef893a53dd7da8b1ba934e5dad4d6', N'yb$o}   ', CAST(N'2022-05-23T18:00:03.850' AS DateTime), 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (2006, N'Luong Viet Bao', CAST(N'2000-09-02T00:00:00.000' AS DateTime), N'luong-viet-bao.png', N'106/36 Nguyễn Lộ Trạch', N'bao@gmail.com                                                                                                                                         ', N'1111111111', 7501, 7503, 7504, CAST(N'2022-05-24T00:19:47.137' AS DateTime), N'f5ff609c117fbb45c646c43468cec01f', N'9&g[m   ', CAST(N'2022-05-24T00:59:03.373' AS DateTime), 1)
INSERT [dbo].[Customers] ([CustomerID], [FullName], [Birthday], [Avatar], [Address], [Email], [Phone], [LocationID], [District], [Ward], [CreateDate], [Password], [Salt], [LastLogin], [Active]) VALUES (2007, N'Test', CAST(N'2022-05-18T00:00:00.000' AS DateTime), N'test.jpg', N'106/36 Nguyễn Lộ Trạch', N'test1234@gmail.com                                                                                                                                    ', N'1111211111', 7501, 7503, 7504, CAST(N'2022-05-24T08:29:26.123' AS DateTime), N'bbfe7c45285628d9ac9c9513a07792ec', N'e@8d6   ', CAST(N'2022-05-24T09:14:44.157' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (603, N'Hà Nội', 1, 1, N'hanoi', N'1', 2)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7501, N'Huế', 1, 1, N'hue', N'Hue', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7502, N'Xuân Phú', 7510, 3, N'xuanphu', N'1', 2)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7503, N'Thành Phố Huê', 7501, 2, N'thanhphohue', N'1', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7504, N'Phường An Cựu', 7503, 3, N'phuongancu', N'1', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7505, N'A Lưới', 7501, 2, N'aluoi', N'Huyện A Lưới', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7506, N'test', 7510, 3, N'1', N'1', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7507, N'test', 1, 1, N'1', N'1', 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7508, N'test', 7501, NULL, N'test', N'quận test', 2)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7509, N'test', 7507, NULL, NULL, NULL, 1)
INSERT [dbo].[Locations] ([LocationID], [Name], [Parent], [Levels], [Slug], [NameWithType], [Type]) VALUES (7510, N'test', 7507, 2, N'test', N'quận test', 2)
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (65, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 1, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (66, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 1, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (67, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 1, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (68, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 1, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (69, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (70, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (71, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (72, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (73, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[News] ([PostID], [Title], [SContents], [Contents], [Thumb], [Published], [Alias], [CreatedDate], [Author], [AccountID], [Tags], [CatID], [isHot], [isNewfeed], [Views], [Active]) VALUES (74, N'asp.net core mvc', NULL, N'<p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Sự phân tâm của Elon Musk là một vấn đề rất đáng quan ngại”, nhà phân tích Dan Ives của Wedbush chia sẻ. Ông cho rằng Musk đang mất sự tập trung cho Tesla vì thương vụ thâu tóm Twitter gần đây.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Bằng chứng là tốc độ rớt giá cổ phiếu của Tesla ngày một tăng kể từ khi Elon Musk đề nghị mua đứt Twitter với giá&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">44 tỷ USD</abbr>&nbsp;vào tháng 4.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Chỉ 1 ngày sau khi thông tin này nổ ra, cổ phiếu hãng xe điện đã giảm 12,2% do các nhà đầu tư quan ngại Elon Musk có thể bán cổ phần để có tiền hoàn tất thương vụ với Twitter. Việc này đã khiến vốn hóa Tesla "bốc hơi"&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">126 tỷ USD</abbr>, chỉ còn&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">908 tỷ USD</abbr>, đồng thời làm giá trị tài sản của Elon Musk giảm&nbsp;<abbr class="rate-usd" style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">40 tỷ USD</abbr>.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">Tuy nhiên, phản đối điều này, Elon Musk cho biết ông vẫn tập trung cho Tesla.</p><p style="text-rendering: geometricprecision; outline: 0px; -webkit-font-smoothing: antialiased; margin: 18px 0px; padding: 0px; border: 0px; font-size: 17.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, serif;">“Tôi dành ít hơn 5% thời gian của mình cho thương vụ với Twitter. Tôi nghĩ đến Tesla 24/7”, Musk đăng tải trên Twitter kèm tấm hình meme ám chỉ ông bỏ bê Tesla và theo đuổi Twitter hôm 20/5.</p>', N'aspnet-core-mvc.jpg', 0, N'test', CAST(N'2022-05-23T23:56:10.877' AS DateTime), NULL, NULL, NULL, NULL, 1, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1012, 1012, 47, 1, 2, NULL, 40000, CAST(N'2022-05-22T17:10:27.703' AS DateTime), 20000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1013, 1013, 47, 1, 1, NULL, 20000, CAST(N'2022-05-23T00:35:14.967' AS DateTime), 20000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1014, 1014, 47, 1, 3, NULL, 60000, CAST(N'2022-05-24T00:42:37.683' AS DateTime), 20000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1015, 1015, 47, 1, 1, NULL, 20000, CAST(N'2022-05-24T08:39:11.550' AS DateTime), 20000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1016, 1016, 47, 1, 1, NULL, 20000, CAST(N'2022-05-24T09:16:14.613' AS DateTime), 20000)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Amount], [Discount], [TotalMoney], [CreateDate], [Price]) VALUES (1017, 1017, 47, 1, 1, NULL, 20000, CAST(N'2022-05-24T09:16:57.583' AS DateTime), 20000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1012, 2005, CAST(N'2022-05-22T17:10:27.610' AS DateTime), CAST(N'2022-05-24T09:19:59.290' AS DateTime), 15, 0, 0, NULL, 40000, 1, N'test', N'test', 7501, 7503, 7502)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1013, 2005, CAST(N'2022-05-23T00:35:14.900' AS DateTime), NULL, 14, 0, 0, NULL, 20000, 1, N'test', N'test', 7501, 7503, 7502)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1014, 2006, CAST(N'2022-05-24T00:42:37.590' AS DateTime), NULL, 14, 0, 0, NULL, 60000, 1, N'Giao vào giờ hành chính', N'106/36 Nguyễn Lộ Trạch', 7501, 7503, 7504)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1015, 2007, CAST(N'2022-05-24T08:39:11.467' AS DateTime), NULL, 14, 0, 0, NULL, 20000, 2, NULL, N'106/36 Nguyễn Lộ Trạch', 7501, 7503, 7504)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1016, 2007, CAST(N'2022-05-24T09:16:14.520' AS DateTime), NULL, 14, 0, 0, NULL, 20000, 3, NULL, N'106/36 Nguyễn Lộ Trạch', 7501, 7503, 7504)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [ShipDate], [TransactStatusID], [Deleted], [Paid], [PaymentDate], [TotalMoney], [PaymentID], [Note], [Address], [LocationID], [District], [Ward]) VALUES (1017, 2007, CAST(N'2022-05-24T09:16:57.580' AS DateTime), NULL, 14, 0, 0, NULL, 20000, 3, NULL, N'106/36 Nguyễn Lộ Trạch', 7501, 7503, 7504)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pages] ON 

INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [Alias], [CreatedDate], [Ordering], [Active]) VALUES (1, N'Hướng dẫn mua hàng', N'abc', N'huong-dan-mua-hang.jpg', 1, N'abc1111', N'abc', NULL, 1, NULL)
INSERT [dbo].[Pages] ([PageID], [PageName], [Contents], [Thumb], [Published], [Title], [Alias], [CreatedDate], [Ordering], [Active]) VALUES (2, N'test', N'<p>aaaaa</p>', N'default.jpg', 1, N'a', N'a', CAST(N'2022-04-01T00:07:35.760' AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Pages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (36, N'Thịt Bò', N'Thịt bò hảo hạn', NULL, 5, 15000, NULL, N'thit-bo.jpg', NULL, CAST(N'2022-05-15T11:35:02.497' AS DateTime), CAST(N'2022-05-15T11:35:02.387' AS DateTime), 0, 1, 1, N'ThitBo', NULL, N'thit-bo', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (37, N'Chuối', N'Chuối', NULL, 4, 30000, NULL, N'chuoi.jpg', NULL, CAST(N'2022-05-15T11:36:32.477' AS DateTime), CAST(N'2022-05-15T11:36:32.470' AS DateTime), 0, 1, 1, N'Chuoi', NULL, N'chuoi', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (39, N'Tôm', N'Tôm', NULL, 5, 70000, NULL, N'tom.jpg', NULL, CAST(N'2022-05-15T11:37:31.987' AS DateTime), CAST(N'2022-05-15T11:37:31.980' AS DateTime), 1, 1, 1, N'Tom', NULL, N'tom', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (40, N'Bơ', N'Bơ', NULL, 4, 50000, NULL, N'bo.jpg', NULL, CAST(N'2022-05-15T11:38:22.853' AS DateTime), CAST(N'2022-05-15T11:38:22.847' AS DateTime), 1, 1, 1, NULL, NULL, N'bo', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (42, N'Ớt Đỏ', N'Ớt đỏ', NULL, 3, 30000, NULL, N'ot-do.jpg', NULL, CAST(N'2022-05-22T15:14:01.450' AS DateTime), CAST(N'2022-05-22T15:14:01.377' AS DateTime), 0, 1, 1, NULL, NULL, N'ot-do', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (43, N'Dừa', N'Trái dừa', NULL, 4, 20000, NULL, N'dua.jpg', NULL, CAST(N'2022-05-22T15:14:38.600' AS DateTime), CAST(N'2022-05-22T15:14:38.590' AS DateTime), 0, 1, 1, NULL, NULL, N'dua', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (44, N'Đậu Hà Lan', N'Đậu hà lan', NULL, 1010, 20000, NULL, N'dau-ha-lan.jpg', NULL, CAST(N'2022-05-22T15:15:20.410' AS DateTime), CAST(N'2022-05-22T15:15:20.400' AS DateTime), 0, 1, 1, NULL, NULL, N'dau-ha-lan', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (45, N'Hành Tây', N'Hành tây', NULL, 3, 10000, NULL, N'hanh-tay.jpg', NULL, CAST(N'2022-05-22T15:15:58.060' AS DateTime), CAST(N'2022-05-22T15:15:58.057' AS DateTime), 0, 1, 1, NULL, NULL, N'hanh-tay', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (46, N'Đu Đủ', N'Trái Đu đủ', NULL, 4, 30000, NULL, N'du-du.jpg', NULL, CAST(N'2022-05-22T15:32:14.580' AS DateTime), CAST(N'2022-05-22T15:32:14.537' AS DateTime), 0, 1, 1, NULL, NULL, N'du-du', 50, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (47, N'Lựu Đỏ', N'Trái lựu đỏ', NULL, 4, 20000, NULL, N'luu-do.jpg', NULL, CAST(N'2022-05-22T15:32:45.437' AS DateTime), CAST(N'2022-05-22T15:32:45.430' AS DateTime), 0, 1, 1, NULL, NULL, N'luu-do', 100, NULL)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [Thumb], [Video], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [Tags], [Title], [Alias], [UnitsInStock], [SupplierID]) VALUES (48, N'Xoài', N'Trái xoài', NULL, 4, 30000, NULL, N'default.jpg', NULL, CAST(N'2022-05-22T23:54:38.080' AS DateTime), CAST(N'2022-05-22T23:54:38.003' AS DateTime), 0, 0, 0, NULL, NULL, N'xoai', 50, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (1, N'Admin', N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName], [Description]) VALUES (2, N'Staff', N'Nhân viên')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [AccountID], [EmailContact], [Companyname], [ContactTitle], [Addresss], [PostalCode], [Fax], [PaymentMethods], [LocationID], [District], [Ward], [DiscountType], [Notes], [CurrentOrder], [CreateDate], [Logo], [Active]) VALUES (1, NULL, NULL, N'Công ty a', N'', N'113 Nguyễn Huệ', N'123            ', N'123456              ', N'2', 7501, 1, 1, NULL, NULL, NULL, CAST(N'2022-05-23T13:34:28.823' AS DateTime), NULL, 1)
INSERT [dbo].[Suppliers] ([SupplierID], [AccountID], [EmailContact], [Companyname], [ContactTitle], [Addresss], [PostalCode], [Fax], [PaymentMethods], [LocationID], [District], [Ward], [DiscountType], [Notes], [CurrentOrder], [CreateDate], [Logo], [Active]) VALUES (2, NULL, NULL, N'Hệ thống rau xanh', NULL, N'265 Lê lợi', N'123            ', N'123456              ', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-23T13:43:21.757' AS DateTime), NULL, 1)
INSERT [dbo].[Suppliers] ([SupplierID], [AccountID], [EmailContact], [Companyname], [ContactTitle], [Addresss], [PostalCode], [Fax], [PaymentMethods], [LocationID], [District], [Ward], [DiscountType], [Notes], [CurrentOrder], [CreateDate], [Logo], [Active]) VALUES (3, NULL, NULL, N'Trái cây xanh', NULL, N'11 nguyễn Lộ Trạch', N'123            ', N'123456              ', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-23T13:45:05.497' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON 

INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (13, N'Chờ lấy hàng', N'Đã xác nhận và chuẩn bị hàng')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (14, N'Chờ xác nhận', N'Đang được người bán xác nhận với người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (15, N'Đang giao', N'Đơn hàng được giao tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (16, N'Đã giao thành công', N'Đơn hàng đã được giao thành công tới người mua')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (17, N'Đã hủy', N'Đơn hàng đã khách hàng được hủy thành công')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (18, N'Trả hàng', N'Đơn hàng đã được trả hàng thành công')
INSERT [dbo].[TransactStatus] ([TransactStatusID], [Status], [Description]) VALUES (1002, N'Đã từ chối', N'Đơn hàng được nhà cung cấp từ chối')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Advertisements] ADD  CONSTRAINT [DF_QuangCaos_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_TinDangs_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Pages] ADD  CONSTRAINT [DF_Pages_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Video]  DEFAULT (NULL) FOR [Video]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Attributes]
GO
ALTER TABLE [dbo].[AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_AttributesPrices_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AttributesPrices] CHECK CONSTRAINT [FK_AttributesPrices_Products]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Locations]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers1] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TransactStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Accounts]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Locations]
GO
