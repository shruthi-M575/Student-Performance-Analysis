-- ======
-- STEP 4: Transferring Data To Tables 
-- ======

----------
--STUDENTS
----------

INSERT INTO Academic.Students1 ( FirstName, LastName, DateOfBirth, Gender, YearGroup, FormClass,  City,
PostCode, ParentPhone,  EnrollmentDate) VALUES('Oliver','Smith','2012-03-15','M',8,'8A',
'London',	'SW1A 1AA'	,'7700123401',	'2023-09-01'),
('Amelia','Johnson','2012-05-22','F',8	,'8A','London',	'SW1A 2BB',	'7700123402', 	'2023-09-01'),
('George','Williams',	'2012-01-10',	'M',	8	,'8A',	'London','SW1A 3CC','7700123403', '2023-09-01')

SELECT* FROM Academic.Students1;

GO

----------
--SUBJECTS
----------

INSERT INTO Academic.Subjects1 (SubjectCode, SubjectName,TeacherName, YearGroup)
VALUES( 'MATH01','Mathematics',	'Mr.Tamson',8),
('ENGL01','English','Miss.Mary',8),
('SCI01','Science','Miss.Felorans',8),
('HIST01','History','Mr.William',8),
('GEOG01','Geography','Mr.Edward',8 )
SELECT*
FROM Academic.Subjects1;

GO

--------
--GRADES
--------

INSERT INTO Academic.Grades1 (StudentID,SubjectID, AssessmentType, AssessmentDate, Score)
VALUES(64,22,'Mock','2026-03-22',79), (65,25,'Mock','2026-03-22',59),(66,22,'Mock','2026-03-22',69)

SELECT*
FROM Academic.Grades1;