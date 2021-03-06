USE [master]
GO
/****** Object:  Database [CompanyDb]    Script Date: 5/24/2018 12:44:51 AM ******/
CREATE DATABASE [CompanyDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CompanyDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CompanyDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CompanyDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CompanyDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CompanyDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CompanyDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CompanyDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CompanyDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CompanyDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CompanyDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CompanyDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CompanyDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CompanyDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CompanyDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CompanyDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CompanyDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CompanyDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CompanyDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CompanyDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CompanyDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CompanyDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CompanyDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CompanyDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CompanyDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CompanyDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CompanyDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CompanyDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CompanyDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CompanyDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CompanyDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CompanyDb] SET  MULTI_USER 
GO
ALTER DATABASE [CompanyDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CompanyDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CompanyDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CompanyDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CompanyDb]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[BusinessPhone] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[LogoName] [nchar](10) NULL,
	[Extension] [nvarchar](50) NULL,
	[LogoPath] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Designation]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmployeeId] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[SectionId] [int] NULL,
	[DesignationId] [int] NULL,
	[BasicSalary] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[JoinDate] [date] NULL,
	[BranchId] [int] NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeAttendance]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeAttendance](
	[Id] [int] NULL,
	[EmployeeId] [int] NULL,
	[Date] [datetime] NULL,
	[Intime] [time](7) NULL,
	[Outtime] [time](7) NULL,
	[LateHour] [int] NULL,
	[HalfDay] [nvarchar](50) NULL,
	[Notes] [nvarchar](50) NULL,
	[Ispresent] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 5/24/2018 12:44:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](50) NULL,
	[SectionCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Branch] ON 

INSERT [dbo].[Branch] ([Id], [BranchName]) VALUES (1, N'Mirpur')
INSERT [dbo].[Branch] ([Id], [BranchName]) VALUES (2, N'Gulshan')
SET IDENTITY_INSERT [dbo].[Branch] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([Id], [Designation]) VALUES (1, N'General Manager')
INSERT [dbo].[Designation] ([Id], [Designation]) VALUES (2, N'HR Manager')
INSERT [dbo].[Designation] ([Id], [Designation]) VALUES (3, N'Sales Representative')
INSERT [dbo].[Designation] ([Id], [Designation]) VALUES (4, N'Admin')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FullName], [FirstName], [LastName], [EmployeeId], [Email], [RoleId], [Password], [Mobile], [SectionId], [DesignationId], [BasicSalary], [Gender], [DateOfBirth], [JoinDate], [BranchId], [Address]) VALUES (1, N'kamol chandra roy', N'kamol', N'roy', N'ADM-001-01', N'roy@gmail.com', 1, N'kamol', N'0147985658', 4, 4, 2011111, N'Male', CAST(0x2E3E0B00 AS Date), CAST(0x303E0B00 AS Date), 2, N'Dhaka-1216,Mirpur-13')
INSERT [dbo].[Employee] ([Id], [FullName], [FirstName], [LastName], [EmployeeId], [Email], [RoleId], [Password], [Mobile], [SectionId], [DesignationId], [BasicSalary], [Gender], [DateOfBirth], [JoinDate], [BranchId], [Address]) VALUES (2, N'Debobroto Gharami', N'Deb', N'Gharami', N'MAR-001-01', N'dev@gmail.com', 2, N'dev', N'0147985658', 1, 1, 2011111, N'Male', CAST(0x2E3E0B00 AS Date), CAST(0x363E0B00 AS Date), 1, N'Dhaka-1216,Mirpur-13')
SET IDENTITY_INSERT [dbo].[Employee] OFF
INSERT [dbo].[EmployeeAttendance] ([Id], [EmployeeId], [Date], [Intime], [Outtime], [LateHour], [HalfDay], [Notes], [Ispresent]) VALUES (NULL, 1, CAST(0x0000A8E900000000 AS DateTime), CAST(0x0700C8BA89160000 AS Time), CAST(0x070008D6E8290000 AS Time), 0, N'Yes', N'You have come in time', N'Present')
INSERT [dbo].[EmployeeAttendance] ([Id], [EmployeeId], [Date], [Intime], [Outtime], [LateHour], [HalfDay], [Notes], [Ispresent]) VALUES (NULL, 2, CAST(0x0000A8EA00000000 AS DateTime), CAST(0x0700AC9C68030000 AS Time), CAST(0x070008D6E8290000 AS Time), 0, N'Yes', N'You have come in time', N'Present')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (2, N'Employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Section] ON 

INSERT [dbo].[Section] ([Id], [SectionName], [SectionCode]) VALUES (1, N'Marketing', N'MAR-001')
INSERT [dbo].[Section] ([Id], [SectionName], [SectionCode]) VALUES (2, N'Sales', N'SAL-001')
INSERT [dbo].[Section] ([Id], [SectionName], [SectionCode]) VALUES (3, N'HR', N'HR-001')
INSERT [dbo].[Section] ([Id], [SectionName], [SectionCode]) VALUES (4, N'Admin', N'ADM-001')
SET IDENTITY_INSERT [dbo].[Section] OFF
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Branch]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Designation]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Section] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Section] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Section]
GO
USE [master]
GO
ALTER DATABASE [CompanyDb] SET  READ_WRITE 
GO
