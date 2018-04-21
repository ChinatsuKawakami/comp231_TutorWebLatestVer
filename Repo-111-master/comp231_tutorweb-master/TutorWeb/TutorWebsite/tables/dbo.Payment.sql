CREATE TABLE [dbo].[Payment] (
    [PaymentId]        INT   IDENTITY (1, 1) NOT NULL,
    [Price]            MONEY NOT NULL,
    [SubscriptionUser] BIT   NOT NULL,
    [CardNumber]       INT   NOT NULL,
    [PaymentDate]      DATE  NOT NULL,
    [UserId]           INT   NULL,
    PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    CONSTRAINT [FK_Payment_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

