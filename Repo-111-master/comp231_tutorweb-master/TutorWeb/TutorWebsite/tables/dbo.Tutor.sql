CREATE TABLE [dbo].[Tutor] (
    [TutorId]         INT             IDENTITY (1, 1) NOT NULL,
    [FirstName]       VARCHAR (50)    NOT NULL,
    [LastName]        VARCHAR (50)    NOT NULL,
    [PhoneNumber]     VARCHAR (10)    NOT NULL,
    [Address]         VARCHAR (50)    NOT NULL,
    [PostalCode]      VARCHAR (6)     NOT NULL,
    [Email]           VARCHAR (30)    NOT NULL,
    [Rate]            INT             NULL,
    [subjectId]       INT             NOT NULL,
    [tutorimage]      VARBINARY (MAX) NULL,
    [image]           VARCHAR (MAX)   NULL,
    [tutor_loginname] VARCHAR (30)    NULL,
    [password]        VARCHAR (20)    NULL,
    PRIMARY KEY CLUSTERED ([TutorId] ASC)
);

