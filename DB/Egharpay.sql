USE [master]
GO
/****** Object:  Database [Egharpay]    Script Date: 13-08-2017 22:35:07 ******/
CREATE DATABASE [Egharpay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Egharpay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SANJAY\MSSQL\DATA\Egharpay.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Egharpay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SANJAY\MSSQL\DATA\Egharpay_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Egharpay] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Egharpay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Egharpay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Egharpay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Egharpay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Egharpay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Egharpay] SET ARITHABORT OFF 
GO
ALTER DATABASE [Egharpay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Egharpay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Egharpay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Egharpay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Egharpay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Egharpay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Egharpay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Egharpay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Egharpay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Egharpay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Egharpay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Egharpay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Egharpay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Egharpay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Egharpay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Egharpay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Egharpay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Egharpay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Egharpay] SET  MULTI_USER 
GO
ALTER DATABASE [Egharpay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Egharpay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Egharpay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Egharpay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Egharpay] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Egharpay]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13-08-2017 22:35:07 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13-08-2017 22:35:07 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13-08-2017 22:35:07 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[OrganisationId] [int] NULL,
	[PersonnelId] [int] NULL,
	[CentreId] [int] NULL,
	[Name] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUsersAlertSchedule]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsersAlertSchedule](
	[AspnetUsersAlertScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[AspNetUsersId] [nvarchar](128) NOT NULL,
	[AlertId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsersAlertSchedule] PRIMARY KEY CLUSTERED 
(
	[AspnetUsersAlertScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Centre]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Centre](
	[CentreId] [int] IDENTITY(1,1) NOT NULL,
	[CentreCode] [varchar](100) NULL,
	[Name] [varchar](500) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NULL,
	[Address3] [varchar](500) NULL,
	[Address4] [varchar](500) NULL,
	[TalukaId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[PinCode] [int] NOT NULL,
	[EmailId] [varchar](500) NULL,
	[Telephone] [bigint] NOT NULL,
	[OrganisationId] [int] NOT NULL,
 CONSTRAINT [PK_Centre] PRIMARY KEY CLUSTERED 
(
	[CentreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelId] [nvarchar](50) NULL,
	[FileName] [varchar](4000) NOT NULL,
	[Description] [varchar](1000) NULL,
	[Location] [varchar](max) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[Guid] [uniqueidentifier] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[DownloadedDateTime] [datetime] NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[Product] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentCategory]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentCategory](
	[DocumentCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[BasePath] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personnel](
	[PersonnelId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Forenames] [nvarchar](100) NULL,
	[Surname] [nvarchar](50) NULL,
	[DOB] [datetime2](7) NULL,
	[CountryId] [int] NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Postcode] [nvarchar](12) NOT NULL,
	[Telephone] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[PANNumber] [varchar](10) NULL,
	[BankTelephone] [varchar](15) NULL,
	[Email] [varchar](256) NOT NULL,
	[CentreId] [int] NULL,
	[CustomerId] [int] NULL,
	[UserId] [nvarchar](128) NULL,
 CONSTRAINT [PK_Personnel] PRIMARY KEY CLUSTERED 
(
	[PersonnelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Template]    Script Date: 13-08-2017 22:35:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[OrganisationId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'1', N'SuperAdmin', N'ApplicationRole')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'2', N'Admin', N'ApplicationRole')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'3', N'User', N'ApplicationRole')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'4', N'Trainer', N'ApplicationRole')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'01b40bcf-c599-473c-854c-4effa911ec1e', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'032c1e43-fba7-47f8-a477-9a09dcf82daa', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'04ee5f8b-e018-4a17-aac9-b6019cfce276', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'06586b59-4429-436d-9b26-800d880483df', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0a6b1e2b-4ac3-414e-8738-9e5a4d9b6e36', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b23dc04-f364-45ba-b98e-fb0a49f94656', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f13e616-a95a-47a5-9995-60cbc592c3d1', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f7a08f6-1a5a-4319-a5fd-1f2fa719634d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10f5e02b-c762-4565-8b2d-0f43aa081319', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'116fc575-4a86-4f13-b997-fe9f32d305ff', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1700c28e-d342-4959-bb7d-641d66f6719f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b4ec15b-abff-46c0-a029-df405b2d4ffb', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1ca4f2bf-dd06-44a4-aa09-2b4dcf5b4a79', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1dc202d7-839a-48f8-baf9-552cbd40fd3c', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f2db86c-81fb-4eec-9d5f-0c780eafb590', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'209a9149-18d6-47e5-b880-53cc8aeb856f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20c83ae9-a47c-4122-8b00-2a14e98db983', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'246e2f76-68bd-486a-8468-c54851c87541', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'24b0530f-ce19-4004-be38-a6cc1533e322', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'269ee34f-44b5-4374-9d16-ee31c8de0974', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2985709c-33d3-4bcf-879e-0db5da198c77', N'4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2992313b-87d5-4229-8c3a-6578d222e293', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ac20a85-a6dc-4429-92e1-15b00f08adb8', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2b9a1443-fa62-4cb0-aec7-b7b5770436ac', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2c4ebd78-f541-440c-b9de-fad81a0f5a98', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2d921f72-b892-4cca-b294-210592790854', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2f4ebcc1-5ff9-4f9f-a31d-66c47aee5894', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2fd4cd69-4a25-46e0-af8c-2ed5d28f610f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'30ee0b23-785a-4d06-a95d-0f7b6d9ce31f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3121bc35-ec6b-4963-888b-014b83f47fe8', N'4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'316f648b-6ca2-4d98-9f93-c7afdd943789', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'320ac667-ee90-48a2-9b53-fb9c10ec0d61', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'33bb0ae7-2832-4072-8622-fec97b97b71b', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'34ab16e8-1e47-4561-8998-aa9bda9451cd', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'368eb845-84c0-4b41-a3fe-4b8e17566012', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'380d81ed-da38-4681-85ac-ea18fb8dac82', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38279ad7-91c8-4968-932c-0a5a05ab495c', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38ce04d3-091b-461a-89ae-2d3dbace99f1', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3deed64b-69ec-49fc-905f-a73cd5582f3c', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'40ee8af2-4d7c-4a93-af2b-118d78db6b81', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'424193a9-7b3f-43cc-9806-b27db02c5db4', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'42aa16da-0fb1-4701-ba6d-a545ff4f36a7', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'431aa089-ac08-48d6-b671-e1087f85bcb8', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4741b301-d9dc-4c8e-b029-a8688a0a0308', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'475e52f8-bb3b-4834-ae84-17842b12b0c8', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4836e102-343b-4c9f-ba96-00461f4893f3', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'491e3deb-c570-47f1-aec9-b649ac239db2', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4cdce9f5-89a3-4680-a211-1c0913bf58bf', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'50b3a684-5599-4a40-9f0f-47a5c37e8e15', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'52abb99d-d48a-4d32-ba55-bbb89bece8de', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'52f41cd9-bc88-42d4-8d34-90b259d6fd46', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'552b29ce-8872-4f8c-b8dd-747ae4333e4e', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'55a1f00f-cd0b-491f-b04b-57803b0db161', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'58bfb3ef-4949-4d43-8c89-a1409d16a08a', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'594e3477-339d-4749-8b89-58d75936a640', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5f4dd0b1-b3e8-4203-bc10-1df868bf5963', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'634bc7d0-dca0-42be-9321-d854d5d3ec69', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'648b8178-35bf-4223-8ebf-7649977683c7', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6cabb6dd-2875-4589-8ab7-923610c62349', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6cf75ade-561f-4fdc-a1e5-fa57cd9ef8ce', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6df45dd9-0940-4a93-acbd-04af52090050', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ef120ae-6041-4314-86ee-884093da1a68', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'777e2ec6-d74a-4707-a1ef-16c96f73248d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'77ec2e78-ed30-4b70-8fdf-7498a3f85492', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7d585050-8a4a-4d9a-960b-2228875ddc46', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8157d325-2c95-4811-82b3-b215fd49afa4', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'817cad52-7b2e-4bf3-994d-2c9c91e03cd2', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'81c6963a-e6b6-40f2-8ff7-ab17a033d95f', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'87731cf8-8a27-4efe-8f6a-7ed3b2b5f255', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'87856032-423b-4815-aeb8-69b7e4683a22', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'88450232-24c3-4cba-919b-7c1c4c64f4f2', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8acf06ba-e517-4b6e-abcb-359024cc2ad9', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8c0cfdcc-0375-4dd0-8456-605f8b8d8b8a', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9126ad61-924c-4ec3-8eaf-05386fb9a999', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9349a8cd-5b5d-4ab5-80bf-9b178a0629cd', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'995a714c-8876-41ab-8e48-1c79b01d459f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9b923fee-8028-493a-b54d-666fb6397a75', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9bb0610e-788e-4dfc-93b6-82af4c016765', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a0946d24-c935-4070-88c7-e660445eda5d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4110fcf-efe0-4055-986e-02e1d2affbc4', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4a988b5-e38b-4c70-a20b-bed97a8db4cb', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a79cb6fc-1cba-4f32-96f9-e1e4e9890ee5', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aab6fc24-4f57-4de7-9979-3b790eef72c9', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ae397432-e4aa-44a6-80a6-dc9bea2a251e', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aed476a0-3739-44a0-bd2f-b11a3287689c', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'afcf5153-7257-4d0e-9095-2d2286c0abbe', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'afdca75e-d51d-410b-abfc-a3fb0b61a198', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b38dc1bf-0691-4edf-9428-7b205a07f80d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b3a394ff-5146-4cfd-8e1d-16d0d38b466d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b7ca56c6-e0b1-4d0c-8657-01ee818a377f', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'baa66088-ea1b-43ab-b8b0-ee75523e613a', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bb141879-1336-4a91-8640-506a9d1f71bf', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bbe75a61-9216-4c97-8e5c-2a85ec3b6885', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'befc44d4-ed35-40ff-8df8-3ff04f10c79d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c1a636b0-4939-4da5-8e76-bbb2c876d82b', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2971d39-34ae-4165-89dc-78fedde57f81', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c42d62c2-1c0b-4f32-8c0f-c13ab60e3073', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7ef57ec-c373-49bc-bbcb-f677b6dea483', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ca1a33e0-4455-484c-a494-2d6ee9921359', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ccd7d6ea-f514-40a8-9530-dd7744c5706c', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cd588053-3088-4ad2-b26d-22b0822fe855', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cded29f3-f32f-4143-86b9-30cce601d2db', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ceddcad2-e6ab-4046-a109-11c1c8b5ffa3', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd9ceb6d0-4ade-4d87-ae3c-c829206620d5', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'da0c5b44-3ebd-4fcd-af2d-3e7a0aaf95b0', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'db5f88be-4018-4647-8776-01e9cd07753a', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2ae65fc-51f3-4d01-8c0c-063c4abd0da2', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3482627-f15f-4d8d-b347-572e78e41dae', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ea78e966-60fc-42d3-8fd2-68e826d1c56d', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f1e97402-9a85-4dbc-8919-fcaf4318f7c7', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6295d2a-12ee-4d1e-ab0b-707716a24d6a', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f68428ff-8dd1-49fb-8a1a-8655f3bf076d', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f72d0864-d72f-468b-940c-1a3deb3b3250', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fa4c3ca7-d0d6-4c09-9dd7-22af3c5d6abe', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbe3dde3-c2da-4337-9667-0d363bfac5c5', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fdd6d9a2-1d33-4e76-a4e5-7988effb6d81', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fe861a67-db8e-401f-95f3-9142300a7e84', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'fe861a67-db8e-401f-95f3-9142300a7e84', N'superadmin@nidantech.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'dac1f363-20c6-4593-a998-f35725ba23c9', NULL, 0, 0, NULL, 0, 0, N'superadmin@nidantech.com', 4, NULL, -1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f6295d2a-12ee-4d1e-ab0b-707716a24d6a', N'admin1@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'62873593-517e-4f95-9f64-0490e940528a', NULL, 0, 0, NULL, 0, 0, N'admin1@itsupportlimited.com', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'24b0530f-ce19-4004-be38-a6cc1533e322', N'admin2@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'e34fdba4-6bec-417f-923f-8d95dda829b2', NULL, 0, 0, NULL, 0, 0, N'admin2@itsupportlimited.com', 2, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'afcf5153-7257-4d0e-9095-2d2286c0abbe', N'employee@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'cf421afd-9c38-457c-a6af-c521e1d602d9', NULL, 0, 0, NULL, 0, 0, N'employee@itsupportlimited.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'81c6963a-e6b6-40f2-8ff7-ab17a033d95f', N'admindevuk@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'87edef0d-7230-4a5e-81a5-00e45867c9b7', NULL, 0, 0, NULL, 0, 0, N'admindevuk@itsupportlimited.com', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'baa66088-ea1b-43ab-b8b0-ee75523e613a', N'admindevmumbai@nidantech.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'2638a07d-1d70-4d9d-aea8-9fa592ebd519', NULL, 0, 0, NULL, 0, 0, N'admindevmumbai@nidantech.com', 4, 20, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'cded29f3-f32f-4143-86b9-30cce601d2db', N'boss@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'88943326-3aac-4de3-9952-aef532cb151b', NULL, 0, 0, NULL, 1, 0, N'boss@hr.com', 1, 3, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'4836e102-343b-4c9f-ba96-00461f4893f3', N'85e8ad13-c28d-480c-992f-78e1abdbc9d2@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'cbfb458c-0f8d-4bf8-883d-0e46c5c4426b', NULL, 0, 0, NULL, 1, 0, N'85e8ad13-c28d-480c-992f-78e1abdbc9d2@hr.com', 4, NULL, 2, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'd9ceb6d0-4ade-4d87-ae3c-c829206620d5', N'e2010454-1065-45db-954f-38b0e4d09e12@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'f0d27bfc-9683-4dfc-8bb4-9a8353c3ebe9', NULL, 0, 0, NULL, 1, 0, N'e2010454-1065-45db-954f-38b0e4d09e12@hr.com', 4, 21, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'88450232-24c3-4cba-919b-7c1c4c64f4f2', N'96a36c2a-8c00-4da8-8477-b5a4ea8af4d3@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'd29730e8-04fe-4e86-be51-b6de06e173db', NULL, 0, 0, NULL, 1, 0, N'96a36c2a-8c00-4da8-8477-b5a4ea8af4d3@hr.com', 4, 22, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'1b4ec15b-abff-46c0-a029-df405b2d4ffb', N'0a283ac7-1216-4157-9ea0-7cc7c58a4287@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'6bdbe6e5-2109-4d58-b54c-e4212315465d', NULL, 0, 0, NULL, 1, 0, N'0a283ac7-1216-4157-9ea0-7cc7c58a4287@hr.com', 4, 23, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'20c83ae9-a47c-4122-8b00-2a14e98db983', N'ff9c1c49-1fe5-41aa-a5a4-047c29fa7ff5@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'19e19041-015f-45d4-a2dd-5c486e2b3736', NULL, 0, 0, NULL, 1, 0, N'ff9c1c49-1fe5-41aa-a5a4-047c29fa7ff5@hr.com', 4, 24, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'424193a9-7b3f-43cc-9806-b27db02c5db4', N'sunjayp88456@gmail.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'47e90459-e1cf-41b2-a0b4-e88cc4f5266b', NULL, 0, 0, NULL, 1, 0, N'sunjayp88456@gmail.com', 4, 13, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'9349a8cd-5b5d-4ab5-80bf-9b178a0629cd', N'panontonganm@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'1108f492-9cba-4934-b5fb-652b97e11f90', NULL, 0, 0, NULL, 1, 0, N'panontonganm@andersongroup.uk.com', 1, 13, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'db5f88be-4018-4647-8776-01e9cd07753a', N'johhpaulc@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'904bfac7-a8bc-48a3-a551-7fa0e779b464', NULL, 0, 0, NULL, 1, 0, N'johhpaulc@andersongroup.uk.com', 1, 14, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'3121bc35-ec6b-4963-888b-014b83f47fe8', N'ragini@gmail.com', 0, N'AKRsm8LbO6Tcb3Ad61T/haXXlPGgzd1yS17M4b92xNwKzrAGpJCv44rziAgflPNXgw==', N'800b9c9e-a637-4563-98fb-7b6533bcf203', NULL, 0, 0, NULL, 1, 0, N'ragini@gmail.com', 4, 55, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'42aa16da-0fb1-4701-ba6d-a545ff4f36a7', N'shubham@gmail.com', 0, N'ADD4o279xQ7AW8w/yftLYvFKwbHiV3TLg0adpyNasZsbIsPWL8qYF0cCDLHlzlG7Xw==', N'32a21b2f-3eef-4fa0-9be5-49ac5f1c8016', NULL, 0, 0, NULL, 1, 0, N'shubham@gmail.com', 4, 57, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'1dc202d7-839a-48f8-baf9-552cbd40fd3c', N'sanjay@gmail.com', 0, N'AGJTI/tI7CY3LpKCviq+c50ePowYrmk2dmy+4yZfl3dyMkvVW25cZ2gk2Uqkju8DXA==', N'51dfa334-522f-4493-974f-607982be99ea', NULL, 0, 0, NULL, 1, 0, N'sanjay@gmail.com', 4, 59, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'aed476a0-3739-44a0-bd2f-b11a3287689c', N'kristineg@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'4fbc5e0a-e3d2-4622-bd35-04a8502f5268', NULL, 0, 0, NULL, 1, 0, N'kristineg@andersongroup.uk.com', 1, 15, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'06586b59-4429-436d-9b26-800d880483df', N'dev@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'e56d3f92-2be7-4ecf-8a0f-f6118507987a', NULL, 0, 0, NULL, 1, 0, N'christophers@andersongroup.uk.com', 1, 16, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'ccd7d6ea-f514-40a8-9530-dd7744c5706c', N'dikshas@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'2ddce434-0ca5-4fa4-ae56-e49b62937034', NULL, 0, 0, NULL, 1, 0, N'dikshas@andersongroup.uk.com', 4, 16, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'77ec2e78-ed30-4b70-8fdf-7498a3f85492', N'67f677f3-a905-483e-afd9-b3932e14e8ba@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'c5549f22-06e2-4870-9cb8-65b062d5b575', NULL, 0, 0, NULL, 1, 0, N'67f677f3-a905-483e-afd9-b3932e14e8ba@hr.com', 4, 14, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'817cad52-7b2e-4bf3-994d-2c9c91e03cd2', N'pankajc1@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'7a1cdaa8-6e74-431e-ba28-63ee84ab43a7', NULL, 0, 0, NULL, 1, 0, N'pankajc1@andersongroup.uk.com', 4, 15, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'a4a988b5-e38b-4c70-a20b-bed97a8db4cb', N'1011ed35-5c53-487a-9cb9-e90ed2453c13@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'3d770f21-d1c7-44a7-a221-11e5cbcfa887', NULL, 0, 0, NULL, 1, 0, N'1011ed35-5c53-487a-9cb9-e90ed2453c13@hr.com', 4, 25, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f68428ff-8dd1-49fb-8a1a-8655f3bf076d', N'bmthane@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'21f0007e-2cc7-4f38-8449-94e44f47ec9c', NULL, 0, 0, NULL, 1, 0, N'bmthane@nidantech.com', 4, 26, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'634bc7d0-dca0-42be-9321-d854d5d3ec69', N'ci_jbp@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'08ff6cf4-678c-4140-8959-6fe39bb0ae04', NULL, 0, 0, NULL, 1, 0, N'ci_jbp@nidantech.com', 4, 28, 4, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'52f41cd9-bc88-42d4-8d34-90b259d6fd46', N'ci_ngp@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'746807cd-ed15-42b6-96c2-6557b0963800', NULL, 0, 0, NULL, 1, 0, N'ci_ngp@nidantech.com', 4, 29, 3, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'6cabb6dd-2875-4589-8ab7-923610c62349', N'bmvaishali@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'0096d556-9a7a-4330-aaaf-868b50d53a1f', NULL, 0, 0, NULL, 1, 0, N'bmvaishali@nidantech.com', 4, 30, 5, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'a0946d24-c935-4070-88c7-e660445eda5d', N'vijayraut33@gmail.com', 0, N'ANhlQmE4Q95ROt2XXA68NutPWCppMkcxWv4v0sk2CLeZRWZjLKRxGDxol2PpJlg4gw==', N'5355d9ab-3f7c-48d6-a738-f90dce48bd4e', NULL, 0, 0, NULL, 1, 0, N'vijayraut33@gmail.com', 4, 56, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'2985709c-33d3-4bcf-879e-0db5da198c77', N'mohsin@gmail.com', 0, N'ALITgYNVCBeUvjTTEZDKlvJwYVe9O8lXPcayvXXX11maNqZ98V6XOQ3YzkgnteP22g==', N'1fc565f6-a527-481a-a363-3c2bab24866e', NULL, 0, 0, NULL, 1, 0, N'mohsin@gmail.com', 4, 58, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'b3a394ff-5146-4cfd-8e1d-16d0d38b466d', N'vasudha@gmail.com', 0, N'APJTT6QgVxeftHiFqE8WRcZMtXokvqgTEm/aD0jUdWJMsxvDUwyzfPyB0sGVbgPoIQ==', N'e87e85d7-3c00-47a4-a449-cfc2e78f07c1', NULL, 0, 0, NULL, 1, 0, N'vasudha@gmail.com', 4, 60, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'8c0cfdcc-0375-4dd0-8456-605f8b8d8b8a', N'aditya@gmail.com', 0, N'AGjskpM2R3Ve1W6oJkZx1cpHyOX/gleCAONP60jzBI9lNPU1pDQINa+r/anXJgHQuA==', N'8477f734-1554-4749-b493-bcad96122de5', NULL, 0, 0, NULL, 1, 0, N'aditya@gmail.com', 4, 63, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'da0c5b44-3ebd-4fcd-af2d-3e7a0aaf95b0', N'pooja@gmail.com', 0, N'ACopobDS13oPodjeqtYmzzYOXPsr2GcRSRVeReKWk95l8kq6U0BWIcqDpkFj0ONaGQ==', N'02afe43a-9ea1-47cd-b3e7-89816108f5da', NULL, 0, 0, NULL, 1, 0, N'pooja@gmail.com', 4, 64, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'6df45dd9-0940-4a93-acbd-04af52090050', N'sunjayp88@gmail.com', 0, N'AJMj9bb5wxjrNSnnBJuBEZ/ByJt+/HXyLoFVqa2qn3mY0THZSWVZXVbkoWlGGLoYtA==', N'a750c410-b11a-4b4c-8656-17fbe1d92136', NULL, 0, 0, NULL, 1, 0, N'sunjayp88@gmail.com', 4, 65, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'380d81ed-da38-4681-85ac-ea18fb8dac82', N'vinayak@gmail.com', 0, N'AMFZAFmX5oJt5xF0OWXf4InLnQpkz6++DaRs+gjyk7RgCEh1FDhRmLqc6zcuF/m9wQ==', N'0fdde0b5-3892-420d-9edd-baabe81150e3', NULL, 0, 0, NULL, 1, 0, N'vinayak@gmail.com', 4, 70, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'befc44d4-ed35-40ff-8df8-3ff04f10c79d', N'neha@gmail.com', 0, N'ANLO0inQ2WAtLS2xv12rDL3yp4RkHWbEl1emFxOMcgnPtWsqTKXRL5XqAE0SjJmKFg==', N'dcfafb94-5471-4d80-98d0-daa1bf02a25a', NULL, 0, 0, NULL, 1, 0, N'neha@gmail.com', 4, 72, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'38ce04d3-091b-461a-89ae-2d3dbace99f1', N'swapnil@gmail.com', 0, N'AL+gAd4yCrT1ZM2o059aq0a/o1sDk7Xx8yZ3ItqMDZfY7F+g98+WL3TGaUaMhubi7Q==', N'76106167-b401-4932-bf46-88a4299a9934', NULL, 0, 0, NULL, 1, 0, N'swapnil@gmail.com', 4, 69, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'74ed584d-18a0-4af9-ba3d-f8e2b5da44b0', N'sunjayp888@gmail.com', 0, N'ADr11LIgk9z/NtyO5m8vVwgbHf0a9TcWf6G5h/t+Wo7KX9q++i1l6QFNywt2QDHQQg==', N'781820f8-6320-4c5d-bcc5-6b9e5671379d', NULL, 0, 0, NULL, 1, 0, N'sunjayp888@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'9e4a9929-9385-48b2-a406-3d3d771a3355', N'sunjayp8888@gmail.com', 0, N'ADU/NrdM3v+m+KYNtQHdba1ln6hoTPK+Tqbav/9QIfLYHSyy80SWE3A+q9tPeYpMDQ==', N'dc8c074e-5069-4cbf-8c3d-83598c6b6eb4', NULL, 0, 0, NULL, 1, 0, N'sunjayp8888@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'd3b4227b-2657-4ba3-969a-024c29ec54a3', N'sunjayp123@gmail.com', 0, N'AEdX8pN3j2SZmiJpzlyqCEA2kCFpSe0JPxhWoXZtnMcLw8wTnPYxvqtP5+DvOrkU+Q==', N'83b2dd18-5275-4d7b-a40a-362aaea97cfe', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'bf630a78-e54c-461a-b776-0fb0fe6ac8c8', N'sunjayp123@gmail.com', 0, N'AJoRG3qmzCJQ2XVwchgmTNWhgNqN6pDcGW0R0SnS2twD0OIoCy+oorNGksKJh2OkPA==', N'ac67d2c4-3556-45ea-aba9-27d4b423255f', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, 74, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'77d94c37-4984-44e5-9361-112adcb26fd9', N'sunjayp123@gmail.com', 0, N'ABoKmW3eUlzV5/lQXlb9msrdhJt+uivQZYpl7H6btnhpYrEIYcOK8yCW0k6J6jInbA==', N'e7e9fd65-551c-41ec-9dd3-ee85a16c3dac', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, 77, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f6ca24ce-420d-4f8c-a784-1fe1735deed4', N'sunjayp1234@gmail.com', 0, N'AKk05OrD7v10yNovyuPlMWolGt8kLUEN8T8E3j0Qf4QI3ZC2t9bSZ7j8n4GYni1Chw==', N'84070f80-d086-4ac2-ae1e-ee16ccef4a55', NULL, 0, 0, NULL, 1, 0, N'sunjayp1234@gmail.com', NULL, 78, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'fe861a67-db8e-401f-95f3-9142300a7e84', N'superadmin@nidantech.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'dac1f363-20c6-4593-a998-f35725ba23c9', NULL, 0, 0, NULL, 0, 0, N'superadmin@nidantech.com', 4, NULL, -1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f6295d2a-12ee-4d1e-ab0b-707716a24d6a', N'admin1@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'62873593-517e-4f95-9f64-0490e940528a', NULL, 0, 0, NULL, 0, 0, N'admin1@itsupportlimited.com', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'24b0530f-ce19-4004-be38-a6cc1533e322', N'admin2@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'e34fdba4-6bec-417f-923f-8d95dda829b2', NULL, 0, 0, NULL, 0, 0, N'admin2@itsupportlimited.com', 2, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'afcf5153-7257-4d0e-9095-2d2286c0abbe', N'employee@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'cf421afd-9c38-457c-a6af-c521e1d602d9', NULL, 0, 0, NULL, 0, 0, N'employee@itsupportlimited.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'81c6963a-e6b6-40f2-8ff7-ab17a033d95f', N'admindevuk@itsupportlimited.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'87edef0d-7230-4a5e-81a5-00e45867c9b7', NULL, 0, 0, NULL, 0, 0, N'admindevuk@itsupportlimited.com', 3, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'baa66088-ea1b-43ab-b8b0-ee75523e613a', N'admindevmumbai@nidantech.com', 1, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'2638a07d-1d70-4d9d-aea8-9fa592ebd519', NULL, 0, 0, NULL, 0, 0, N'admindevmumbai@nidantech.com', 4, 20, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'cded29f3-f32f-4143-86b9-30cce601d2db', N'boss@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'88943326-3aac-4de3-9952-aef532cb151b', NULL, 0, 0, NULL, 1, 0, N'boss@hr.com', 1, 3, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'4836e102-343b-4c9f-ba96-00461f4893f3', N'85e8ad13-c28d-480c-992f-78e1abdbc9d2@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'cbfb458c-0f8d-4bf8-883d-0e46c5c4426b', NULL, 0, 0, NULL, 1, 0, N'85e8ad13-c28d-480c-992f-78e1abdbc9d2@hr.com', 4, NULL, 2, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'd9ceb6d0-4ade-4d87-ae3c-c829206620d5', N'e2010454-1065-45db-954f-38b0e4d09e12@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'f0d27bfc-9683-4dfc-8bb4-9a8353c3ebe9', NULL, 0, 0, NULL, 1, 0, N'e2010454-1065-45db-954f-38b0e4d09e12@hr.com', 4, 21, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'88450232-24c3-4cba-919b-7c1c4c64f4f2', N'96a36c2a-8c00-4da8-8477-b5a4ea8af4d3@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'd29730e8-04fe-4e86-be51-b6de06e173db', NULL, 0, 0, NULL, 1, 0, N'96a36c2a-8c00-4da8-8477-b5a4ea8af4d3@hr.com', 4, 22, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'3121bc35-ec6b-4963-888b-014b83f47fe8', N'ragini@gmail.com', 0, N'AKRsm8LbO6Tcb3Ad61T/haXXlPGgzd1yS17M4b92xNwKzrAGpJCv44rziAgflPNXgw==', N'800b9c9e-a637-4563-98fb-7b6533bcf203', NULL, 0, 0, NULL, 1, 0, N'ragini@gmail.com', 4, 55, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'42aa16da-0fb1-4701-ba6d-a545ff4f36a7', N'shubham@gmail.com', 0, N'ADD4o279xQ7AW8w/yftLYvFKwbHiV3TLg0adpyNasZsbIsPWL8qYF0cCDLHlzlG7Xw==', N'32a21b2f-3eef-4fa0-9be5-49ac5f1c8016', NULL, 0, 0, NULL, 1, 0, N'shubham@gmail.com', 4, 57, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'1b4ec15b-abff-46c0-a029-df405b2d4ffb', N'0a283ac7-1216-4157-9ea0-7cc7c58a4287@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'6bdbe6e5-2109-4d58-b54c-e4212315465d', NULL, 0, 0, NULL, 1, 0, N'0a283ac7-1216-4157-9ea0-7cc7c58a4287@hr.com', 4, 23, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'20c83ae9-a47c-4122-8b00-2a14e98db983', N'ff9c1c49-1fe5-41aa-a5a4-047c29fa7ff5@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'19e19041-015f-45d4-a2dd-5c486e2b3736', NULL, 0, 0, NULL, 1, 0, N'ff9c1c49-1fe5-41aa-a5a4-047c29fa7ff5@hr.com', 4, 24, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'424193a9-7b3f-43cc-9806-b27db02c5db4', N'sunjayp88456@gmail.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'47e90459-e1cf-41b2-a0b4-e88cc4f5266b', NULL, 0, 0, NULL, 1, 0, N'sunjayp88456@gmail.com', 4, 13, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'9349a8cd-5b5d-4ab5-80bf-9b178a0629cd', N'panontonganm@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'1108f492-9cba-4934-b5fb-652b97e11f90', NULL, 0, 0, NULL, 1, 0, N'panontonganm@andersongroup.uk.com', 1, 13, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'db5f88be-4018-4647-8776-01e9cd07753a', N'johhpaulc@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'904bfac7-a8bc-48a3-a551-7fa0e779b464', NULL, 0, 0, NULL, 1, 0, N'johhpaulc@andersongroup.uk.com', 1, 14, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'1dc202d7-839a-48f8-baf9-552cbd40fd3c', N'sanjay@gmail.com', 0, N'AGJTI/tI7CY3LpKCviq+c50ePowYrmk2dmy+4yZfl3dyMkvVW25cZ2gk2Uqkju8DXA==', N'51dfa334-522f-4493-974f-607982be99ea', NULL, 0, 0, NULL, 1, 0, N'sanjay@gmail.com', 4, 59, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'aed476a0-3739-44a0-bd2f-b11a3287689c', N'kristineg@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'4fbc5e0a-e3d2-4622-bd35-04a8502f5268', NULL, 0, 0, NULL, 1, 0, N'kristineg@andersongroup.uk.com', 1, 15, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'06586b59-4429-436d-9b26-800d880483df', N'dev@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'e56d3f92-2be7-4ecf-8a0f-f6118507987a', NULL, 0, 0, NULL, 1, 0, N'christophers@andersongroup.uk.com', 1, 16, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'ccd7d6ea-f514-40a8-9530-dd7744c5706c', N'dikshas@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'2ddce434-0ca5-4fa4-ae56-e49b62937034', NULL, 0, 0, NULL, 1, 0, N'dikshas@andersongroup.uk.com', 4, 16, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'77ec2e78-ed30-4b70-8fdf-7498a3f85492', N'67f677f3-a905-483e-afd9-b3932e14e8ba@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'c5549f22-06e2-4870-9cb8-65b062d5b575', NULL, 0, 0, NULL, 1, 0, N'67f677f3-a905-483e-afd9-b3932e14e8ba@hr.com', 4, 14, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'817cad52-7b2e-4bf3-994d-2c9c91e03cd2', N'pankajc1@andersongroup.uk.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'7a1cdaa8-6e74-431e-ba28-63ee84ab43a7', NULL, 0, 0, NULL, 1, 0, N'pankajc1@andersongroup.uk.com', 4, 15, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'a4a988b5-e38b-4c70-a20b-bed97a8db4cb', N'1011ed35-5c53-487a-9cb9-e90ed2453c13@hr.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'3d770f21-d1c7-44a7-a221-11e5cbcfa887', NULL, 0, 0, NULL, 1, 0, N'1011ed35-5c53-487a-9cb9-e90ed2453c13@hr.com', 4, 25, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f68428ff-8dd1-49fb-8a1a-8655f3bf076d', N'bmthane@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'21f0007e-2cc7-4f38-8449-94e44f47ec9c', NULL, 0, 0, NULL, 1, 0, N'bmthane@nidantech.com', 4, 26, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'634bc7d0-dca0-42be-9321-d854d5d3ec69', N'ci_jbp@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'08ff6cf4-678c-4140-8959-6fe39bb0ae04', NULL, 0, 0, NULL, 1, 0, N'ci_jbp@nidantech.com', 4, 28, 4, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'52f41cd9-bc88-42d4-8d34-90b259d6fd46', N'ci_ngp@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'746807cd-ed15-42b6-96c2-6557b0963800', NULL, 0, 0, NULL, 1, 0, N'ci_ngp@nidantech.com', 4, 29, 3, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'6cabb6dd-2875-4589-8ab7-923610c62349', N'bmvaishali@nidantech.com', 0, N'AAmuYdVcwfyvri+pKSdq1fDhPzxrHGR4xNVNXO2+E6lff1YWbpYHSIPVe4zcEjYSxw==', N'0096d556-9a7a-4330-aaaf-868b50d53a1f', NULL, 0, 0, NULL, 1, 0, N'bmvaishali@nidantech.com', 4, 30, 5, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'a0946d24-c935-4070-88c7-e660445eda5d', N'vijayraut33@gmail.com', 0, N'ANhlQmE4Q95ROt2XXA68NutPWCppMkcxWv4v0sk2CLeZRWZjLKRxGDxol2PpJlg4gw==', N'5355d9ab-3f7c-48d6-a738-f90dce48bd4e', NULL, 0, 0, NULL, 1, 0, N'vijayraut33@gmail.com', 4, 56, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'2985709c-33d3-4bcf-879e-0db5da198c77', N'mohsin@gmail.com', 0, N'ALITgYNVCBeUvjTTEZDKlvJwYVe9O8lXPcayvXXX11maNqZ98V6XOQ3YzkgnteP22g==', N'1fc565f6-a527-481a-a363-3c2bab24866e', NULL, 0, 0, NULL, 1, 0, N'mohsin@gmail.com', 4, 58, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'b3a394ff-5146-4cfd-8e1d-16d0d38b466d', N'vasudha@gmail.com', 0, N'APJTT6QgVxeftHiFqE8WRcZMtXokvqgTEm/aD0jUdWJMsxvDUwyzfPyB0sGVbgPoIQ==', N'e87e85d7-3c00-47a4-a449-cfc2e78f07c1', NULL, 0, 0, NULL, 1, 0, N'vasudha@gmail.com', 4, 60, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'8c0cfdcc-0375-4dd0-8456-605f8b8d8b8a', N'aditya@gmail.com', 0, N'AGjskpM2R3Ve1W6oJkZx1cpHyOX/gleCAONP60jzBI9lNPU1pDQINa+r/anXJgHQuA==', N'8477f734-1554-4749-b493-bcad96122de5', NULL, 0, 0, NULL, 1, 0, N'aditya@gmail.com', 4, 63, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'da0c5b44-3ebd-4fcd-af2d-3e7a0aaf95b0', N'pooja@gmail.com', 0, N'ACopobDS13oPodjeqtYmzzYOXPsr2GcRSRVeReKWk95l8kq6U0BWIcqDpkFj0ONaGQ==', N'02afe43a-9ea1-47cd-b3e7-89816108f5da', NULL, 0, 0, NULL, 1, 0, N'pooja@gmail.com', 4, 64, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'6df45dd9-0940-4a93-acbd-04af52090050', N'sunjayp88@gmail.com', 0, N'AJMj9bb5wxjrNSnnBJuBEZ/ByJt+/HXyLoFVqa2qn3mY0THZSWVZXVbkoWlGGLoYtA==', N'a750c410-b11a-4b4c-8656-17fbe1d92136', NULL, 0, 0, NULL, 1, 0, N'sunjayp88@gmail.com', 4, 65, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'380d81ed-da38-4681-85ac-ea18fb8dac82', N'vinayak@gmail.com', 0, N'AMFZAFmX5oJt5xF0OWXf4InLnQpkz6++DaRs+gjyk7RgCEh1FDhRmLqc6zcuF/m9wQ==', N'0fdde0b5-3892-420d-9edd-baabe81150e3', NULL, 0, 0, NULL, 1, 0, N'vinayak@gmail.com', 4, 70, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'befc44d4-ed35-40ff-8df8-3ff04f10c79d', N'neha@gmail.com', 0, N'ANLO0inQ2WAtLS2xv12rDL3yp4RkHWbEl1emFxOMcgnPtWsqTKXRL5XqAE0SjJmKFg==', N'dcfafb94-5471-4d80-98d0-daa1bf02a25a', NULL, 0, 0, NULL, 1, 0, N'neha@gmail.com', 4, 72, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'38ce04d3-091b-461a-89ae-2d3dbace99f1', N'swapnil@gmail.com', 0, N'AL+gAd4yCrT1ZM2o059aq0a/o1sDk7Xx8yZ3ItqMDZfY7F+g98+WL3TGaUaMhubi7Q==', N'76106167-b401-4932-bf46-88a4299a9934', NULL, 0, 0, NULL, 1, 0, N'swapnil@gmail.com', 4, 69, 1, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'74ed584d-18a0-4af9-ba3d-f8e2b5da44b0', N'sunjayp888@gmail.com', 0, N'ADr11LIgk9z/NtyO5m8vVwgbHf0a9TcWf6G5h/t+Wo7KX9q++i1l6QFNywt2QDHQQg==', N'781820f8-6320-4c5d-bcc5-6b9e5671379d', NULL, 0, 0, NULL, 1, 0, N'sunjayp888@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'9e4a9929-9385-48b2-a406-3d3d771a3355', N'sunjayp8888@gmail.com', 0, N'ADU/NrdM3v+m+KYNtQHdba1ln6hoTPK+Tqbav/9QIfLYHSyy80SWE3A+q9tPeYpMDQ==', N'dc8c074e-5069-4cbf-8c3d-83598c6b6eb4', NULL, 0, 0, NULL, 1, 0, N'sunjayp8888@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'd3b4227b-2657-4ba3-969a-024c29ec54a3', N'sunjayp123@gmail.com', 0, N'AEdX8pN3j2SZmiJpzlyqCEA2kCFpSe0JPxhWoXZtnMcLw8wTnPYxvqtP5+DvOrkU+Q==', N'83b2dd18-5275-4d7b-a40a-362aaea97cfe', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'bf630a78-e54c-461a-b776-0fb0fe6ac8c8', N'sunjayp123@gmail.com', 0, N'AJoRG3qmzCJQ2XVwchgmTNWhgNqN6pDcGW0R0SnS2twD0OIoCy+oorNGksKJh2OkPA==', N'ac67d2c4-3556-45ea-aba9-27d4b423255f', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, 74, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'77d94c37-4984-44e5-9361-112adcb26fd9', N'sunjayp123@gmail.com', 0, N'ABoKmW3eUlzV5/lQXlb9msrdhJt+uivQZYpl7H6btnhpYrEIYcOK8yCW0k6J6jInbA==', N'e7e9fd65-551c-41ec-9dd3-ee85a16c3dac', NULL, 0, 0, NULL, 1, 0, N'sunjayp123@gmail.com', NULL, 77, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [OrganisationId], [PersonnelId], [CentreId], [Name]) VALUES (N'f6ca24ce-420d-4f8c-a784-1fe1735deed4', N'sunjayp1234@gmail.com', 0, N'AKk05OrD7v10yNovyuPlMWolGt8kLUEN8T8E3j0Qf4QI3ZC2t9bSZ7j8n4GYni1Chw==', N'84070f80-d086-4ac2-ae1e-ee16ccef4a55', NULL, 0, 0, NULL, 1, 0, N'sunjayp1234@gmail.com', NULL, 78, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Centre] ON 

GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (1, N'thane', N'Rameshwaram Co. Housing Society', N'Thane', NULL, NULL, NULL, 1, 1, 1, 400602, N'bmthane@nidantech.com', 241314501, 4)
GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (2, NULL, N'test', N'test', NULL, NULL, NULL, 1, 1, 1, 123456, N'test', 1234567890, 4)
GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (3, NULL, N'Ram Anuj', N'Nagpur', NULL, NULL, NULL, 1, 1, 1, 440004, N'bmngp@nidantech.com', 9689040418, 4)
GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (4, NULL, N'Jabalpur', N'Jabalpur', NULL, NULL, NULL, 1, 1, 1, 482002, N'bmjbp@nidantech.com', 7583833555, 4)
GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (5, NULL, N'Delhi', N'Vaishali, Delhi', NULL, NULL, NULL, 1, 1, 1, 201010, N'bmvaishali@nidantech.com', 8268105386, 4)
GO
INSERT [dbo].[Centre] ([CentreId], [CentreCode], [Name], [Address1], [Address2], [Address3], [Address4], [TalukaId], [StateId], [DistrictId], [PinCode], [EmailId], [Telephone], [OrganisationId]) VALUES (6, NULL, N'Pune', N'Pune', NULL, NULL, NULL, 1, 15, 1, 123456, N'bmpune@nidantech.com', 12345678, 4)
GO
SET IDENTITY_INSERT [dbo].[Centre] OFF
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'20', N'Mr', N'TEst', N'Test', CAST(N'2017-01-04 00:00:00.0000000' AS DateTime2), 24, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'85e8ad13-c28d-480c-992f-78e1abdbc9d2@hr.com', NULL, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'21', N'Mr', N'Abc', N'B', CAST(N'2017-01-05 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'e2010454-1065-45db-954f-38b0e4d09e12@hr.com', NULL, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'22', N'Mr', N'x', N'z', CAST(N'2017-01-12 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'96a36c2a-8c00-4da8-8477-b5a4ea8af4d3@hr.com', NULL, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'23', N'Mr', N'test1', N'B', CAST(N'2017-01-12 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'0a283ac7-1216-4157-9ea0-7cc7c58a4287@hr.com', NULL, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'25', N'Mr', N'Nidan', N'B', CAST(N'2017-02-04 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'1011ed35-5c53-487a-9cb9-e90ed2453c13@hr.com', NULL, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'26', N'Mr', N'ThaneUser', N'B', CAST(N'2017-03-01 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'bmthane@nidantech.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'28', N'Mr', N'JabalpurUser', N'B', CAST(N'2017-03-01 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'ci_jbp@nidantech.com', 4, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'29', N'Mr', N'NagpurUser', N'B', CAST(N'2017-03-01 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'ci_ngp@nidantech.com', 3, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'30', N'Mr', N'DelhiUser', N'B', CAST(N'2017-03-01 00:00:00.0000000' AS DateTime2), 0, N'Address1', NULL, NULL, NULL, N'POST CODE', N'12345678', NULL, N'NZ1234567', NULL, N'bmvaishali@nidantech.com', 5, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'55', N'Ms.', N'Ragini', N'Singh', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, N'Shahapur', NULL, NULL, NULL, N'123456', N'12345678', N'7558445874', N'NZ1234567', NULL, N'ragini@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'56', N'Mr.', N'Vijay', N'Raut', CAST(N'1993-01-27 00:00:00.0000000' AS DateTime2), 0, N'KALEKAR CHAWL ONGC BLDG,12/13/3 FLR,DHARAVI,  SANT ROHIDAS MARG', NULL, NULL, NULL, N'400017', N'12345678', N'9773606038', N'NZ1234567', NULL, N'vijayraut33@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'57', N'Mrs.', N'Shubham', N'Paradkar', CAST(N'2017-05-19 09:04:33.4914320' AS DateTime2), 0, N'thane', NULL, NULL, NULL, N'400709', N'12345678', N'9870245680', N'NZ1234567', NULL, N'shubham@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'58', N'Mr.', N'Mohsin', N'Koltharkar', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, N'Kalwa', NULL, NULL, NULL, N'123456', N'12345678', N'9727810545', N'NZ1234567', NULL, N'mohsin@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'59', N'Mr.', N'Sanjay', N'Prajapati', CAST(N'2017-05-20 08:30:18.9608090' AS DateTime2), 0, N'201,SAI PRERANA,SECTOR 19,KOPAR KHAIRNE', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sanjay@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'60', N'Mrs.', N'Vasudha', N'Patil', CAST(N'2017-05-26 00:00:00.0000000' AS DateTime2), 0, N'201,SAI PRERANA,SECTOR 19,KOPAR KHAIRNE', NULL, NULL, NULL, N'400709', N'12345678', N'4545454545', N'NZ1234567', NULL, N'vasudha@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'61', N'Ms.', N'Divya', N'Thorat', CAST(N'2017-05-23 06:34:35.1144136' AS DateTime2), 0, N'Thane', NULL, NULL, NULL, N'123456', N'12345678', N'9870475011', N'NZ1234567', NULL, N'divyathorat@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'62', N'Mrs.', N'D', N'F', CAST(N'2017-05-23 06:39:44.1853688' AS DateTime2), 0, N'sion', NULL, NULL, NULL, N'123456', N'12345678', N'8702458790', N'NZ1234567', NULL, N'def@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'63', N'Mr.', N'Aditya', N'Gade', CAST(N'2017-05-23 06:50:17.4726822' AS DateTime2), 0, N'Digha', NULL, NULL, NULL, N'123456', N'12345678', N'8888888888', N'NZ1234567', NULL, N'aditya@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'64', N'Ms.', N'Pooja', N'Patil', CAST(N'2017-06-22 00:00:00.0000000' AS DateTime2), 0, N'Nerul', NULL, NULL, NULL, N'400708', N'12345678', N'7845452121', N'NZ1234567', NULL, N'pooja@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'65', N'Mr.', N'sanjay', N'Prajapati', CAST(N'2017-05-28 06:01:13.5316452' AS DateTime2), 0, N'kalyan', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sunjayp88@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'66', N'Mr.', N'sanjay', N'Prajapati', CAST(N'2017-05-28 06:18:26.4340211' AS DateTime2), 0, N'kalyan', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sunjayp88@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'67', N'Mr.', N'sanjay', N'Prajapati', CAST(N'2017-05-28 06:49:52.6319791' AS DateTime2), 0, N'kalyan', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sunjayp88@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'68', N'Mr.', N'sanjay', N'Prajapati', CAST(N'2017-05-28 07:11:26.5909171' AS DateTime2), 0, N'kalyan', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sunjayp88@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'69', N'Mr.', N'test', N't', CAST(N'2017-05-25 00:00:00.0000000' AS DateTime2), 0, N'201,SAI PRERANA,SECTOR 19,KOPAR KHAIRNE', NULL, NULL, NULL, N'442424', N'12345678', N'7777777777', N'NZ1234567', NULL, N'swapnil@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'70', N'Mr.', N'Vinayak', N'Mane', CAST(N'2017-05-28 07:30:50.3445363' AS DateTime2), 0, N'sion', NULL, NULL, NULL, N'400017', N'12345678', N'9999999999', N'NZ1234567', NULL, N'vinayak@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'71', N'Mr.', N'sanjay', N'Prajapati', CAST(N'2017-05-28 07:51:50.0238667' AS DateTime2), 0, N'kalyan', NULL, NULL, NULL, N'421306', N'12345678', N'8097537537', N'NZ1234567', NULL, N'sunjayp88@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'72', N'Mr.', N'Neha', N'Joshi', CAST(N'2017-05-23 00:00:00.0000000' AS DateTime2), 0, N'Panvel', NULL, NULL, NULL, N'123456', N'12345678', N'5465465465', N'NZ1234567', NULL, N'neha@gmail.com', 1, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'73', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp123@gmail.com', 0, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'74', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp123@gmail.com', 0, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'75', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp123@gmail.com', 0, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'76', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp123@gmail.com', 0, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'77', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp123@gmail.com', 0, NULL, NULL)
GO
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [CentreId], [CustomerId], [UserId]) VALUES (N'78', NULL, N'sanjay', N'Prajapati', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), 0, NULL, NULL, NULL, NULL, N'421306', NULL, NULL, NULL, NULL, N'sunjayp1234@gmail.com', 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Template] ON 

GO
INSERT [dbo].[Template] ([TemplateId], [Name], [FileName], [Type], [OrganisationId]) VALUES (1, N'Registration', N'Registration.html', N'html', 4)
GO
INSERT [dbo].[Template] ([TemplateId], [Name], [FileName], [Type], [OrganisationId]) VALUES (2, N'Installment', N'Installment.html', N'html', 4)
GO
INSERT [dbo].[Template] ([TemplateId], [Name], [FileName], [Type], [OrganisationId]) VALUES (3, N'Admission', N'Admission.html', N'html', 4)
GO
SET IDENTITY_INSERT [dbo].[Template] OFF
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentCategory] ([DocumentCategoryId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Personnel] FOREIGN KEY([PersonnelId])
REFERENCES [dbo].[Personnel] ([PersonnelId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Personnel]
GO
USE [master]
GO
ALTER DATABASE [Egharpay] SET  READ_WRITE 
GO
