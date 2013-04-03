
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/03/2013 13:06:32
-- Generated from EDMX file: c:\users\cammard\documents\visual studio 2012\Projects\EF_5_ModelFirst\EF_5_ModelFirst\ImagesGalleryModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Gallery];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'GalleryHeaderSet'
CREATE TABLE [dbo].[GalleryHeaderSet] (
    [GalleryHeader_Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GalleryDetailSet'
CREATE TABLE [dbo].[GalleryDetailSet] (
    [GalleryDetail_Id] int IDENTITY(1,1) NOT NULL,
    [ImageSrc] nvarchar(max)  NOT NULL,
    [ImageTitle] nvarchar(max)  NOT NULL,
    [GalleryHeaderGalleryHeader_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [GalleryHeader_Id] in table 'GalleryHeaderSet'
ALTER TABLE [dbo].[GalleryHeaderSet]
ADD CONSTRAINT [PK_GalleryHeaderSet]
    PRIMARY KEY CLUSTERED ([GalleryHeader_Id] ASC);
GO

-- Creating primary key on [GalleryDetail_Id] in table 'GalleryDetailSet'
ALTER TABLE [dbo].[GalleryDetailSet]
ADD CONSTRAINT [PK_GalleryDetailSet]
    PRIMARY KEY CLUSTERED ([GalleryDetail_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GalleryHeaderGalleryHeader_Id] in table 'GalleryDetailSet'
ALTER TABLE [dbo].[GalleryDetailSet]
ADD CONSTRAINT [FK_GalleryHeaderGalleryDetail]
    FOREIGN KEY ([GalleryHeaderGalleryHeader_Id])
    REFERENCES [dbo].[GalleryHeaderSet]
        ([GalleryHeader_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GalleryHeaderGalleryDetail'
CREATE INDEX [IX_FK_GalleryHeaderGalleryDetail]
ON [dbo].[GalleryDetailSet]
    ([GalleryHeaderGalleryHeader_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------