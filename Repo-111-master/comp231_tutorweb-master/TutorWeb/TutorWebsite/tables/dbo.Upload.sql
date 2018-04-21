CREATE TABLE [dbo].[Upload] (
    [UploadId] INT           IDENTITY (1, 1) NOT NULL,
    [UrlFile]  VARCHAR (500) NULL,
    [FileName] VARCHAR (50)  NULL,
    [UserId]   INT           NULL,
    [TutorId]  INT           NULL,
    PRIMARY KEY CLUSTERED ([UploadId] ASC),
    CONSTRAINT [FK_UploadUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
    CONSTRAINT [FK_UploadTutor] FOREIGN KEY ([TutorId]) REFERENCES [dbo].[Tutor] ([TutorId])
);

