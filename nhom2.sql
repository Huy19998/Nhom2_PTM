USE [Nhom2_PTM]
GO
/****** Object:  Table [dbo].[ManagerCommet]    Script Date: 9/25/2018 7:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerCommet](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[ProjectTaskld] [uniqueidentifier] NULL,
	[Comments] [nvarchar](10) NULL,
	[IsDelated] [bit] NULL,
	[IsnAt] [datetime] NULL,
	[IsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ManagerCommet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 9/25/2018 7:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaskStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[UserStory](
	[Id] [uniqueidentifier] NOT NULL,
	[Story] [nvarchar](max) NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserStory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 09/25/2018 19:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ClientName] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[UserStory](
	[Id] [uniqueidentifier] NOT NULL,
	[Story] [nvarchar](max) NULL,
	[ProjectId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserStory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 09/25/2018 19:02:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ClientName] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NOT NULL,
	[FristName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Skills] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[ProjectTask](
	[Id] [uniqueidentifier] NOT NULL,
	[Employeeld] [uniqueidentifier] NULL,
	[TaskStartDate] [datetime] NULL,
	[TaskStatusld] [uniqueidentifier] NULL,
	[UserStoryld] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
	[InsAt] [datetime] NULL,
	[InsBy] [nvarchar](50) NULL,
	[UpdAt] [datetime] NULL,
	[UpdBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProjectTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO