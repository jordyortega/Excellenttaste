
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/17/2018 13:00:52
-- Generated from EDMX file: E:\excellenttaste\ExcellentTaste\Models\ExcellentTasteModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ExcellentTasteDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Bestelling_ConsumptieItem]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bestelling] DROP CONSTRAINT [FK_Bestelling_ConsumptieItem];
GO
IF OBJECT_ID(N'[dbo].[FK_Bestelling_Reservering]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bestelling] DROP CONSTRAINT [FK_Bestelling_Reservering];
GO
IF OBJECT_ID(N'[dbo].[FK_ConsumptieItem_SubConsumptie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumptieItem] DROP CONSTRAINT [FK_ConsumptieItem_SubConsumptie];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_Reservering_Klant]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reservering] DROP CONSTRAINT [FK_Reservering_Klant];
GO
IF OBJECT_ID(N'[dbo].[FK_SubConsumptie_Consumptie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ConsumptieGroep] DROP CONSTRAINT [FK_SubConsumptie_Consumptie];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[Bestelling]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bestelling];
GO
IF OBJECT_ID(N'[dbo].[Consumptie]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Consumptie];
GO
IF OBJECT_ID(N'[dbo].[ConsumptieGroep]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumptieGroep];
GO
IF OBJECT_ID(N'[dbo].[ConsumptieItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ConsumptieItem];
GO
IF OBJECT_ID(N'[dbo].[Klant]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Klant];
GO
IF OBJECT_ID(N'[dbo].[Reservering]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reservering];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Bestelling'
CREATE TABLE [dbo].[Bestelling] (
    [bestellingId] int IDENTITY(1,1) NOT NULL,
    [reserveringId] int  NOT NULL,
    [consumptieItemCode] varchar(4)  NOT NULL,
    [aantal] int  NOT NULL,
    [dateTimeBereidingConsumptie] datetime  NOT NULL
);
GO

-- Creating table 'Consumptie'
CREATE TABLE [dbo].[Consumptie] (
    [consumptieCode] varchar(3)  NOT NULL,
    [consumptieNaam] varchar(20)  NOT NULL
);
GO

-- Creating table 'ConsumptieGroep'
CREATE TABLE [dbo].[ConsumptieGroep] (
    [consumptieGroepCode] varchar(4)  NOT NULL,
    [consumptieCode] varchar(3)  NOT NULL,
    [consumptieGroepNaam] varchar(25)  NOT NULL
);
GO

-- Creating table 'ConsumptieItem'
CREATE TABLE [dbo].[ConsumptieItem] (
    [consumptieItemCode] varchar(4)  NOT NULL,
    [consumptieGroepCode] varchar(4)  NOT NULL,
    [consumptieItemNaam] varchar(30)  NOT NULL,
    [prijs] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Klant'
CREATE TABLE [dbo].[Klant] (
    [klantId] int IDENTITY(1,1) NOT NULL,
    [klantNaam] varchar(30)  NOT NULL,
    [telefoon] varchar(11)  NOT NULL,
    [status] int  NOT NULL
);
GO

-- Creating table 'Reservering'
CREATE TABLE [dbo].[Reservering] (
    [reserveringId] int IDENTITY(1,1) NOT NULL,
    [klantId] int  NOT NULL,
    [datum] datetime  NOT NULL,
    [tijd] time  NOT NULL,
    [tafel] int  NOT NULL,
    [aantalPersonen] int  NOT NULL,
    [status] int  NOT NULL,
    [datumToegevoegd] datetime  NOT NULL,
    [bonDatum] datetime  NOT NULL,
    [betalingswijze] varchar(2)  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [bestellingId] in table 'Bestelling'
ALTER TABLE [dbo].[Bestelling]
ADD CONSTRAINT [PK_Bestelling]
    PRIMARY KEY CLUSTERED ([bestellingId] ASC);
GO

-- Creating primary key on [consumptieCode] in table 'Consumptie'
ALTER TABLE [dbo].[Consumptie]
ADD CONSTRAINT [PK_Consumptie]
    PRIMARY KEY CLUSTERED ([consumptieCode] ASC);
GO

-- Creating primary key on [consumptieGroepCode] in table 'ConsumptieGroep'
ALTER TABLE [dbo].[ConsumptieGroep]
ADD CONSTRAINT [PK_ConsumptieGroep]
    PRIMARY KEY CLUSTERED ([consumptieGroepCode] ASC);
GO

-- Creating primary key on [consumptieItemCode] in table 'ConsumptieItem'
ALTER TABLE [dbo].[ConsumptieItem]
ADD CONSTRAINT [PK_ConsumptieItem]
    PRIMARY KEY CLUSTERED ([consumptieItemCode] ASC);
GO

-- Creating primary key on [klantId] in table 'Klant'
ALTER TABLE [dbo].[Klant]
ADD CONSTRAINT [PK_Klant]
    PRIMARY KEY CLUSTERED ([klantId] ASC);
GO

-- Creating primary key on [reserveringId] in table 'Reservering'
ALTER TABLE [dbo].[Reservering]
ADD CONSTRAINT [PK_Reservering]
    PRIMARY KEY CLUSTERED ([reserveringId] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [consumptieItemCode] in table 'Bestelling'
ALTER TABLE [dbo].[Bestelling]
ADD CONSTRAINT [FK_Bestelling_ConsumptieItem]
    FOREIGN KEY ([consumptieItemCode])
    REFERENCES [dbo].[ConsumptieItem]
        ([consumptieItemCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Bestelling_ConsumptieItem'
CREATE INDEX [IX_FK_Bestelling_ConsumptieItem]
ON [dbo].[Bestelling]
    ([consumptieItemCode]);
GO

-- Creating foreign key on [reserveringId] in table 'Bestelling'
ALTER TABLE [dbo].[Bestelling]
ADD CONSTRAINT [FK_Bestelling_Reservering]
    FOREIGN KEY ([reserveringId])
    REFERENCES [dbo].[Reservering]
        ([reserveringId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Bestelling_Reservering'
CREATE INDEX [IX_FK_Bestelling_Reservering]
ON [dbo].[Bestelling]
    ([reserveringId]);
GO

-- Creating foreign key on [consumptieCode] in table 'ConsumptieGroep'
ALTER TABLE [dbo].[ConsumptieGroep]
ADD CONSTRAINT [FK_SubConsumptie_Consumptie]
    FOREIGN KEY ([consumptieCode])
    REFERENCES [dbo].[Consumptie]
        ([consumptieCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubConsumptie_Consumptie'
CREATE INDEX [IX_FK_SubConsumptie_Consumptie]
ON [dbo].[ConsumptieGroep]
    ([consumptieCode]);
GO

-- Creating foreign key on [consumptieGroepCode] in table 'ConsumptieItem'
ALTER TABLE [dbo].[ConsumptieItem]
ADD CONSTRAINT [FK_ConsumptieItem_SubConsumptie]
    FOREIGN KEY ([consumptieGroepCode])
    REFERENCES [dbo].[ConsumptieGroep]
        ([consumptieGroepCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ConsumptieItem_SubConsumptie'
CREATE INDEX [IX_FK_ConsumptieItem_SubConsumptie]
ON [dbo].[ConsumptieItem]
    ([consumptieGroepCode]);
GO

-- Creating foreign key on [klantId] in table 'Reservering'
ALTER TABLE [dbo].[Reservering]
ADD CONSTRAINT [FK_Reservering_Klant]
    FOREIGN KEY ([klantId])
    REFERENCES [dbo].[Klant]
        ([klantId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Reservering_Klant'
CREATE INDEX [IX_FK_Reservering_Klant]
ON [dbo].[Reservering]
    ([klantId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------