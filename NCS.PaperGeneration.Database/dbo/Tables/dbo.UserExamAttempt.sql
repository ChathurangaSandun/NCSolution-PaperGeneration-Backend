
CREATE TABLE [dbo].[UserExamAttempt](
	[ExamId] [int] NOT NULL,
	[LoginUserId] [int] NOT NULL,
	[Attempt] [int] NOT NULL,
	[Marks] [int] NOT NULL,
	[PassofFail] [bit] NOT NULL,
	[ExamDate] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](256) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserExamAttempt] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC,
	[LoginUserId] ASC,
	[Attempt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserExamAttempt] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserExamAttempt] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[UserExamAttempt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttempt_dbo.Exam_ExamId] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttempt] CHECK CONSTRAINT [FK_dbo.UserExamAttempt_dbo.Exam_ExamId]
GO
ALTER TABLE [dbo].[UserExamAttempt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExamAttempt_dbo.LoginUser_LoginUserId] FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[LoginUser] ([LoginUserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserExamAttempt] CHECK CONSTRAINT [FK_dbo.UserExamAttempt_dbo.LoginUser_LoginUserId]
GO
