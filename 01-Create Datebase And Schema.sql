
-- =======================
-- STEP 1: CREATE Database
-- =======================
Create Database SchoolManagementProject;
-----------------------------------------

--USE SchoolManagementProject;
--GO
--Drop Database SchoolManagementProject1; 

-- =====================
-- STEP 2: CREATE SCHEMA
-- =====================
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Academic')
BEGIN

EXEC('CREATE SCHEMA Academic');
END
GO