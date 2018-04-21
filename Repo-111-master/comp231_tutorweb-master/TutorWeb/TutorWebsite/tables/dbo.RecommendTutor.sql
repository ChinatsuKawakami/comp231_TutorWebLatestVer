CREATE TABLE [dbo].[RecommendTutor] (
    [RecommendId]      INT           IDENTITY (1, 1) NOT NULL,
    [Punctuality]      INT           NULL,
    [TeachingSkill]    INT           NULL,
    [Material]         INT           NULL,
    [PositiveAttitude] INT           NULL,
    [Helpful]          INT           NULL,
    [Comments]         VARCHAR (255) NULL,
    [UserId]           INT           NULL,
    [TutorId]          INT           NULL,
    PRIMARY KEY CLUSTERED ([RecommendId] ASC),
    CONSTRAINT [FK_Recommend_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
    CONSTRAINT [FK_Recommend_Tutor] FOREIGN KEY ([TutorId]) REFERENCES [dbo].[Tutor] ([TutorId])
);

