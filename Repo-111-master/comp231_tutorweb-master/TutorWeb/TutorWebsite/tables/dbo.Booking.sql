CREATE TABLE [dbo].[Booking] (
    [BookingId]  INT      IDENTITY (1, 1) NOT NULL,
    [Time]       DATETIME NULL,
    [TimeStatus] BIT      NULL,
    [UserId]     INT      NULL,
    [TutorId]    INT      NULL,
    PRIMARY KEY CLUSTERED ([BookingId] ASC),
    CONSTRAINT [FK_Booking_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
    CONSTRAINT [FK_Booking_Tutor] FOREIGN KEY ([TutorId]) REFERENCES [dbo].[Tutor] ([TutorId])
);

