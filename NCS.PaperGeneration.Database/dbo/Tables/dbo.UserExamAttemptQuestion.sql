CREATE TABLE [dbo].[UserExamAttemptQuestion](
	[ExamId] [int] NOT NULL,
	[LoginUserId] [int] NOT NULL,
	[Attempt] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChoiceId] [int] NULL,
	[IsAnswered] [BIT] NOT NULL DEFAULT 0,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.UserExamAttemptQuestion] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[LoginUserId] ASC,
	[Attempt] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

GO

GO
ALTER TABLE [dbo].[UserExamAttemptQuestion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttemptQuestion_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttemptQuestion] CHECK CONSTRAINT [FK_dbo.UserExamAttemptQuestion_dbo.Question_QuestionId]
GO
ALTER TABLE [dbo].[UserExamAttemptQuestion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttemptQuestion_dbo.UserExamAttempt_ExamId_LoginUserId_Attempt] FOREIGN KEY([ExamId], [LoginUserId], [Attempt])
REFERENCES [dbo].[UserExamAttempt] ([ExamId], [LoginUserId], [Attempt])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttemptQuestion] CHECK CONSTRAINT [FK_dbo.UserExamAttemptQuestion_dbo.UserExamAttempt_ExamId_LoginUserId_Attempt]
GO
