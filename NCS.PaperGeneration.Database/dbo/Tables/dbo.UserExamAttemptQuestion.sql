CREATE TABLE [dbo].[UserExamAttemptQuestion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserExamId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChoiceId] [int] NULL,
	[IsAnswered] [BIT] NOT NULL DEFAULT 0,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL, 
    CONSTRAINT [PK_UserExamAttemptQuestion] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_UserExamAttemptQuestion_UserExamAttempt] FOREIGN KEY (UserExamId) REFERENCES dbo.[UserExamAttempt]([Id]), 
    CONSTRAINT [FK_UserExamAttemptQuestion_Question] FOREIGN KEY (QuestionId) REFERENCES Question(Id),
) ON [PRIMARY]

GO

