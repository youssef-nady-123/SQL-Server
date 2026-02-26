-- BACKUP DATABASE MyDatabase
-- This command tells SQL Server to create a backup of the database named 'MyDatabase'.

-- TO DISK = 'D:\\MyDatabase.bak'
-- Specifies the location and file name where the backup will be saved.
-- In this case, the backup will be written to 'D:\MyDatabase.bak'.

-- WITH FORMAT
-- Instructs SQL Server to overwrite any existing backup file at the destination.
-- It formats the backup media, ensuring a fresh backup set.

-- MEDIANAME = 'YourDatabaseBackup'
-- Assigns a name to the backup media set.
-- Useful for identifying the backup in SQL Server, especially when using multiple backups on the same media.

-- NAME = 'MyDatabase'
-- Provides a name for the specific backup set.
-- Helps identify this particular backup in case multiple backups exist on the same media.

BACKUP DATABASE MyDatabase
TO DISK = 'D:\\MyDatabase.bak'
WITH FORMAT, 
     MEDIANAME = 'YourDatabaseBackup', 
     NAME = 'MyDatabase';