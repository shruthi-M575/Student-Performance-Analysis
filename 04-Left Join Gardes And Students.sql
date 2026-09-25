
-------------------------------------
--Filter students with score above 68
-------------------------------------

SELECT
ASt.StudentID,
AGr.AssessmentDate,
AGr.AssessmentType,
ASt.FirstName,
ASt.LastName,
Score
FROM Academic.Grades1 AGr
LEFT JOIN Academic.Students1 ASt
ON AGr.StudentID=ASt.StudentID
WHERE Score >68