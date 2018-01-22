
CREATE TABLE [dbo].[Choice](
	[ChoiceId] [int] IDENTITY(1,1) NOT NULL,
	[ChoiceString] [nvarchar](max) NULL,
	[Order] [int] NOT NULL,
	[IsJumble] [bit] NOT NULL,
	[CorrentOrWrong] [bit] NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Choice] PRIMARY KEY CLUSTERED 
(
	[ChoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Choice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Choice_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Choice] CHECK CONSTRAINT [FK_dbo.Choice_dbo.Question_QuestionId]
GO
