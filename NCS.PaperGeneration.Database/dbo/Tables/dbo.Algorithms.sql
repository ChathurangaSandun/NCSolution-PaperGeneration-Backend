
CREATE TABLE [dbo].[Algorithms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
    [CreatedDate] DATETIME NOT NULL, 
    [CreatedById] INT NOT NULL, 
    [UpdatedDate] DATETIME NULL, 
    [UpdatedById] INT NULL, 
    CONSTRAINT [PK_dbo.Algorithms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
