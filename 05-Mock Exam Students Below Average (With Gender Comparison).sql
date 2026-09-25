
------------------------------------------------
--Find Students Below Average Grade(Gender Wise)
------------------------------------------------

SELECT
G.SubjectID,
G.StudentID,
G.AssessmentType,
St.LastName,
St.Gender,
CAST(G.score*9/100 As decimal(10,1 )) Grades,
CAST(AVG(G.score*9/100) OVER(Order By Gender) As decimal(10,1 )) AveGradeGender,
(SELECT CAST(AVG(G.score*9/100)  As decimal(10,1 ))  FROM Academic.Grades G) AverageGrades
FROM Academic.Grades1 G
LEFT JOIN Academic.Students1 St
ON G.StudentID = St.StudentID
WHERE(G.score*9/100)  <  (SELECT AVG(G.score*9/100 )  FROM Academic.Grades G) AND AssessmentType = 'Mock'
