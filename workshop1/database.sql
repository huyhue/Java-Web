USE [SE1408_YourID]
GO
/****** Object:  Table [dbo].[Magazine_YourID]    Script Date: 10/16/2020 4:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magazine_YourID](
	[id] [nchar](10) NULL,
	[title] [nvarchar](50) NULL,
	[publisher] [nchar](20) NULL,
	[price] [float] NULL
) ON [PRIMARY]
GO
