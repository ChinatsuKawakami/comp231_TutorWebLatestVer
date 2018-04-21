CREATE TABLE [dbo].[Users] (
    [UserId]      INT           IDENTITY (1, 1) NOT NULL,
    [UserName]    VARCHAR (50)  NOT NULL,
    [FirstName]   VARCHAR (50)  NOT NULL,
    [LastName]    VARCHAR (50)  NOT NULL,
    [PhoneNumber] VARCHAR (10)  NOT NULL,
    [Address]     VARCHAR (50)  NOT NULL,
    [PostalCode]  VARCHAR (6)   NOT NULL,
    [Email]       VARCHAR (30)  NOT NULL,
    [Password]    VARCHAR (20)  NOT NULL,
    [userimage]   VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

