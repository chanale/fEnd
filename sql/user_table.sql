USE [library]
GO
/****** Object:  Table [dbo].[user_table]    Script Date: 12/18/2018 11:40:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_table](
	[user_id] [varchar](20) NOT NULL,
	[user_pwd] [varchar](20) NOT NULL,
	[user_name] [varchar](10) NOT NULL,
	[user_sex] [nchar](2) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[max_borrow] [int] NOT NULL,
	[email] [varchar](20) NULL,
	[tel] [nchar](11) NULL,
	[address] [varchar](50) NULL,
 CONSTRAINT [PK_user_table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_user_table_max_borrow]    Script Date: 12/18/2018 11:40:35 ******/
ALTER TABLE [dbo].[user_table] ADD  CONSTRAINT [DF_user_table_max_borrow]  DEFAULT ((5)) FOR [max_borrow]
GO
