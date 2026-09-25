/*View Table that joins Grades, Students, and Subjects.
Converts raw scores to 20-point scale, assigns mock/final exam dates,
and handles NULL student names. */
----------------------------------
-- CREATE VIEW As a Virtual Tables 
----------------------------------- ======
--Drop VIEW Academic.ViewGradeStudentSubjects1
CREATE VIEW Academic.ViewGradeStudentSubjects1 AS (
SELECT
G.GradeID,
G.StudentID,
G.SubjectID,
G.AssessmentType,
CAST(G.Score*20/100 As Decimal(10,1)) As Grade_Of_20,
CASE 
 When AssessmentType ='Mock' Then  DATEFROMPARTS(YEAR(GETDATE()), 3, 10)
 When AssessmentType ='Final' Then DATEFROMPARTS(YEAR(GETDATE()), 5, 15)
 END ExamDate,
COALESCE(S.FirstName,'') +'_'+ COALESCE(S.LastName,'') StudentName,
S.Gender,
S.FormClass,
S.ParentPhone,
Sb.SubjectCode,
Sb.SubjectName
FROM Academic.Grades1 G
LEFT JOIN Academic.Students1 S
ON G.StudentID = S.StudentID
LEFT JOIN Academic.Subjects1 Sb
ON G.SubjectID = Sb.SubjectID);

GO

--------------------------------------
--Query View (Show Virtual Table Data)
--------------------------------------

SELECT* 
FROM Academic.ViewGradeStudentSubjects1;

--------------------------------------------------
--Convert View to Physical Table (Materialization)
--------------------------------------------------
Go
SELECT*
INTO Academic.GradeStudentSubjects
FROM Academic.ViewGradeStudentSubjects1;
