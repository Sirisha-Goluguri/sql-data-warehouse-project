/*
======================================================
create database and Schemas 
=======================================================
Script purpose:
 
This scripts creates new database named 'DataWarehouse' after checking if it already exits.
If the database exits, it is dropped and recreated. 
Additionally this script set ups three schemas with in the database: 'bronze','silver','gold'.

Warning:

Running this script will drop entire database 'DataWarehouse' is exists.
All data in the database will be permanently deleted.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO


CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
