CREATE TABLE [dbo].[Forum] (
    [ForumId]  INT           IDENTITY (1, 1) NOT NULL,
    [Title]    VARCHAR (150) NOT NULL,
    [Question] VARCHAR (225) NOT NULL,
    [Answer]   VARCHAR (225) NULL,
    [UserId]   INT           NULL,
    PRIMARY KEY CLUSTERED ([ForumId] ASC),
    CONSTRAINT [FK_Forum_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

