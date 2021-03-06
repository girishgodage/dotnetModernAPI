USE [ModernAPIDB]
GO
/****** Object:  Table [dbo].[AssignedRoles]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedRoles](
	[AssignedRoleId] [smallint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[RoleId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_AssignedRoles] PRIMARY KEY CLUSTERED 
(
	[AssignedRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[LandlineNo] [varchar](20) NULL,
	[EmailId] [nvarchar](100) NULL,
	[Street] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Pincode] [varchar](8) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MoviesID] [int] IDENTITY(1,1) NOT NULL,
	[Director] [varchar](100) NULL,
	[Genre] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[ReleaseYear] [int] NULL,
	[Rating] [varchar](10) NULL,
	[MovieLength] [varchar](10) NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MoviesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NLog]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [nvarchar](200) NULL,
	[Logged] [datetime] NOT NULL,
	[Level] [varchar](5) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Logger] [nvarchar](300) NULL,
	[Properties] [nvarchar](max) NULL,
	[Callsite] [nvarchar](300) NULL,
	[Exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordHistory]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordHistory](
	[PasswordHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[PasswordHash] [varchar](300) NULL,
	[CreatedDate] [datetime] NULL,
	[UserId] [bigint] NULL,
	[ProcessType] [char](1) NULL,
 CONSTRAINT [PK_PasswordHistory] PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[EmailId] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Gender] [char](1) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [bigint] NULL,
	[IsFirstLogin] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsFirstLoginDate] [datetime] NULL,
	[PasswordHash] [varchar](300) NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokenHistory]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokenHistory](
	[UserTokenHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[PasswordSalt] [varchar](100) NULL,
	[UserId] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserTokenHistory] PRIMARY KEY CLUSTERED 
(
	[UserTokenHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[HashId] [int] IDENTITY(1,1) NOT NULL,
	[PasswordSalt] [varchar](100) NULL,
	[UserId] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[HashId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AssignedRoles] ON 

INSERT [dbo].[AssignedRoles] ([AssignedRoleId], [UserId], [RoleId], [CreateDate], [Status]) VALUES (1, 1, 2, CAST(N'2020-12-12T12:09:22.073' AS DateTime), 1)
INSERT [dbo].[AssignedRoles] ([AssignedRoleId], [UserId], [RoleId], [CreateDate], [Status]) VALUES (2, 2, 1, CAST(N'2020-12-14T12:38:34.773' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[AssignedRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Customer_ID], [FirstName], [LastName], [MobileNo], [LandlineNo], [EmailId], [Street], [City], [State], [Pincode], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'Saineshwar', N'Bageri', N'9998887778', N'2222222222', N'saibacks@gmail.com', N'Mumbai street', N'Mumbai City', N'Maharashtra', N'400001', CAST(N'2020-12-20T13:19:23.103' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (2, N'Ron Clements', N'Animation', N'Moana', 2016, N'7.6', N'1h 47min', N'Moana')
INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (3, N'Peter Sohn', N'Animation | Adventure | Comedy | Drama | Family | Fantasy', N'The Good Dinosaur', 2015, N'6.7', N'1h 33min', N'The Good Dinosaur')
INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (4, N' Byron Howard, Rich Moore', N'Animation | Adventure | Comedy | Crime | Family | Mystery', N'Zootopia', 2016, N'8.0', N'1h 48min', N'Zootopia')
INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (5, N'Andrew Stanton, Angus MacLane', N'Animation | Adventure | Comedy | Family', N'Finding Dory', 2016, N'7.3', N'1h 37min', N'Finding Dory')
INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (6, N'Josh Cooley', N'Animation | Adventure | Comedy | Family | Fantasy', N'Toy Story 4', 2019, N'7.8', N'1h 40min', N'Toy Story 4')
INSERT [dbo].[Movies] ([MoviesID], [Director], [Genre], [Title], [ReleaseYear], [Rating], [MovieLength], [Name]) VALUES (7, N'Brad Bird', N'Animation | Action | Adventure | Comedy | Family | Sci-Fi', N'Incredibles 2', 2018, N'7.6', N'1h 58min', N'Incredibles 2')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 

INSERT [dbo].[RoleMaster] ([RoleID], [RoleName], [Status], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'SuperAdmin', 1, CAST(N'2020-12-12T11:16:27.140' AS DateTime), NULL, 1, 0)
INSERT [dbo].[RoleMaster] ([RoleID], [RoleName], [Status], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (2, N'User', 1, CAST(N'2020-12-12T11:16:27.140' AS DateTime), NULL, 1, 0)
INSERT [dbo].[RoleMaster] ([RoleID], [RoleName], [Status], [CreatedOn], [ModifiedOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'Admin', 1, CAST(N'2020-12-12T11:16:27.140' AS DateTime), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([UserId], [UserName], [FirstName], [LastName], [EmailId], [MobileNo], [Gender], [Status], [CreatedBy], [IsFirstLogin], [CreatedOn], [ModifiedOn], [IsFirstLoginDate], [PasswordHash], [ModifiedBy]) VALUES (1, N'demouser', N'Girish', N'Godage', N'demouser@modern.com', N'9999999999', N'M', 1, 1, 0, CAST(N'2020-12-12T12:09:22.073' AS DateTime), NULL, CAST(N'2020-12-12T12:09:22.073' AS DateTime), N'CD631EAAE26009AF3739406A5EC45F11EEE1999FDF9B2970357D4B1BB6584BA6347C379BE4FC9E3DC5D2B5D290B7554C554D09812086A80B4EDEFAF4571B9D39', NULL)
INSERT [dbo].[UserMaster] ([UserId], [UserName], [FirstName], [LastName], [EmailId], [MobileNo], [Gender], [Status], [CreatedBy], [IsFirstLogin], [CreatedOn], [ModifiedOn], [IsFirstLoginDate], [PasswordHash], [ModifiedBy]) VALUES (2, N'demoadmin', N'demoadmin', N'demoadmin', N'demoadmin@modern.com', N'9998889998', N'M', 1, 1, 0, CAST(N'2020-12-14T12:38:33.283' AS DateTime), NULL, NULL, N'7FFB8318E6EFAF9605054E8B11C9BBA7692CE1C714BD2001530A130BF360F8E1DE60D9F44400D2C43F3BDF76CACF6CD812352A13F450C6AF1719BEAC79EDF442', NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTokens] ON 

INSERT [dbo].[UserTokens] ([HashId], [PasswordSalt], [UserId], [CreatedOn], [ModifiedOn]) VALUES (1, N'85946111912245424965', 1, CAST(N'2020-12-12T12:09:22.073' AS DateTime), NULL)
INSERT [dbo].[UserTokens] ([HashId], [PasswordSalt], [UserId], [CreatedOn], [ModifiedOn]) VALUES (2, N'05632856886986102473', 2, CAST(N'2020-12-14T12:38:35.770' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserTokens] OFF
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_IsFirstLogin]  DEFAULT ((0)) FOR [IsFirstLogin]
GO
/****** Object:  StoredProcedure [dbo].[NLog_Procedure]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NLog_Procedure] (
  @machineName nvarchar(200),
  @logged datetime,
  @level varchar(5),
  @message nvarchar(max),
  @logger nvarchar(300),
  @properties nvarchar(max),
  @callsite nvarchar(300),
  @exception nvarchar(max)
) AS
BEGIN
  INSERT INTO [dbo].[NLog] (
    [MachineName],
    [Logged],
    [Level],
    [Message],
    [Logger],
    [Properties],
    [Callsite],
    [Exception]
  ) VALUES (
    @machineName,
    @logged,
    @level,
    @message,
    @logger,
    @properties,
    @callsite,
    @exception
  )

  end
GO
/****** Object:  StoredProcedure [dbo].[Usp_InsertCustomer]    Script Date: 23-12-2020 3.03.14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Usp_InsertCustomer]
    @FirstName NVARCHAR(100),
    @LastName NVARCHAR(100),
    @MobileNo VARCHAR(20),
    @LandlineNo VARCHAR(20),
    @EmailId NVARCHAR(100),
    @Street NVARCHAR(100),
    @City NVARCHAR(100),
    @STATE NVARCHAR(100),
    @Pincode VARCHAR(8),
    @CreatedBy BIGINT
AS
BEGIN

    INSERT INTO [dbo].[Customers]
    (
        [FirstName],
        [LastName],
        [MobileNo],
        [LandlineNo],
        [EmailId],
        [Street],
        [City],
        [State],
        [Pincode],
        [CreatedOn],
        [CreatedBy]
    )
    VALUES
    (@FirstName, @LastName, @MobileNo, @LandlineNo, @EmailId, @Street, @City, @STATE, @Pincode, GETDATE(), @CreatedBy);
END;
GO
