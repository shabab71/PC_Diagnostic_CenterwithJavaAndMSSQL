USE [master]
GO
/****** Object:  Database [project_checkpoint2]    Script Date: 9/23/2020 6:41:40 PM ******/
CREATE DATABASE [project_checkpoint2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project_checkpoint2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\project_checkpoint2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project_checkpoint2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\project_checkpoint2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [project_checkpoint2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project_checkpoint2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project_checkpoint2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project_checkpoint2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project_checkpoint2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project_checkpoint2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project_checkpoint2] SET ARITHABORT OFF 
GO
ALTER DATABASE [project_checkpoint2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project_checkpoint2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project_checkpoint2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project_checkpoint2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project_checkpoint2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project_checkpoint2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project_checkpoint2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project_checkpoint2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project_checkpoint2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project_checkpoint2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project_checkpoint2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project_checkpoint2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project_checkpoint2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project_checkpoint2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project_checkpoint2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project_checkpoint2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project_checkpoint2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project_checkpoint2] SET RECOVERY FULL 
GO
ALTER DATABASE [project_checkpoint2] SET  MULTI_USER 
GO
ALTER DATABASE [project_checkpoint2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project_checkpoint2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project_checkpoint2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project_checkpoint2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project_checkpoint2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'project_checkpoint2', N'ON'
GO
ALTER DATABASE [project_checkpoint2] SET QUERY_STORE = OFF
GO
USE [project_checkpoint2]
GO
/****** Object:  Table [dbo].[AV_SERVICES]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AV_SERVICES](
	[id] [int] IDENTITY(21,1) NOT NULL,
	[Partsid] [int] NOT NULL,
	[Stype] [varchar](50) NULL,
	[EstAmount] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[id] [int] IDENTITY(205,1) NOT NULL,
	[Productid] [int] NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Sub_date] [date] NOT NULL,
	[Contact_no] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GTYPE]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GTYPE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gadget_type] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MECHANIC]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MECHANIC](
	[id] [int] IDENTITY(601,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Contact_no] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[P_DESCRIPTION]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[P_DESCRIPTION](
	[id] [int] IDENTITY(12,1) NOT NULL,
	[Pcb_sl] [varchar](50) NULL,
	[Lcd_sl] [varchar](50) NULL,
	[Keyboard_sl] [varchar](50) NULL,
	[Ram_sl] [varchar](50) NULL,
	[Hardisk_sl] [varchar](50) NULL,
	[Battery_sl] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTS]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTS](
	[id] [int] IDENTITY(11,1) NOT NULL,
	[Ctype] [varchar](50) NULL,
	[PCatalog] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[id] [int] IDENTITY(305,1) NOT NULL,
	[Desc_tag] [int] NOT NULL,
	[Ptype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPAIR_TAG]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPAIR_TAG](
	[id] [int] IDENTITY(501,1) NOT NULL,
	[Customerid] [int] NOT NULL,
	[Serviceid] [int] NOT NULL,
	[Mechanicid] [int] NOT NULL,
	[Rstatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERID]    Script Date: 9/23/2020 6:41:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERID](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[EPassword] [varchar](50) NOT NULL,
	[Contact_no] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AV_SERVICES] ON 

INSERT [dbo].[AV_SERVICES] ([id], [Partsid], [Stype], [EstAmount]) VALUES (21, 11, N'Ram replace', N'3400-1200tk')
INSERT [dbo].[AV_SERVICES] ([id], [Partsid], [Stype], [EstAmount]) VALUES (22, 12, N'LCD replace', N'5000-10000tk')
INSERT [dbo].[AV_SERVICES] ([id], [Partsid], [Stype], [EstAmount]) VALUES (23, 13, N'OS repair', N'1000tk')
INSERT [dbo].[AV_SERVICES] ([id], [Partsid], [Stype], [EstAmount]) VALUES (24, 12, N'LCD repair', N'5000-10000tk')
SET IDENTITY_INSERT [dbo].[AV_SERVICES] OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([id], [Productid], [FName], [LName], [Sub_date], [Contact_no]) VALUES (207, 305, N'Mushfi', N'Karim', CAST(N'2020-08-04' AS Date), N'0125685435')
INSERT [dbo].[CUSTOMER] ([id], [Productid], [FName], [LName], [Sub_date], [Contact_no]) VALUES (208, 306, N'Sharja', N'rahman', CAST(N'2020-08-13' AS Date), N'0457342749')
INSERT [dbo].[CUSTOMER] ([id], [Productid], [FName], [LName], [Sub_date], [Contact_no]) VALUES (209, 307, N'Rakibul', N'Mahfuz', CAST(N'2020-08-06' AS Date), N'0125757564')
INSERT [dbo].[CUSTOMER] ([id], [Productid], [FName], [LName], [Sub_date], [Contact_no]) VALUES (216, 305, N'Shabab', N'Ahmed', CAST(N'2020-09-12' AS Date), N'01745673223')
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
GO
SET IDENTITY_INSERT [dbo].[GTYPE] ON 

INSERT [dbo].[GTYPE] ([id], [gadget_type]) VALUES (1, N'Laptop')
INSERT [dbo].[GTYPE] ([id], [gadget_type]) VALUES (2, N'PC')
INSERT [dbo].[GTYPE] ([id], [gadget_type]) VALUES (3, N'Tablet')
SET IDENTITY_INSERT [dbo].[GTYPE] OFF
GO
SET IDENTITY_INSERT [dbo].[MECHANIC] ON 

INSERT [dbo].[MECHANIC] ([id], [FName], [LName], [Contact_no]) VALUES (601, N'Rafik', N'Uddin', N'01789256701')
INSERT [dbo].[MECHANIC] ([id], [FName], [LName], [Contact_no]) VALUES (602, N'Sakib', N'Hasan', N'01883256703')
INSERT [dbo].[MECHANIC] ([id], [FName], [LName], [Contact_no]) VALUES (603, N'Nabil', N'Ahmed', N'01682256546')
SET IDENTITY_INSERT [dbo].[MECHANIC] OFF
GO
SET IDENTITY_INSERT [dbo].[P_DESCRIPTION] ON 

INSERT [dbo].[P_DESCRIPTION] ([id], [Pcb_sl], [Lcd_sl], [Keyboard_sl], [Ram_sl], [Hardisk_sl], [Battery_sl]) VALUES (12, N'6892V', N'113V1', N'V898E', N'91192', N'11358', N'XJK119')
INSERT [dbo].[P_DESCRIPTION] ([id], [Pcb_sl], [Lcd_sl], [Keyboard_sl], [Ram_sl], [Hardisk_sl], [Battery_sl]) VALUES (13, N'9411F', N'---', N'---', N'89230', N'GXYJ9', N'---')
INSERT [dbo].[P_DESCRIPTION] ([id], [Pcb_sl], [Lcd_sl], [Keyboard_sl], [Ram_sl], [Hardisk_sl], [Battery_sl]) VALUES (14, N'ES23', N'458K', N'---', N'---', N'---', N'169KJ')
SET IDENTITY_INSERT [dbo].[P_DESCRIPTION] OFF
GO
SET IDENTITY_INSERT [dbo].[PARTS] ON 

INSERT [dbo].[PARTS] ([id], [Ctype], [PCatalog]) VALUES (11, N'LCD', NULL)
INSERT [dbo].[PARTS] ([id], [Ctype], [PCatalog]) VALUES (12, N'PC', NULL)
INSERT [dbo].[PARTS] ([id], [Ctype], [PCatalog]) VALUES (13, N'RAM', NULL)
SET IDENTITY_INSERT [dbo].[PARTS] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([id], [Desc_tag], [Ptype]) VALUES (305, 12, N'Laptop')
INSERT [dbo].[PRODUCT] ([id], [Desc_tag], [Ptype]) VALUES (306, 13, N'PC')
INSERT [dbo].[PRODUCT] ([id], [Desc_tag], [Ptype]) VALUES (307, 14, N'Tablet')
INSERT [dbo].[PRODUCT] ([id], [Desc_tag], [Ptype]) VALUES (308, 14, N'Phone')
INSERT [dbo].[PRODUCT] ([id], [Desc_tag], [Ptype]) VALUES (309, 14, N'Tablet_PC')
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
GO
SET IDENTITY_INSERT [dbo].[REPAIR_TAG] ON 

INSERT [dbo].[REPAIR_TAG] ([id], [Customerid], [Serviceid], [Mechanicid], [Rstatus]) VALUES (504, 207, 21, 601, N'Done')
INSERT [dbo].[REPAIR_TAG] ([id], [Customerid], [Serviceid], [Mechanicid], [Rstatus]) VALUES (505, 208, 22, 602, N'Pending')
INSERT [dbo].[REPAIR_TAG] ([id], [Customerid], [Serviceid], [Mechanicid], [Rstatus]) VALUES (506, 209, 23, 603, N'Done')
SET IDENTITY_INSERT [dbo].[REPAIR_TAG] OFF
GO
SET IDENTITY_INSERT [dbo].[USERID] ON 

INSERT [dbo].[USERID] ([id], [Username], [Email], [EPassword], [Contact_no]) VALUES (1, N'Raki', N'rakib@gmail.com', N'rakib234', N'0174567328')
INSERT [dbo].[USERID] ([id], [Username], [Email], [EPassword], [Contact_no]) VALUES (2, N'kai', N'kai@gmail.com', N'kai234', N'012745638649')
SET IDENTITY_INSERT [dbo].[USERID] OFF
GO
ALTER TABLE [dbo].[AV_SERVICES]  WITH CHECK ADD FOREIGN KEY([Partsid])
REFERENCES [dbo].[PARTS] ([id])
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD FOREIGN KEY([Productid])
REFERENCES [dbo].[PRODUCT] ([id])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([Desc_tag])
REFERENCES [dbo].[P_DESCRIPTION] ([id])
GO
ALTER TABLE [dbo].[REPAIR_TAG]  WITH CHECK ADD FOREIGN KEY([Customerid])
REFERENCES [dbo].[CUSTOMER] ([id])
GO
ALTER TABLE [dbo].[REPAIR_TAG]  WITH CHECK ADD FOREIGN KEY([Mechanicid])
REFERENCES [dbo].[MECHANIC] ([id])
GO
ALTER TABLE [dbo].[REPAIR_TAG]  WITH CHECK ADD FOREIGN KEY([Serviceid])
REFERENCES [dbo].[AV_SERVICES] ([id])
GO
USE [master]
GO
ALTER DATABASE [project_checkpoint2] SET  READ_WRITE 
GO
