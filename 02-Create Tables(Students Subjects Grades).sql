--Drop Table Academic.Grades1
--Drop Table Academic.Students1
--Drop Table Academic.Subjects1

-- =====================================================
-- STEP 3: CREATE TABLE Academic.Subjects,Grades And Students 
-- =====================================================


CREATE TABLE Academic.Subjects1 (
    SubjectID INT IDENTITY(22,1) PRIMARY KEY,
    SubjectCode NVARCHAR(10) UNIQUE NOT NULL,
    SubjectName NVARCHAR(100) NOT NULL,
    TeacherName NVARCHAR(50) NOT NULL,
    YearGroup INT CHECK (YearGroup BETWEEN 7 AND 13),
);
GO

CREATE TABLE Academic.Students1 (
    StudentID INT IDENTITY(64,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')),
    YearGroup INT NOT NULL CHECK (YearGroup BETWEEN 7 AND 13),
    FormClass NVARCHAR(10) NOT NULL,
    City NVARCHAR(50),
    PostCode NVARCHAR(10),
    ParentPhone VARCHAR(20) NOT NULL,
    EnrollmentDate DATE NOT NULL DEFAULT GETDATE(),
);
GO


CREATE TABLE Academic.Grades1 (
    GradeID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Academic.Students1(StudentID),
    SubjectID INT FOREIGN KEY REFERENCES Academic.Subjects1(SubjectID),
    AssessmentType VARCHAR(20) CHECK (AssessmentType IN ('Mock', 'Final')),
    AssessmentDate DATE NOT NULL,
    Score DECIMAL(5,1),
);
GO