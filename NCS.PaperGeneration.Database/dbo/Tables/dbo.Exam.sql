
CREATE TABLE [dbo].[Exam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlgorithmId] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](1000) NULL,	
	[TotalQuestions] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] INT NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] INT NULL,
 CONSTRAINT [PK_dbo.Exam] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO
ALTER TABLE [dbo].[Exam] ADD  DEFAULT ((0)) FOR [AlgorithmId]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Exam_dbo.Algorithms_AlgorithmId] FOREIGN KEY([AlgorithmId])
REFERENCES [dbo].[Algorithms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_dbo.Exam_dbo.Algorithms_AlgorithmId]
GO
