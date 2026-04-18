-- =============================================
-- Script: DataWarehouse Initialization
-- =============================================

-- Purpose:
-- Drops existing DataWarehouse database (if it exists) and recreates it
-- with a clean structure, including bronze, silver, and gold schemas
-- for layered data processing.


USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
