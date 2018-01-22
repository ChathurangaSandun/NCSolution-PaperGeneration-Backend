
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionContent] [nvarchar](max) NULL,
	[Explantion] [nvarchar](max) NULL,
	[NumberOfChoices] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[CanRandomizeChoices] [bit] NOT NULL,
	[DifficultyLevel] [int] NOT NULL,
	[Language] [nvarchar](max) NULL,
	[Tag] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
	[SectionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Question] ADD  DEFAULT ((0)) FOR [SectionId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Question_dbo.Sections_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Sections] ([SectionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_dbo.Question_dbo.Sections_SectionId]
GO
