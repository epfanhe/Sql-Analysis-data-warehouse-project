/*
==========================================================================
Create Databases and Schemas
==========================================================================

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it alreadt exists.
if the databases exists, it is dropped and recreated . Additionally , the script sets up three schemas 
within the database : 'bronze', 'silver'and 'gold'.

WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will permanently deleted . Proceed with caution 
and ensure you have proper backups before running this script.
*/

USE master;
GO

	--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE  name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
	GO
	--Create Database 'DataWarehouse

CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO
Create SCHEMA bronze;
GO
Create SCHEMA silver;
GO
Create SCHEMA gold;
