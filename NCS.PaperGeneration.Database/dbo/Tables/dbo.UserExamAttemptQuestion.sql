CREATE TABLE [dbo].[UserExamAttemptQuestion](
	[ExamId] [int] NOT NULL,
	[LoginUserId] [int] NOT NULL,
	[Attempt] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChoiceId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserExamAttemptQuestion] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[LoginUserId] ASC,
	[Attempt] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserExamAttemptQuestion] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserExamAttemptQuestion] ADD  DEFAULT NULL FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[UserExamAttemptQuestion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttemptQuestion_dbo.Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
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
