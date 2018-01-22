
CREATE TABLE [dbo].[Algorithms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
     [CreatedDate] NCHAR(10) NOT NULL, 
    [CreatedBy] NCHAR(10) NOT NULL, 
    [UpdatedDate] NCHAR(10) NULL, 
    [UpdatedBy] NCHAR(10) NULL, 
    CONSTRAINT [PK_dbo.Algorithms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
