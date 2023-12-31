USE [master]
GO
/****** Object:  Database [BookingCarParkingManagement]    Script Date: 22-Aug-23 17:55:15 ******/
CREATE DATABASE [BookingCarParkingManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookingCarParkingManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SE150101\MSSQL\DATA\BookingCarParkingManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookingCarParkingManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SE150101\MSSQL\DATA\BookingCarParkingManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BookingCarParkingManagement] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookingCarParkingManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookingCarParkingManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookingCarParkingManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookingCarParkingManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookingCarParkingManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookingCarParkingManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookingCarParkingManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookingCarParkingManagement] SET  MULTI_USER 
GO
ALTER DATABASE [BookingCarParkingManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookingCarParkingManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookingCarParkingManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookingCarParkingManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookingCarParkingManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookingCarParkingManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookingCarParkingManagement', N'ON'
GO
ALTER DATABASE [BookingCarParkingManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [BookingCarParkingManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BookingCarParkingManagement]
GO
/****** Object:  Table [dbo].[Baixe]    Script Date: 22-Aug-23 17:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baixe](
	[BaixeID] [int] IDENTITY(1,1) NOT NULL,
	[BaixeName] [nvarchar](255) NULL,
	[TotalSlot] [int] NULL,
 CONSTRAINT [PK__Baixe__4A19ADE3DAA00527] PRIMARY KEY CLUSTERED 
(
	[BaixeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 22-Aug-23 17:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[SlotxeID] [int] NULL,
	[CarID] [int] NULL,
	[BookingTime] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Book__3DE0C227808A9B22] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 22-Aug-23 17:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[BSX] [varchar](20) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Car__68A0340EF6DC1333] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slotxe]    Script Date: 22-Aug-23 17:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slotxe](
	[SlotxeID] [int] IDENTITY(1,1) NOT NULL,
	[BaixeID] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Slotxe__323B5F477A40B373] PRIMARY KEY CLUSTERED 
(
	[SlotxeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22-Aug-23 17:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Role] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK__Users__1788CCACA6E8E77D] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Baixe] ON 

INSERT [dbo].[Baixe] ([BaixeID], [BaixeName], [TotalSlot]) VALUES (1, N'A01', 4)
INSERT [dbo].[Baixe] ([BaixeID], [BaixeName], [TotalSlot]) VALUES (2, N'B01', 4)
INSERT [dbo].[Baixe] ([BaixeID], [BaixeName], [TotalSlot]) VALUES (3, N'A02', 5)
INSERT [dbo].[Baixe] ([BaixeID], [BaixeName], [TotalSlot]) VALUES (4, N'A03', 2)
INSERT [dbo].[Baixe] ([BaixeID], [BaixeName], [TotalSlot]) VALUES (5, N'B02', 5)
SET IDENTITY_INSERT [dbo].[Baixe] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (2, 1, 1, CAST(N'2023-09-09T00:00:00.000' AS DateTime), CAST(N'2023-09-10T00:00:00.000' AS DateTime), CAST(N'2023-09-15T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (5, 2, 7, CAST(N'2024-05-24T00:00:00.000' AS DateTime), CAST(N'2023-06-24T00:00:00.000' AS DateTime), CAST(N'2024-09-24T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (6, 1, 1, CAST(N'2023-08-21T00:00:00.000' AS DateTime), CAST(N'2023-08-21T00:00:00.000' AS DateTime), CAST(N'2023-08-23T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (7, 3, 7, CAST(N'2023-08-22T00:00:00.000' AS DateTime), CAST(N'2023-08-22T08:00:00.000' AS DateTime), CAST(N'2023-08-22T21:30:00.000' AS DateTime), 1, 3)
INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (8, 4, 1, CAST(N'2023-08-23T00:00:00.000' AS DateTime), CAST(N'2023-08-23T05:00:00.000' AS DateTime), CAST(N'2023-08-25T10:30:00.000' AS DateTime), 0, 2)
INSERT [dbo].[Book] ([BookID], [SlotxeID], [CarID], [BookingTime], [StartTime], [EndTime], [Status], [UserID]) VALUES (9, 6, 1, CAST(N'2023-08-22T15:00:00.000' AS DateTime), CAST(N'2023-08-24T11:00:00.000' AS DateTime), CAST(N'2023-08-24T15:00:00.000' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([CarID], [UserID], [BSX], [Status]) VALUES (1, 1, N'56A-837474', 1)
INSERT [dbo].[Car] ([CarID], [UserID], [BSX], [Status]) VALUES (7, 2, N'79c-234567', 1)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Slotxe] ON 

INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (1, 1, 1)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (2, 1, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (3, 1, 1)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (4, 1, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (5, 2, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (6, 2, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (7, 2, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (8, 2, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (9, 3, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (10, 3, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (11, 3, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (12, 3, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (13, 3, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (14, 4, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (15, 4, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (16, 5, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (17, 5, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (18, 5, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (19, 5, 0)
INSERT [dbo].[Slotxe] ([SlotxeID], [BaixeID], [Status]) VALUES (20, 5, 0)
SET IDENTITY_INSERT [dbo].[Slotxe] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (1, N'HoangNT', N'hoangnt@gmail.com', N'Passw0rd!', N'0971227891', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (2, N'ThanhDT', N'thanhdt@gmail.com', N'Passw0rd!', N'0979987456', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (3, N'Staff', N'staff@gmail.com', N'Passw0rd!', N'0979987789', 2, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (4, N'Admin', N'admin@gmail.com', N'Passw0rd!', N'0971226789', 3, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (5, N'AnhBH', N'anhbh@gmail.com', N'Passw0rd!', N'0971686789', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (6, N'NgocBT', N'ngocbt@gmail.com', N'Passw0rd!', N'0971456789', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (7, N'HuyenVTT', N'huyenvtt@gmail.com', N'Passw0rd!', N'0321456789', 1, 0)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (8, N'PhucBH', N'phucbt@gmail.com', N'Passw0rd!', N'0945056789', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (9, N'NguyenHTT', N'nguyenhtt@gmail.com', N'Passw0rd!', N'0971456789', 1, 0)
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Phone], [Role], [Status]) VALUES (10, N'ChungBT', N'chungbt@gmail.com', N'Passw0rd!', N'0383233666', 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK__Book__CarID__5441852A] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK__Book__CarID__5441852A]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK__Book__SlotxeID__534D60F1] FOREIGN KEY([SlotxeID])
REFERENCES [dbo].[Slotxe] ([SlotxeID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK__Book__SlotxeID__534D60F1]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK__Book__UserID__5FB337D6] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK__Book__UserID__5FB337D6]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK__Car__UserID__5070F446] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK__Car__UserID__5070F446]
GO
ALTER TABLE [dbo].[Slotxe]  WITH CHECK ADD  CONSTRAINT [FK__Slotxe__BaixeID__4BAC3F29] FOREIGN KEY([BaixeID])
REFERENCES [dbo].[Baixe] ([BaixeID])
GO
ALTER TABLE [dbo].[Slotxe] CHECK CONSTRAINT [FK__Slotxe__BaixeID__4BAC3F29]
GO
USE [master]
GO
ALTER DATABASE [BookingCarParkingManagement] SET  READ_WRITE 
GO
