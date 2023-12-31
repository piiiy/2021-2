USE [master]
GO
/****** Object:  Database [user30]    Script Date: 23.09.2023 10:25:17 ******/
CREATE DATABASE [user30]
GO
USE [user30]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[AgentId] [int] IDENTITY(1,1) NOT NULL,
	[AgentName] [nvarchar](50) NOT NULL,
	[AgentTypeId] [int] NOT NULL,
	[LegalAddress] [nvarchar](100) NOT NULL,
	[INN] [nvarchar](20) NOT NULL,
	[KPP] [nvarchar](50) NOT NULL,
	[ManagerFIO] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Logo] [nvarchar](100) NULL,
	[Priority] [smallint] NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentPoint]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentPoint](
	[PointId] [int] IDENTITY(1,1) NOT NULL,
	[PointName] [nvarchar](1000) NOT NULL,
	[Address] [nvarchar](1000) NOT NULL,
	[AgentId] [int] NOT NULL,
 CONSTRAINT [PK_Points] PRIMARY KEY CLUSTERED 
(
	[PointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[AgentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AgentTypeName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[AgentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Door]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Door](
	[DoorId] [int] IDENTITY(1,1) NOT NULL,
	[DoorPlace] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Doors] PRIMARY KEY CLUSTERED 
(
	[DoorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](100) NOT NULL,
	[MaterialTypeId] [int] NOT NULL,
	[CountInPack] [float] NOT NULL,
	[UnitTypeId] [int] NOT NULL,
	[MinimalCount] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Image] [nvarchar](50) NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupplier]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupplier](
	[MaterialSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_MaterialSuppliers] PRIMARY KEY CLUSTERED 
(
	[MaterialSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MaterialTypes] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialWarehouse]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialWarehouse](
	[MaterialWarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[OperationTypeId] [int] NOT NULL,
	[OperationDate] [datetime] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_MaterialWarehouse] PRIMARY KEY CLUSTERED 
(
	[MaterialWarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationType](
	[OperationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[OperationTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_OperationTypes] PRIMARY KEY CLUSTERED 
(
	[OperationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[DateOfFormation] [datetime] NULL,
	[DateOfPrepayment] [datetime] NULL,
	[IsActive] [bit] NULL,
	[DateOfPayment] [datetime] NULL,
	[AgentId] [int] NOT NULL,
	[SellDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderProductId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Sell] PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceHistory]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceHistory](
	[PriceHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[MinimalPrice] [float] NOT NULL,
	[AcceptanceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AgentProducts] PRIMARY KEY CLUSTERED 
(
	[PriceHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriorityHistory]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriorityHistory](
	[PriorityHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_PriorityHistory] PRIMARY KEY CLUSTERED 
(
	[PriorityHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Artikul] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Image] [nvarchar](50) NULL,
	[Length] [float] NULL,
	[Height] [float] NULL,
	[Width] [float] NULL,
	[Netto] [float] NULL,
	[Brutto] [float] NULL,
	[Certificate] [nvarchar](50) NULL,
	[StandartNum] [nvarchar](100) NULL,
	[PeopleCount] [int] NOT NULL,
	[WorkshopId] [int] NOT NULL,
	[ProductionTime] [int] NULL,
	[MinimalPrice] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[ProductMaterialId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ProductMaterials] PRIMARY KEY CLUSTERED 
(
	[ProductMaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellHistory]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellHistory](
	[SellHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[AgentId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_SellHistories] PRIMARY KEY CLUSTERED 
(
	[SellHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[SpecialityId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialityName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Specialities] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](100) NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[SupplierTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierType](
	[SupplierTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SupplierTypes] PRIMARY KEY CLUSTERED 
(
	[SupplierTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnitType]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitType](
	[UnitTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UnitTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UnitTypes] PRIMARY KEY CLUSTERED 
(
	[UnitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[WorkerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[DateBirth] [date] NOT NULL,
	[PassportSeries] [int] NOT NULL,
	[PassportNumber] [int] NOT NULL,
	[PassportInfo] [nvarchar](1000) NOT NULL,
	[BankAccount] [nvarchar](1000) NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[FamilyInfo] [nvarchar](1000) NULL,
	[HealthyInfo] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[WorkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkerDoor]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerDoor](
	[WorkerDoorId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[DoorId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_WorkerDoors] PRIMARY KEY CLUSTERED 
(
	[WorkerDoorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkerWorkshop]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerWorkshop](
	[WorkerWorkshopId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[WorkshopId] [int] NOT NULL,
	[WorkShift] [int] NOT NULL,
 CONSTRAINT [PK_WorkerWorkshops] PRIMARY KEY CLUSTERED 
(
	[WorkerWorkshopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workshop]    Script Date: 23.09.2023 10:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workshop](
	[WorkshopId] [int] IDENTITY(1,1) NOT NULL,
	[WorkshopName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Workshops] PRIMARY KEY CLUSTERED 
(
	[WorkshopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (1, N'МонтажОрионУрал', 1, N'027573, Тамбовская область, город Коломна, ул. Ленина, 20', N'1692286718', N'181380912', N'Давыдоваа Нина Евгеньевна', N'(35222) 67-39-26', N'pzaitev@blokin.org', N'agent_96.png', 50)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (2, N'МетизСтрой', 1, N'254238, Нижегородская область, город Павловский Посад, проезд Балканская, 23', N'4024742936', N'295608432', N'Ева Борисовна Беспалова', N' 8-800-172-62-56', N'kristina.pakomov@burova.ru', N'agent_94.png', 374)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (3, N'РадиоСевер', 2, N'491360, Московская область, город Одинцово, въезд Ленина, 19', N'5889206249', N'372789083', N'Карпов Иосиф Максимович', N'(495) 368-86-51', N'maiy.belov@rogov.ru', N'agent_123.png', 431)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (4, N'Компания КазАлмаз', 3, N'848810, Кемеровская область, город Лотошино, пер. Ломоносова, 90', N'3084797352', N'123190924', N'Марк Фёдорович Муравьёва', N'8-800-533-24-75', N'irina.gusina@vlasova.ru', N'agent_80.png', 396)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (5, N'Компания СервисРадиоГор', 3, N'547196, Ульяновская область, город Серебряные Пруды, въезд Балканская, 81', N'8880473721', N'729975116', N'Попов Вадим Александрович', N' 8-800-676-32-86', N'nika.nekrasova@kovalev.ru', N'agent_40.png', 169)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (6, N'ВодТверьХозМашина', 4, N'145030, Сахалинская область, город Шатура, въезд Гоголя, 79', N'4174253174', N'522227145', N'Александра Дмитриевна Ждановаа', N' +7 (922) 849-91-96', N'tkrylov@baranova.net', N'agent_56.png', 8)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (7, N'Тех', 2, N'731935, Калининградская область, город Павловский Посад, наб. Гагарина, 59', N'9282924869', N'587356429', N'Аким Романович Логинова', N'+7 (922) 427-13-31', N'vasilisa99@belyev.ru', N'agent_61.png', 278)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (8, N'ТверьМетизУралСнос', 3, N'880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', N'1076095397', N'947828491', N'Зоя Андреевна Соболева', N'(35222) 57-92-75', N'rlazareva@novikov.ru', N'agent_109.png', 165)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (9, N'МясРеч', 4, N'903648, Калужская область, город Воскресенск, пр. Будапештсткая, 91', N'9254261217', N'656363498', N'Белоусоваа Ирина Максимовна', N'8-800-453-63-45', N'bkozlov@volkov.ru', N'agent_58.png', 355)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (10, N'Флот', 4, N'505562, Тюменская область, город Наро-Фоминск, пр. Косиора, 11', N'1112170258', N'382584255', N'Василий Андреевич Ковалёв', N'8-800-144-25-38', N'gerasim.makarov@kornilov.ru', N'agent_87.png', 473)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (11, N'CибПивОмскСнаб', 4, N'816260, Ивановская область, город Москва, ул. Гагарина, 31', N'5676173945', N'256512286', N'Людмила Александровна Сафонова', N'+7 (922) 153-95-22', N'evorontova@potapova.ru', N'agent_46.png', 477)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (12, N'ЦементАсбоцемент', 4, N'619540, Курская область, город Раменское, пл. Балканская, 12', N'4345774724', N'352469905', N'Воронова Мария Александровна', N' (495) 184-87-92', N'polykov.veronika@artemeva.ru', NULL, 426)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (13, N'ТелеГлавВекторСбыт', 4, N'062489, Челябинская область, город Пушкино, въезд Бухарестская, 07', N'9504787157', N'419758597', N'Екатерина Фёдоровна Ковалёва', N'(35222) 56-15-37', N'nsitnikov@kovaleva.ru', N'agent_31.png', 185)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (14, N'Инфо', 2, N'100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', N'6549468639', N'718386757', N'Баранова Виктор Романович', N'8-800-793-59-97', N'arsenii.mikailova@prokorov.com', N'agent_89.png', 304)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (15, N'ЭлектроРемОрионЛизинг', 4, N'594365, Ярославская область, город Павловский Посад, бульвар Космонавтов, 64', N'1340072597', N'500478249', N'Тарасова Дан Львович', N'(495) 519-97-41', N'anfisa.fedotova@tvetkov.ru', N'agent_68.png', 198)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (16, N'Компания ТелекомХмельГаражПром', 3, N'126668, Ростовская область, город Зарайск, наб. Гагарина, 69', N'1614623826', N'824882264', N'Костина Татьяна Борисовна', N'(812) 983-91-73', N'qkolesnikova@kalinina.ru', N'agent_71.png', 457)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (17, N'Компания Алмаз', 3, N'016215, Воронежская область, город Зарайск, ул. Косиора, 48', N'6698862694', N'662876919', N'Фоминаа Лариса Романовна', N'+7 (922) 688-74-22', N'akalinina@zaitev.ru', N'agent_121.png', 259)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (18, N'МясТрансМоторЛизинг', 2, N'765320, Ивановская область, город Шатура, спуск Гоголя, 88', N'6148685143', N'196332656', N'Тамара Дмитриевна Семёноваа', N' +7 (922) 676-34-94', N'vlad.sokolov@andreev.org', N'agent_62.png', 268)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (19, N'Монтаж', 5, N'066594, Магаданская область, город Шаховская, спуск Сталина, 59', N'6142194281', N'154457435', N'Блохина Сергей Максимович', N'(495) 867-76-15', N'zakar.sazonova@gavrilov.ru', NULL, 300)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (20, N'ВостокГлав', 3, N'217022, Ростовская область, город Озёры, ул. Домодедовская, 19', N'3580946305', N'405017349', N'Инга Фёдоровна Дмитриева', N'(812) 949-29-26', N'gordei95@kirillov.ru', N'agent_63.png', 107)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (21, N'Газ', 5, N'252821, Тамбовская область, город Пушкино, ул. Чехова, 40', N'8876413796', N'955381891', N'Терентьев Илларион Максимович', N'(35222) 22-45-58', N'ulyna.antonov@noskov.ru', N'agent_76.png', 170)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (22, N'ЭлектроТранс', 2, N'434616, Калининградская область, город Павловский Посад, пл. Ладыгина, 83', N'6019144874', N'450629885', N'Сава Александрович Титова', N' (812) 342-24-31', N'boleslav.zukova@nikiforova.com', N'agent_91.png', 129)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (23, N'Электро', 2, N'966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', N'7896029866', N'786038848', N'Шарапова Елена Дмитриевна', N' 8-800-714-36-41', N'likacev.makar@antonov.ru', N'agent_93.png', 366)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (24, N'Гор', 1, N'376483, Калужская область, город Сергиев Посад, ул. Славы, 09', N'7088187045', N'440309946', N'Нонна Львовна Одинцоваа', N'(495) 973-48-55', N'maiy12@koklov.net', N'agent_52.png', 175)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (25, N'Компания Гараж', 3, N'395101, Белгородская область, город Балашиха, бульвар 1905 года, 00', N'6190244524', N'399106161', N'Владлена Фёдоровна Ларионоваа', N'+7 (922) 848-38-54', N'asiryeva@andreeva.com', N'agent_66.png', 413)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (26, N'ОрионГлав', 6, N'729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', N'9032455179', N'763045792', N'Тимофеева Григорий Андреевич', N' +7 (922) 684-13-74', N'sermakova@sarova.net', N'agent_106.png', 482)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (27, N'ГлавITФлотПроф', 5, N'447811, Мурманская область, город Егорьевск, ул. Ленина, 24', N'2561361494', N'525678825', N'Зыкова Стефан Максимович', N' (812) 146-66-46', N'savva.rybov@kolobov.ru', N'agent_64.png', 62)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (28, N'ТверьМонтажОмск', 6, N'761751, Амурская область, город Балашиха, шоссе Гоголя, 02', N'2421347164', N'157370604', N'Матвей Романович Большакова', N'8-800-363-43-86', N'dteterina@selezneva.ru', N'agent_128.png', 272)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (29, N'РемСантехОмскБанк', 2, N'289468, Омская область, город Видное, пер. Балканская, 33', N'6823050572', N'176488617', N'Фокина Искра Максимовна', N' (812) 182-44-77', N'anisimov.mark@vorobev.ru', N'agent_57.png', 442)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (30, N'ЭлектроМоторТрансСнос', 2, N'913777, Самарская область, город Красногорск, ул. Бухарестская, 49', N'6608362851', N'799760512', N'Людмила Евгеньевна Новиковаа', N' (35222) 43-62-19', N'inessa.voronov@sidorova.ru', NULL, 151)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (31, N'ТверьХозМорСбыт', 1, N'252101, Ростовская область, город Дорохово, пер. Ленина, 85', N'6681338084', N'460530907', N'Аким Львович Субботина', N'(495) 416-75-67', N'marina58@koroleva.com', N'agent_117.png', 207)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (32, N'Компания ТомскХоз', 3, N'861543, Томская область, город Истра, бульвар Славы, 42', N'8430391035', N'961540858', N'Лазарева Аркадий Сергеевич', N' +7 (922) 849-13-37', N'nelli11@gureva.ru', N'agent_115.png', 464)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (33, N'Компания МясДизайнДизайн', 3, N'557264, Брянская область, город Серпухов, въезд Гоголя, 34', N'8004989990', N'908629456', N'Клементина Сергеевна Стрелкова', N' (812) 535-17-25', N'gleb.gulyev@belyeva.com', N'agent_53.png', 491)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (34, N'Компания ЖелДорТверьМонтаж', 3, N'152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', N'3325722996', N'665766347', N'Нестор Максимович Гуляев', N'(495) 521-61-75', N'burova.zlata@zueva.ru', N'agent_85.png', 2)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (35, N'МетизТехАвтоПроф', 3, N'713016, Брянская область, город Подольск, пл. Домодедовская, 93', N'2988890076', N'215491048', N'Егор Фёдорович Третьякова', N' (495) 581-42-46', N'anastasiy.gromov@samsonova.com', N'agent_33.png', 321)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (36, N'Гараж', 5, N'585758, Самарская область, город Красногорск, бульвар Балканская, 13', N'2638464552', N'746822723', N'Панфилов Константин Максимович', N'(35222) 54-72-59', N'antonin51@korolev.com', N'agent_90.png', 107)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (37, N'ГазДизайнЖелДор', 1, N'695230, Курская область, город Красногорск, пр. Гоголя, 64', N'2396029740', N'458924890', N'Лев Иванович Третьяков', N'(495) 797-97-33', N'elizaveta.komarov@rybakov.net', N'agent_49.png', 236)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (38, N'РемГаражЛифт', 2, N'048715, Ивановская область, город Люберцы, проезд Космонавтов, 89', N'1656477206', N'988968838', N'Филатов Владимир Максимович', N' 8-800-772-27-53', N'novikova.gleb@sestakov.ru', N'agent_65.png', 374)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (39, N'СантехБашкир', 5, N'180288, Тверская область, город Одинцово, ул. Бухарестская, 37', N'4159215346', N'639267493', N'Виктор Иванович Молчанов', N' +7 (922) 155-87-39', N'nikodim81@kiseleva.com', N'agent_99.png', 369)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (40, N'ЮпитерЛенГараж-М', 1, N'339507, Московская область, город Видное, ул. Космонавтов, 11', N'2038393690', N'259672761', N'Васильева Валерия Борисовна', N'(495) 327-58-25', N'larkipova@gorbunov.ru', N'agent_48.png', 470)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (41, N'ОрионСофтВодСнос', 4, N'577227, Калужская область, город Павловский Посад, наб. Чехова, 35', N'1522348613', N'977738715', N'Мухина Ян Фёдорович', N'(35222) 59-75-11', N'isukanov@sobolev.com', N'agent_97.png', 361)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (42, N'КазХоз', 2, N'384162, Астраханская область, город Одинцово, бульвар Гагарина, 57', N'6503377671', N'232279972', N'Степанова Роман Иванович', N'+7 (922) 728-85-62', N'istrelkova@fomin.ru', NULL, 213)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (43, N'БухВжух', 6, N'481744, Амурская область, город Щёлково, пл. Сталина, 48', N'2320989197', N'359282667', N'Тарасов Болеслав Александрович', N'(495) 367-21-41', N'valentina.bolsakova@aksenova.ru', NULL, 327)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (44, N'ХозЮпитер', 2, N'038182, Курганская область, город Москва, спуск Космонавтов, 16', N'6667635058', N'380592865', N'Максимоваа Вера Фёдоровна', N'+7 (922) 332-48-96', N'jisakova@nazarova.com', N'agent_114.png', 375)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (45, N'ВостокКазРыб', 5, N'059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', N'7411284960', N'176779733', N'Самсонов Родион Романович', N' (495) 987-31-63', N'flukin@misin.org', N'agent_112.png', 361)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (46, N'ЦементКрепТех-М', 4, N'263764, Свердловская область, город Раменское, пер. Косиора, 28', N'5359981084', N'680416300', N'Сергеев Владлен Александрович', N' (812) 838-79-58', N'yna.evdokimov@gordeeva.ru', N'agent_82.png', 189)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (47, N'Строй', 5, N'763019, Омская область, город Шатура, пл. Сталина, 56', N'6678884759', N'279288618', N'Кудрявцев Адриан Андреевич', N'(812) 447-45-59', N'soloveva.adam@andreev.ru', NULL, 12)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (48, N'БашкирЮпитерТомск', 4, N'035268, Сахалинская область, город Волоколамск, проезд Ладыгина, 51', N'1606315697', N'217799345', N'Фадеева Раиса Александровна', N'(812) 189-59-57', N'dyckov.veniamin@kotova.ru', N'agent_59.png', 139)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (49, N'Компания КазМеталКазань', 3, N'532703, Пензенская область, город Чехов, наб. Чехова, 81', N'4598939812', N'303467543', N'Валерий Владимирович Хохлова', N'(495) 685-34-29', N'mmoiseev@teterin.ru', N'agent_130.png', 252)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (50, N'Компания Газ', 3, N'310403, Кировская область, город Солнечногорск, пл. Балканская, 76', N'2262431140', N'247369527', N'Давид Андреевич Фадеев', N' (35222) 75-96-85', N'alina56@zdanov.com', N'agent_120.png', 445)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (51, N'Компания Монтаж', 3, N'036381, Брянская область, город Кашира, бульвар Гагарина, 76', N'6206428565', N'118570048', N'Силин Даниил Иванович', N' (35222) 92-45-98', N'afanasev.anastasiy@muravev.ru', N'agent_75.png', 124)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (52, N'СервисХмельМонтаж', 4, N'928260, Нижегородская область, город Балашиха, пл. Косиора, 44', N'3459886235', N'356196105', N'Анжелика Дмитриевна Горбунова', N'+7 (922) 344-73-38', N'galina31@melnikov.ru', N'agent_92.png', 124)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (53, N'ВодГараж', 2, N'988899, Саратовская область, город Раменское, пр. Славы, 40', N'5575072431', N'684290320', N'Лаврентий Фёдорович Логинова', N'+7 (922) 363-86-67', N'pmaslov@fomiceva.com', N'agent_67.png', 250)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (54, N'CибГаз', 1, N'365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', N'6483417250', N'455013058', N'Вячеслав Романович Третьякова', N'(495) 945-37-25', N'inna.sarova@panfilov.ru', N'agent_103.png', 488)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (55, N'БашкирФлотМотор-H', 1, N'008081, Тюменская область, город Ногинск, въезд Гагарина, 94', N'1657476072', N'934931159', N'Марат Алексеевич Фролов', N' (495) 793-84-82', N'morozova.nika@kazakova.ru', N'agent_36.png', 416)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (56, N'МеталСервисМор', 6, N'293265, Иркутская область, город Клин, пр. Славы, 12', N'6922817841', N'580142825', N'Коновалова Кирилл Львович', N'(35222) 91-28-62', N'xdanilov@titov.ru', NULL, 475)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (57, N'Рем', 4, N'707812, Иркутская область, город Шаховская, ул. Гагарина, 17', N'3203830728', N'456254820', N'Шароваа Елизавета Львовна', N' (495) 987-88-53', N'zanna25@nikiforova.com', N'agent_79.png', 329)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (58, N'СантехСеверЛенМашина', 3, N'606990, Новосибирская область, город Павловский Посад, въезд Домодедовская, 38', N'3506691089', N'830713603', N'Павел Максимович Рожков', N'(812) 918-88-43', N'pgorbacev@vasilev.net', N'agent_74.png', 201)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (59, N'Цемент', 3, N'084315, Амурская область, город Шаховская, наб. Чехова, 62', N'9662118663', N'650216214', N'Анфиса Фёдоровна Буроваа', N'8-800-517-78-47', N'panova.klementina@bobrov.ru', N'agent_54.png', 340)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (60, N'Вод', 4, N'964386, Оренбургская область, город Чехов, пл. Косиора, 80', N'1296063939', N'447430051', N'Зоя Романовна Селезнёва', N'(495) 142-19-84', N'savva86@zaiteva.ru', N'agent_129.png', 359)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (61, N'Орион', 6, N'951035, Ивановская область, город Ступино, шоссе Космонавтов, 73', N'2670166502', N'716874456', N'Мартынов Михаил Борисович', N'8-800-621-61-93', N'aleksei63@kiselev.ru', N'agent_77.png', 166)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (62, N'СтройГорНефть', 2, N'444539, Ульяновская область, город Лотошино, спуск Будапештсткая, 95', N'5916775587', N'398299418', N'Тарасова Макар Максимович', N' (812) 385-21-37', N'lysy.kolesnikova@molcanova.com', N'agent_37.png', 161)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (63, N'Компания Хмель', 3, N'889757, Новосибирская область, город Раменское, бульвар 1905 года, 93', N'9004087602', N'297273898', N'Владимир Борисович Суворова', N' (812) 421-77-82', N'ermakov.mark@isakova.ru', NULL, 2)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (64, N'Компания ВодАлмазIT', 3, N'302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', N'2345297765', N'908449277', N'Гуляев Егор Евгеньевич', N'(35222) 52-76-16', N'zakar37@nikolaeva.ru', N'agent_111.png', 31)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (65, N'БашкирРечТомск', 6, N'136886, Амурская область, город Видное, въезд Космонавтов, 39', N'7027724917', N'823811460', N'Назарова Вера Андреевна', N'8-800-254-71-85', N'aleksandra77@karpov.com', N'agent_100.png', 84)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (66, N'СофтРосБух', 4, N'747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', N'8321561226', N'807803984', N'Белова Полина Владимировна', N'+7 (922) 445-69-17', N'ivanova.antonin@rodionov.ru', N'agent_124.png', 69)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (67, N'ТелекомЮпитер', 1, N'959793, Курская область, город Егорьевск, бульвар Ленина, 72', N'9383182378', N'944520594', N'Калинина Татьяна Ивановна', N'(812) 895-67-23', N'kulikov.adrian@zuravlev.org', N'agent_81.png', 302)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (68, N'УралСтройХмель', 4, N'462632, Костромская область, город Шаховская, шоссе Сталина, 92', N'8773558039', N'402502867', N'Август Борисович Красильникова', N'(35222) 39-23-65', N'aleksandr95@kolobova.ru', N'agent_113.png', 372)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (69, N'АсбоцементТехАвто', 5, N'304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', N'7626076463', N'579234124', N'Сидорова Любовь Ивановна', N'+7 (922) 977-68-84', N'matveev.yliy@kiseleva.ru', N'agent_110.png', 247)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (70, N'Компания ФинансСервис', 3, N'841700, Брянская область, город Серпухов, спуск Домодедовская, 35', N'7491491391', N'673621812', N'Клавдия Сергеевна Виноградова', N'(812) 878-42-71', N'robert.serbakov@safonova.ru', N'agent_38.png', 395)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (71, N'Софт', 2, N'453714, Смоленская область, город Одинцово, спуск Косиора, 84', N'3889910123', N'952047511', N'Петухова Прохор Фёдорович', N'(35222) 12-82-65', N'jterentev@ersov.com', N'agent_122.png', 292)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (72, N'ТелекомГор', 2, N'210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', N'3748947224', N'766431901', N'Ксения Андреевна Михайлова', N'(35222) 78-93-21', N'gorskov.larisa@kalinin.com', N'agent_98.png', 255)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (73, N'РемСтрем', 6, N'373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', N'9006569852', N'152177100', N'Альбина Александровна Романова', N' (35222) 55-28-24', N'rafail96@sukin.ru', N'agent_116.png', 88)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (74, N'Лифт', 3, N'479565, Курганская область, город Клин, пл. Ленина, 54', N'6169713039', N'848972934', N'Вера Евгеньевна Денисоваа', N' (812) 484-92-38', N'zinaida01@bespalova.ru', N'agent_101.png', 92)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (75, N'Компания МоторТелекомЦемент-М', 3, N'021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', N'7326832482', N'440199498', N'Иван Евгеньевич Белоусова', N'(812) 857-95-57', N'larisa44@silin.org', N'agent_118.png', 237)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (76, N'ЮпитерТяжОрионЭкспедиция', 2, N'960726, Томская область, город Орехово-Зуево, въезд 1905 года, 51', N'6843174002', N'935556458', N'Валерий Евгеньевич Виноградов', N' (35222) 95-63-65', N'gblokin@orlov.net', N'agent_44.png', 446)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (77, N'Транс', 5, N'508299, Кемеровская область, город Кашира, пер. Гагарина, 42', N'9604275878', N'951258069', N'Евсеева Болеслав Сергеевич', N'8-800-954-23-89', N'artem.fadeev@polykov.com', N'agent_127.png', 38)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (78, N'РемВод', 2, N'449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', N'3986603105', N'811373078', N'Медведеваа Ярослава Фёдоровна', N'+7 (922) 353-31-72', N'komarov.elizaveta@agafonova.ru', N'agent_126.png', 1)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (79, N'АсбоцементЛифтРеч-H', 6, N'599158, Ростовская область, город Озёры, ул. Космонавтов, 05', N'6567878928', N'560960507', N'Кондратьева Таисия Андреевна', N'(495) 245-57-16', N'vladlena58@seliverstova.ru', N'agent_105.png', 407)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (80, N'РосАвтоМонтаж', 3, N'331914, Курская область, город Ногинск, спуск Ладыгина, 66', N'4735043946', N'263682488', N'Диана Алексеевна Исаковаа', N'(495) 445-97-76', N'lapin.inessa@isaeva.com', N'agent_55.png', 10)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (81, N'Компания СервисТелеМотор', 3, N'625988, Вологодская область, город Озёры, пр. Гоголя, 18', N'3248454160', N'138472695', N'Фролова Эдуард Борисович', N' +7 (922) 461-25-29', N'veronika.egorov@bespalova.com', N'agent_102.png', 81)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (82, N'ФинансТелеТверь', 6, N'687171, Томская область, город Лотошино, пл. Славы, 59', N'2646091050', N'971874277', N'Зайцеваа Дарья Сергеевна', N'(812) 115-56-93', N'medvedev.klim@afanasev.com', N'agent_45.png', 100)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (83, N'ВодГор', 2, N'265653, Калужская область, город Ступино, шоссе Гоголя, 89', N'4463113470', N'899603778', N'Фаина Фёдоровна Филиппова', N' (35222) 73-72-16', N'tvetkova.robert@sorokin.com', N'agent_125.png', 72)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (84, N'ТяжРадиоУралПроф', 2, N'521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', N'5688533246', N'401535045', N'София Алексеевна Мухина', N'+7 (922) 885-66-15', N'liliy62@grisina.ru', N'agent_88.png', 278)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (85, N'ГаражЛофт', 2, N'294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', N'2816939574', N'754741128', N'Клавдия Фёдоровна Кудряшова', N'(495) 427-55-66', N'lydmila.belyeva@karpov.ru', N'agent_108.png', 335)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (86, N'ITСтройАлмаз', 2, N'361730, Костромская область, город Волоколамск, шоссе Славы, 36', N'7689065648', N'456612755', N'Алексеева Валериан Андреевич', N'8-800-185-78-91', N'fokin.eduard@samoilov.com', N'agent_83.png', 159)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (87, N'Асбоцемент', 3, N'030119, Курганская область, город Дмитров, пер. Славы, 47', N'1261407459', N'745921890', N'Никитинаа Антонина Андреевна', N' 8-800-211-16-23', N'antonin19@panfilov.ru', N'agent_34.png', 273)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (88, N'ТекстильУралАвтоОпт', 4, N'028936, Магаданская область, город Видное, ул. Гагарина, 54', N'3930950057', N'678529397', N'Алина Сергеевна Дьячковаа', N' (35222) 98-76-54', N'hkononova@pavlova.ru', NULL, 176)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (89, N'Компания КрепЦемент', 3, N'423477, Мурманская область, город Кашира, бульвар Домодедовская, 61', N'3025099903', N'606083992', N'Екатерина Львовна Суворова', N' (812) 963-77-87', N'rusakov.efim@nikiforov.ru', N'agent_50.png', 426)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (90, N'КазаньТекстиль', 2, N'231891, Челябинская область, город Шатура, бульвар Ладыгина, 40', N'4584384019', N'149680499', N'Александров Бронислав Максимович', N'(35222) 86-74-21', N'osimonova@andreeva.com', N'agent_47.png', 156)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (91, N'КазЮпитерТомск', 2, N'393450, Тульская область, город Кашира, пр. 1905 года, 47', N'9201745524', N'510248846', N'Рафаил Андреевич Копылов', N'+7 (922) 772-33-58', N'tgavrilov@frolov.ru', N'agent_60.png', 244)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (92, N'Бух', 5, N'409600, Новгородская область, город Ногинск, пл. Гагарина, 68', N'1953785418', N'122905583', N'Татьяна Сергеевна Королёваа', N' +7 (922) 375-49-21', N'belova.vikentii@konstantinova.net', N'agent_78.png', 82)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (93, N'Радио', 6, N'798718, Ленинградская область, город Пушкино, бульвар Балканская, 37', N'9077613654', N'657690787', N'Эмма Андреевна Колесникова', N'8-800-897-32-78', N'rtretykova@kozlov.ru', N'agent_43.png', 221)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (94, N'Креп', 4, N'336489, Калининградская область, город Можайск, наб. Славы, 35', N'4880732317', N'258673591', N'Назар Алексеевич Григорьева', N' (495) 217-46-29', N'savina.dominika@belousova.com', N'agent_39.png', 371)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (95, N'Мобайл', 2, N'606703, Амурская область, город Чехов, пл. Будапештсткая, 91', N'7803888520', N'885703265', N'Екатерина Сергеевна Бобылёва', N'8-800-618-73-37', N'dsiryev@dementeva.com', N'agent_107.png', 464)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (96, N'CибБашкирТекстиль', 1, N'429540, Мурманская область, город Воскресенск, пл. Славы, 36', N'7392007090', N'576103661', N'Григорий Владимирович Елисеева', N'(495) 285-78-38', N'vzimina@zdanova.com', N'agent_69.png', 218)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (97, N'МеталТекстильЛифтТрест', 1, N'786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', N'2971553297', N'821859486', N'Одинцов Назар Борисович', N'(812) 753-96-76', N'muravev.trofim@sazonov.net', N'agent_86.png', 425)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (98, N'ОрионТомскТех', 6, N'738763, Курская область, город Егорьевск, спуск Чехова, 66', N'9351493429', N'583041591', N'Георгий Александрович Лукин', N'+7 (922) 542-89-15', N'faina.tikonova@veselov.com', N'agent_119.png', 73)
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (99, N'ЖелДорДизайнМетизТраст', 6, N'170549, Сахалинская область, город Видное, проезд Космонавтов, 89', N'7669116841', N'906390137', N'Игорь Львович Агафонова', N'(812) 123-63-47', N'lnikitina@kulikova.com', NULL, 290)
GO
INSERT [dbo].[Agent] ([AgentId], [AgentName], [AgentTypeId], [LegalAddress], [INN], [KPP], [ManagerFIO], [Phone], [Email], [Logo], [Priority]) VALUES (100, N'БухМясМоторПром', 2, N'677498, Костромская область, город Зарайск, спуск Славы, 59', N'7377410338', N'592041317', N'Нина Дмитриевна Черноваа', N'(35222) 83-23-59', N'varvara49@savin.ru', N'agent_95.png', 158)
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[AgentType] ON 

INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (1, N'МКК')
INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (2, N'ОАО')
INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (3, N'ООО')
INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (4, N'ЗАО')
INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (5, N'МФО')
INSERT [dbo].[AgentType] ([AgentTypeId], [AgentTypeName]) VALUES (6, N'ПАО')
SET IDENTITY_INSERT [dbo].[AgentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (1, N'Вата серый 1x1', 1, 7, 1, 34, NULL, NULL, 9)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (2, N'Ткань белый 2x2', 2, 10, 1, 18, NULL, NULL, 3742)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (3, N'Металлический стержень белый 0x2', 3, 9, 2, 12, NULL, NULL, 633)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (4, N'Силикон серый 1x1', 4, 2, 1, 12, NULL, NULL, 2343)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (5, N'Силикон белый 0x3', 4, 8, 2, 17, NULL, NULL, 12097)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (6, N'Силикон белый 1x3', 4, 4, 2, 46, NULL, NULL, 13550)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (7, N'Ткань серый 0x3', 2, 10, 1, 17, NULL, NULL, 15210)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (8, N'Резинка зеленый 1x0', 5, 8, 2, 9, NULL, NULL, 2616)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (9, N'Металлический стержень белый 2x2', 3, 9, 1, 36, NULL, NULL, 6753)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (10, N'Ткань синий 3x3', 2, 5, 1, 39, NULL, NULL, 32910)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (11, N'Ткань белый 3x2', 2, 9, 1, 25, NULL, NULL, 782)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (12, N'Вата розовый 1x0', 1, 3, 1, 32, NULL, NULL, 5776)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (13, N'Вата серый 3x2', 1, 5, 2, 40, NULL, NULL, 20453)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (14, N'Ткань розовый 0x0', 2, 3, 1, 29, NULL, NULL, 41101)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (15, N'Металлический стержень цветной 3x1', 3, 4, 1, 49, NULL, NULL, 55742)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (16, N'Резинка синий 1x0', 5, 3, 2, 11, NULL, NULL, 1407)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (17, N'Металлический стержень цветной 1x2', 3, 8, 1, 26, NULL, NULL, 6137)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (18, N'Ткань цветной 2x1', 2, 2, 1, 34, NULL, NULL, 15628)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (19, N'Силикон белый 2x0', 4, 10, 1, 38, NULL, NULL, 2538)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (20, N'Силикон зеленый 3x1', 4, 2, 1, 46, NULL, NULL, 7312)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (21, N'Вата серый 3x3', 1, 1, 2, 12, NULL, NULL, 19528)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (22, N'Вата белый 2x0', 1, 8, 2, 49, NULL, NULL, 38432)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (23, N'Вата розовый 3x1', 1, 3, 2, 41, NULL, NULL, 4015)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (24, N'Ткань синий 2x0', 2, 4, 1, 16, NULL, NULL, 19507)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (25, N'Металлический стержень зеленый 2x2', 3, 4, 1, 34, NULL, NULL, 32205)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (26, N'Резинка зеленый 0x0', 5, 7, 1, 19, NULL, NULL, 2640)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (27, N'Ткань синий 0x2', 2, 8, 2, 21, NULL, NULL, 27338)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (28, N'Ткань зеленый 2x2', 2, 4, 1, 7, NULL, NULL, 5083)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (29, N'Металлический стержень синий 0x1', 3, 9, 1, 20, NULL, NULL, 9715)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (30, N'Резинка белый 3x3', 5, 1, 1, 26, NULL, NULL, 5230)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (31, N'Резинка зеленый 3x0', 5, 10, 2, 40, NULL, NULL, 41227)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (32, N'Ткань белый 1x3', 2, 8, 1, 9, NULL, NULL, 8232)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (33, N'Силикон цветной 1x0', 4, 10, 1, 28, NULL, NULL, 4664)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (34, N'Силикон зеленый 0x3', 4, 9, 2, 35, NULL, NULL, 24117)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (35, N'Вата серый 0x1', 1, 8, 1, 38, NULL, NULL, 2948)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (36, N'Металлический стержень белый 3x1', 3, 9, 1, 30, NULL, NULL, 136)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (37, N'Резинка синий 3x1', 5, 4, 2, 36, NULL, NULL, 36016)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (38, N'Металлический стержень синий 3x1', 3, 6, 1, 24, NULL, NULL, 6976)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (39, N'Силикон белый 1x2', 4, 2, 1, 30, NULL, NULL, 33801)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (40, N'Резинка цветной 1x1', 5, 8, 1, 13, NULL, NULL, 26244)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (41, N'Силикон розовый 1x3', 4, 9, 1, 25, NULL, NULL, 3874)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (42, N'Резинка синий 3x2', 5, 5, 1, 31, NULL, NULL, 4031)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (43, N'Резинка розовый 1x0', 5, 1, 1, 21, NULL, NULL, 6574)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (44, N'Резинка зеленый 0x3', 5, 8, 2, 17, NULL, NULL, 5349)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (45, N'Резинка цветной 0x1', 5, 8, 1, 32, NULL, NULL, 47198)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (46, N'Вата розовый 3x3', 1, 10, 1, 31, NULL, NULL, 2517)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (47, N'Резинка цветной 0x2', 5, 10, 1, 31, NULL, NULL, 55495)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (48, N'Вата серый 3x0', 1, 8, 2, 32, NULL, NULL, 49181)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (49, N'Резинка серый 3x3', 5, 4, 1, 8, NULL, NULL, 51550)
INSERT [dbo].[Material] ([MaterialId], [MaterialName], [MaterialTypeId], [CountInPack], [UnitTypeId], [MinimalCount], [Description], [Image], [Price]) VALUES (50, N'Резинка серый 0x0', 5, 7, 1, 20, NULL, NULL, 3414)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName]) VALUES (1, N' Вата')
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName]) VALUES (2, N' Ткань')
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName]) VALUES (3, N' Стержень')
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName]) VALUES (4, N' Силикон')
INSERT [dbo].[MaterialType] ([MaterialTypeId], [MaterialTypeName]) VALUES (5, N' Резинка')
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (1, N'59922', N'Полумаска "Moon" (Элипс) P3', 1, NULL, N'5fb128cd1e2b9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, 2690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (2, N'5028556', N'Повязка санитарно–гигиеническая многоразовая с лог', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, NULL, 49)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (3, N'5028272', N'Повязка санитарно–гигиеническая многоразовая черна', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 59)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (4, N'5028247', N'Маска одноразовая трехслойная из нетканого материа', 2, NULL, N'5fb128cc69235.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, 6)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (5, N'5028229', N'Повязка санитарно–гигиеническая многоразовая с при', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 49)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (6, N'5030981', N'Маска из нетканого материала KN95', 3, NULL, N'5fb128cc719a6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 59)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (7, N'5029784', N'Маска из нетканого материала с клапаном KN95', 3, NULL, N'5fb128cc753e3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 79)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (8, N'58953', N'Респиратор У-2К', 3, NULL, N'5fb128cc7941f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 6, NULL, 95)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (9, N'5026662', N'Респиратор 9101 FFP1', 4, NULL, N'5fb128cc7d798.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 8, NULL, 189)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (10, N'59043', N'Респиратор противоаэрозольный 9312', 4, NULL, N'5fb128cc80a10.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 7, NULL, 399)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (11, N'58376', N'Респиратор 3M 8112 противоаэрозольный с клапаном в', 4, NULL, N'5fb128cc84474.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 299)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (12, N'58375', N'Респиратор 3M 8101 противоаэрозольный', 4, NULL, N'5fb128cc87b90.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 149)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (13, N'59324', N'Респиратор "Алина" 110', 4, NULL, N'5fb128cc8b750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (14, N'58827', N'Респиратор "Алина" 100', 4, NULL, N'5fb128cc8f4dd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 99)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (15, N'59898', N'Респиратор "Нева" 109', 4, NULL, N'5fb128cc9414b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (16, N'59474', N'Респиратор "Юлия" 109', 4, NULL, N'5fb128cc97ff4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (17, N'59472', N'Респиратор "Юлия" 119', 4, NULL, N'5fb128cc9bd36.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 7, NULL, 149)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (18, N'5033136', N'Респиратор 3M с клапаном 9162', 4, NULL, N'5fb128cc9f069.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 349)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (19, N'5028048', N'Респиратор 3M 9152 FFP2', 4, NULL, N'5fb128cca31d9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 390)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (20, N'58796', N'Респиратор противоаэрозольный 9322', 4, NULL, N'5fb128cca6910.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 449)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (21, N'58568', N'Респиратор с клапаном 9926', 4, NULL, N'5fb128cca9d9b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 699)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (22, N'58466', N'Респиратор 3M 8102 противоаэрозольный', 4, NULL, N'5fb128ccae21a.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 199)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (23, N'58445', N'Респиратор 3M 8122', 4, NULL, N'5fb128ccb1958.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 299)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (24, N'5031919', N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', 4, NULL, N'5fb128ccb4e8c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 349)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (25, N'5030026', N'Респиратор RK6021', 4, NULL, N'5fb128ccb97a0.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 8, NULL, 290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (26, N'5030020', N'Респиратор RK6020', 4, NULL, N'5fb128ccbd227.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (27, N'5030072', N'Респиратор Алина 210', 4, NULL, N'5fb128ccc1592.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (28, N'5030062', N'Респиратор Алина 211', 4, NULL, N'5fb128ccc4a86.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, 290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (29, N'58826', N'Респиратор "Алина" 200', 4, NULL, N'5fb128ccc9a9e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, NULL, 149)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (30, N'58825', N'Респиратор "Алина" П', 4, NULL, N'5fb128cccdbee.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, NULL, 290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (31, N'58584', N'Респиратор "Алина" АВ', 4, NULL, N'5fb128ccd133c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5, NULL, 249)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (32, N'59736', N'Респиратор "Нева" 210', 4, NULL, N'5fb128ccd5dc2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 109)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (33, N'59735', N'Респиратор "Нева" 200', 4, NULL, N'5fb128ccd8ff6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 79)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (34, N'5027238', N'Респиратор полумаска НРЗ-0102 FFP2 NR D', 4, NULL, N'5fb128ccdca1e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 149)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (35, N'59475', N'Респиратор "Юлия" 219', 4, NULL, N'5fb128cce0042.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 249)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (36, N'59473', N'Респиратор "Юлия" 215', 4, NULL, N'5fb128cce39fa.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 349)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (37, N'59470', N'Респиратор "Юлия" 209', 4, NULL, N'5fb128cce7971.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 179)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (38, N'5031924', N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', 4, NULL, N'5fb128cceae7c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL, 490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (39, N'5030022', N'Респиратор RK6030', 4, NULL, N'5fb128ccef256.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 390)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (40, N'58850', N'Респиратор "Алина" 310', 4, NULL, N'5fb128ccf3dd2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 6, NULL, 490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (41, N'59739', N'Респиратор "Нева" 310', 4, NULL, N'5fb128cd0544b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, 289)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (42, N'59471', N'Респиратор "Юлия" 319', 4, NULL, N'5fb128cd08e3f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (43, N'5027980', N'Полумаска "Elipse" (Элипс) ABEK1P3', 4, NULL, N'5fb128cd0d0b1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 4990)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (44, N'5027965', N'Полумаска "Elipse" (Элипс) A2P3', 1, NULL, N'5fb128cd10ec2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 4490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (45, N'5027958', N'Полумаска "Elipse" (Элипс) А1', 1, NULL, N'5fb128cd157f9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 3190)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (46, N'59923', N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', 1, NULL, N'5fb128cd19baa.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 2790)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (47, N'59922', N'Полумаска "Elipse" (Элипс) P3', 1, NULL, N'5fb128cd1e2b9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, 2690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (48, N'59921', N'Полумаска "Elipse" (Элипс) A1P3', 1, NULL, N'5fb128cd2215f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 5690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (49, N'59920', N'Полумаска "Elipse" (Элипс) ABEK1', 1, NULL, N'5fb128cd268bf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 5690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (50, N'58974', N'Респиратор-полумаска "3М" серия 6000', 1, NULL, N'5fb128cd2ab69.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, NULL, 3490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (51, N'59334', N'Респиратор-полумаска Исток 300/400', 1, NULL, N'5fb128cd2ef7a.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 7, NULL, 490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (52, N'4969295', N'Комплект для защиты дыхания J-SET 6500 JETA', 1, NULL, N'5fb128cd331c4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 2490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (53, N'5029610', N'Лицевая маска Elipse Integra А1P3', 1, NULL, N'5fb128cd3674d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, NULL, 9890)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (54, N'5029091', N'Лицевая маска Elipse Integra P3', 5, NULL, N'5fb128cd3af5c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, NULL, 7490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (55, N'60360', N'Лицевая маска Elipse Integra (Элипс интегра) P3 (а', 5, NULL, N'5fb128cd3e7e4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 7590)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (56, N'4958042', N'Полнолицевая маска 5950 JETA', 5, NULL, N'5fb128cd41ece.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 11490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (57, N'59271', N'Сменный патрон с фильтром 6054 для масок и полумас', 6, NULL, N'5fb128cd4672c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 1890)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (58, N'59253', N'Сменный патрон с фильтром 6059 для масок и полумас', 7, NULL, N'5fb128cd4c99d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 2290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (59, N'5028197', N'Сменный фильтр 6510 A1 JETA', 7, NULL, N'5fb128cd50a70.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, NULL, 990)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (60, N'5027978', N'Запасные фильтры к полумаске Elipse ABEK1P3', 7, NULL, N'5fb128cd5433e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 6, NULL, 2990)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (61, N'5027961', N'Запасные фильтры к полумаске Elipse A2P3', 8, NULL, N'5fb128cd5838d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, NULL, 2590)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (62, N'5027921', N'Запасные фильтры к полумаске Elipse (Элипс) А1', 8, NULL, N'5fb128cd5bb7d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 4, NULL, 1290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (63, N'4958040', N'Сменный фильтр 6541 ABEK1 JETA', 7, NULL, N'5fb128cd5ff78.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 6, NULL, 1290)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (64, N'59919', N'Запасные фильтры к полумаске "Elipse" (Элипс) P3 (', 8, NULL, N'5fb128cd63666.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, 1690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (65, N'59918', N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', 8, NULL, N'5fb128cd66df6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 7, NULL, 1390)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (66, N'59917', N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', 8, NULL, N'5fb128cd6a2b6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 2190)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (67, N'59916', N'Запасные фильтры к полумаске "Elipse" (Элипс) ABEK', 8, NULL, N'5fb128cd6e4ee.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 10, NULL, 2590)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (68, N'59708', N'Запасные фильтры (пара) АВЕ1 к полумаскам "Адванте', 8, NULL, N'5fb128cd71db3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, 1490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (69, N'67661', N'Запасной фильтр к полумаске Исток-300 (РПГ-67) мар', 8, NULL, N'5fb128cd7518c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, NULL, 110)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (70, N'67660', N'Запасной фильтр к полумаске Исток-300 (РПГ-67) мар', 8, NULL, N'5fb128cd78fce.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, 110)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (71, N'4958041', N'Держатель предфильтра 5101 JETA', 8, NULL, N'5fb128cd7d2cd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 199)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (72, N'58431', N'Держатели предфильтра для масок и полумасок "3М" с', 9, NULL, N'5fb128cd80a06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 264)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (73, N'4958039', N'Предфильтр Р2 (4 шт) 6020 JETA', 9, NULL, N'5fb128cd8417e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7, NULL, 380)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (74, N'58917', N'Предфильтры для масок и полумасок "3М" серии 6000', 10, NULL, N'5fb128cd8818d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, NULL, 409)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (75, N'59324', N'Респиратор "Мадонна" 110', 4, NULL, N'5fb128cc8b750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (76, N'58827', N'Респиратор "Витязь" 100', 4, NULL, N'5fb128cc8f4dd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 99)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (77, N'59898', N'Респиратор "Серёга" 109', 4, NULL, N'5fb128cc9414b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (78, N'59474', N'Респиратор "Амперметр" 109', 4, NULL, N'5fb128cc97ff4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (79, N'59324', N'Респиратор "Фирюза" 110', 4, NULL, N'5fb128cc8b750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (80, N'58827', N'Респиратор "Красный" 100', 4, NULL, N'5fb128cc8f4dd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 99)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (81, N'59898', N'Респиратор "Волга" 109', 4, NULL, N'5fb128cc9414b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (82, N'59474', N'Респиратор "Мадонна" 220', 4, NULL, N'5fb128cc97ff4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (83, N'59324', N'Респиратор "Витязь" 220', 4, NULL, N'5fb128cc8b750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (84, N'58827', N'Респиратор "Серёга" 220', 4, NULL, N'5fb128cc8f4dd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 99)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (85, N'59898', N'Респиратор "Амперметр" 220', 4, NULL, N'5fb128cc9414b.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (86, N'59474', N'Респиратор "Фирюза" 220', 4, NULL, N'5fb128cc97ff4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (87, N'59324', N'Респиратор "Красный" 220', 4, NULL, N'5fb128cc8b750.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 129)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (88, N'58827', N'Респиратор "Волга" 220', 4, NULL, N'5fb128cc8f4dd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 99)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (89, N'5027980', N'Полумаска "Sunset" ABEK1P3', 4, NULL, N'5fb128cd0d0b1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 4990)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (90, N'5027965', N'Полумаска "Sunset" A2P3', 1, NULL, N'5fb128cd10ec2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 4490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (91, N'5027958', N'Полумаска "Sunset" А1', 1, NULL, N'5fb128cd157f9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 3190)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (92, N'59923', N'Полумаска "Sunset" P3 (анти-запах)', 1, NULL, N'5fb128cd19baa.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 2790)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (93, N'59922', N'Полумаска "Sunset" (Элипс) P3', 1, NULL, N'5fb128cd1e2b9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 4, NULL, 2690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (94, N'59921', N'Полумаска "Sunset" A1P3', 1, NULL, N'5fb128cd2215f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, NULL, 5690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (95, N'59920', N'Полумаска "Sunset" ABEK1', 1, NULL, N'5fb128cd268bf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 5690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (96, N'59920', N'Полумаска "Moon" ABEK1', 1, NULL, N'5fb128cd268bf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, NULL, 5690)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (97, N'5027980', N'Полумаска "Moon" ABEK1P3', 4, NULL, N'5fb128cd0d0b1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, 4990)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (98, N'5027965', N'Полумаска "Moon" A2P3', 1, NULL, N'5fb128cd10ec2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 4490)
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (99, N'5027958', N'Полумаска "Moon" А1', 1, NULL, N'5fb128cd157f9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, NULL, 3190)
GO
INSERT [dbo].[Product] ([ProductId], [Artikul], [ProductName], [ProductTypeId], [Description], [Image], [Length], [Height], [Width], [Netto], [Brutto], [Certificate], [StandartNum], [PeopleCount], [WorkshopId], [ProductionTime], [MinimalPrice]) VALUES (100, N'59923', N'Полумаска "Moon" P3 (анти-запах)', 1, NULL, N'5fb128cd19baa.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, NULL, 2790)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterial] ON 

INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (1, 31, 43, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (2, 29, 30, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (3, 4, 30, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (4, 46, 21, 18)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (5, 6, 21, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (6, 6, 43, 15)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (7, 30, 21, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (8, 5, 20, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (9, 49, 20, 13)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (10, 6, 20, 5)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (11, 42, 20, 12)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (12, 37, 4, 15)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (13, 10, 23, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (14, 23, 12, 12)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (15, 33, 16, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (16, 3, 14, 18)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (17, 31, 14, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (18, 25, 14, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (19, 5, 14, 18)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (20, 29, 16, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (21, 44, 14, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (22, 30, 23, 13)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (23, 37, 16, 6)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (24, 24, 6, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (25, 2, 15, 16)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (26, 44, 24, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (27, 22, 37, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (28, 49, 6, 15)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (29, 43, 37, 17)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (30, 12, 6, 3)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (31, 13, 25, 1)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (32, 5, 28, 14)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (33, 25, 6, 10)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (34, 21, 49, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (35, 33, 6, 13)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (36, 35, 15, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (37, 38, 49, 3)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (38, 11, 42, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (39, 38, 13, 13)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (40, 40, 42, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (41, 32, 38, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (42, 23, 38, 15)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (43, 24, 26, 5)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (44, 28, 1, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (45, 35, 50, 17)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (46, 8, 26, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (47, 50, 50, 17)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (48, 2, 35, 5)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (49, 4, 8, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (50, 16, 27, 18)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (51, 10, 44, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (52, 16, 32, 8)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (53, 36, 8, 1)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (54, 9, 45, 14)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (55, 9, 32, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (56, 3, 45, 11)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (57, 18, 48, 11)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (58, 45, 45, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (59, 5, 22, 11)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (60, 48, 27, 16)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (61, 12, 17, 1)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (62, 30, 27, 1)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (63, 49, 35, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (64, 36, 11, 1)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (65, 23, 36, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (66, 24, 29, 5)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (67, 37, 29, 6)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (68, 38, 3, 10)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (69, 1, 3, 12)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (70, 25, 36, 7)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (71, 27, 29, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (72, 29, 36, 16)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (73, 20, 41, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (74, 30, 36, 18)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (75, 1, 41, 10)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (76, 44, 29, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (77, 3, 3, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (78, 10, 29, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (79, 13, 34, 9)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (80, 15, 9, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (81, 17, 11, 3)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (82, 36, 3, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (83, 22, 11, 14)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (84, 6, 31, 19)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (85, 41, 19, 17)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (86, 41, 31, 16)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (87, 5, 7, 7)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (88, 23, 33, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (89, 3, 31, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (90, 22, 2, 12)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (91, 15, 7, 4)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (92, 12, 47, 3)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (93, 26, 7, 10)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (94, 10, 7, 8)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (95, 48, 33, 16)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (96, 48, 46, 3)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (97, 35, 47, 2)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (98, 39, 7, 20)
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (99, 39, 31, 1)
GO
INSERT [dbo].[ProductMaterial] ([ProductMaterialId], [ProductId], [MaterialId], [Count]) VALUES (100, 40, 2, 8)
SET IDENTITY_INSERT [dbo].[ProductMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (1, N'Полумаски')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (2, N'Повязки')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (3, N'Маски')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (4, N'Респираторы')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (5, N'На лицо')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (6, N'Полнолицевые')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (7, N'Сменные части')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (8, N'Запасные части')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (9, N'Держители')
INSERT [dbo].[ProductType] ([ProductTypeId], [ProductTypeName]) VALUES (10, N'Предфильтры')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitType] ON 

INSERT [dbo].[UnitType] ([UnitTypeId], [UnitTypeName]) VALUES (1, N' м')
INSERT [dbo].[UnitType] ([UnitTypeId], [UnitTypeName]) VALUES (2, N' кг')
SET IDENTITY_INSERT [dbo].[UnitType] OFF
GO
SET IDENTITY_INSERT [dbo].[Workshop] ON 

INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (1, N'1')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (2, N'2')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (3, N'3')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (4, N'4')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (5, N'5')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (6, N'6')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (7, N'7')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (8, N'8')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (9, N'9')
INSERT [dbo].[Workshop] ([WorkshopId], [WorkshopName]) VALUES (10, N'10')
SET IDENTITY_INSERT [dbo].[Workshop] OFF
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agents_AgentTypes] FOREIGN KEY([AgentTypeId])
REFERENCES [dbo].[AgentType] ([AgentTypeId])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agents_AgentTypes]
GO
ALTER TABLE [dbo].[AgentPoint]  WITH CHECK ADD  CONSTRAINT [FK_AgentPoints_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[AgentPoint] CHECK CONSTRAINT [FK_AgentPoints_Agents]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialTypes] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[MaterialType] ([MaterialTypeId])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Materials_MaterialTypes]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Materials_UnitTypes] FOREIGN KEY([UnitTypeId])
REFERENCES [dbo].[UnitType] ([UnitTypeId])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Materials_UnitTypes]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSuppliers_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([MaterialId])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSuppliers_Materials]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSuppliers_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSuppliers_Suppliers]
GO
ALTER TABLE [dbo].[MaterialWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MaterialWarehouse_Materials1] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([MaterialId])
GO
ALTER TABLE [dbo].[MaterialWarehouse] CHECK CONSTRAINT [FK_MaterialWarehouse_Materials1]
GO
ALTER TABLE [dbo].[MaterialWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_MaterialWarehouse_OperationTypes] FOREIGN KEY([OperationTypeId])
REFERENCES [dbo].[OperationType] ([OperationTypeId])
GO
ALTER TABLE [dbo].[MaterialWarehouse] CHECK CONSTRAINT [FK_MaterialWarehouse_OperationTypes]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Orders_Agents]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProducts_Products]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_Sell_Orders]
GO
ALTER TABLE [dbo].[PriceHistory]  WITH CHECK ADD  CONSTRAINT [FK_AgentProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[PriceHistory] CHECK CONSTRAINT [FK_AgentProducts_Products]
GO
ALTER TABLE [dbo].[PriorityHistory]  WITH CHECK ADD  CONSTRAINT [FK_PriorityHistories_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[PriorityHistory] CHECK CONSTRAINT [FK_PriorityHistories_Agents]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductType] ([ProductTypeId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_ProductTypes]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_Workshops] FOREIGN KEY([WorkshopId])
REFERENCES [dbo].[Workshop] ([WorkshopId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_Workshops]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([MaterialId])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterials_Materials]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterials_Products]
GO
ALTER TABLE [dbo].[SellHistory]  WITH CHECK ADD  CONSTRAINT [FK_SellHistories_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agent] ([AgentId])
GO
ALTER TABLE [dbo].[SellHistory] CHECK CONSTRAINT [FK_SellHistories_Agents]
GO
ALTER TABLE [dbo].[SellHistory]  WITH CHECK ADD  CONSTRAINT [FK_SellHistories_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[SellHistory] CHECK CONSTRAINT [FK_SellHistories_Products]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_SupplierTypes] FOREIGN KEY([SupplierTypeId])
REFERENCES [dbo].[SupplierType] ([SupplierTypeId])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Suppliers_SupplierTypes]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Specialities] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Workers_Specialities]
GO
ALTER TABLE [dbo].[WorkerDoor]  WITH CHECK ADD  CONSTRAINT [FK_WorkerDoors_Doors] FOREIGN KEY([DoorId])
REFERENCES [dbo].[Door] ([DoorId])
GO
ALTER TABLE [dbo].[WorkerDoor] CHECK CONSTRAINT [FK_WorkerDoors_Doors]
GO
ALTER TABLE [dbo].[WorkerDoor]  WITH CHECK ADD  CONSTRAINT [FK_WorkerDoors_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([WorkerId])
GO
ALTER TABLE [dbo].[WorkerDoor] CHECK CONSTRAINT [FK_WorkerDoors_Worker]
GO
ALTER TABLE [dbo].[WorkerWorkshop]  WITH CHECK ADD  CONSTRAINT [FK_WorkerWorkshops_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([WorkerId])
GO
ALTER TABLE [dbo].[WorkerWorkshop] CHECK CONSTRAINT [FK_WorkerWorkshops_Worker]
GO
ALTER TABLE [dbo].[WorkerWorkshop]  WITH CHECK ADD  CONSTRAINT [FK_WorkerWorkshops_Workshops] FOREIGN KEY([WorkshopId])
REFERENCES [dbo].[Workshop] ([WorkshopId])
GO
ALTER TABLE [dbo].[WorkerWorkshop] CHECK CONSTRAINT [FK_WorkerWorkshops_Workshops]
GO
USE [master]
GO
ALTER DATABASE [user30] SET  READ_WRITE 
GO
