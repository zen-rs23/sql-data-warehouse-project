/*
-----------------------------
Database & Schemas Creation
-----------------------------

Script Purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists or not.
    If the database exists, it is dropped and recretaed. 
    The script also contains creation of three different schemas namely "Bronze", "Silver" & "Gold".

Note: 
    Running this script will drop the entire 'Datawarehouse' database if it already exists. All data will 
    be erased permanently. Proceed with caution and ensure you have proper backup before running the script
*/


-- Creating Database 'DataWarehouse'
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
