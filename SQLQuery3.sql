--   -   -   -   -   JOIN   -   -   -   -   -   -

--SELECT * 
--FROM EmmployeeDemographics
--INNER JOIN EmmployeeSalary
--ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID


--SELECT * 
--FROM EmmployeeDemographics
--FULL OUTER JOIN EmmployeeSalary
--ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--SELECT * 
--FROM EmmployeeDemographics
--LEFT OUTER JOIN EmmployeeSalary
--ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID


--SELECT * 
--FROM EmmployeeDemographics
--RIGHT OUTER JOIN EmmployeeSalary
--ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID



--SELECT EmmployeeDemographics.EmmployeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--INNER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID


--SELECT EmmployeeDemographics.EmmployeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--FULL OUTER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--SELECT EmmployeeSalary.employeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--INNER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--SELECT EmmployeeSalary.employeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--RIGHT OUTER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--	SELECT EmmployeeDemographics.EmmployeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--RIGHT OUTER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--SELECT EmmployeeDemographics.EmmployeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--LEFT OUTER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID

--SELECT EmmployeeSalary.employeedID , FirstName , LastName , JobTitle , Salary 
--FROM EmmployeeDemographics
--LEFT OUTER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID


--SELECT EmmployeeDemographics.EmmployeedID , FirstName , LastName , Salary 
--FROM EmmployeeDemographics
--INNER JOIN EmmployeeSalary
--      ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID
--WHERE FirstName <> 'Itzhak' 
--order by Salary DESC


----DELETE FROM EmmployeeDemographics
----WHERE FirstName = 'Ido' OR FirstName = 'Nir';

----INSERT INTO EmmployeeDemographics VALUES
----(3031 ,'Nir' ,'Danieli' , 27 , 'Male'), 
----(3032 , 'Ido' , 'Shalom' , 26 , 'Male'),
----(3033 , 'Ido' , 'Zimels' , 29 , 'Male')
  
----INSERT INTO EmmployeeSalary VALUES 
----(3031 , 'QA' , 15000),
----(3032 , 'QA' , 12000),
----(3033 , 'QA' , 16000)

--SELECT JobTitle ,  AVG(Salary) AS SalaryAvg
--FROM EmmployeeDemographics
--INNER JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID
--WHERE JobTitle = 'QA'
--GROUP BY JobTitle 





--   -   -   -   -   UNION   -   -   -   -   -   -

----CREATE TABLE InternshipStudents
----(EmmployeedID INT,
----FirstName VARCHAR(50),
----LastName  VARCHAR(50),
----Age INT,
----Gender VARCHAR(50));

----INSERT INTO InternshipStudents VALUES
----(0100 ,'Israel' ,'Israeli' , 22 , 'Male'), 
----(0101 , 'lian' , 'David' , 21 , 'Female'),
----(0102 , 'Maya' , 'Lagziel' , 25 , 'Male'),
----(0103 , 'Shmuel' , 'Or' , 24 , 'Male'),
----(0104 , 'Osher', 'Mazuz' , 27 , 'Male'),
----(0105 , 'Adi' , 'Peri' , 23 , 'Female'),
----(0106 , 'Amit' , 'Shein' , 23 , 'Female'),
----(0107 ,'Hadar' , 'Duev' , 25 , 'Female'), 
----(0108 , 'Refael' , 'Cohen' , 26 , 'Male'),
----(0109 , 'Daniel' , 'Arzuan', 25 , 'Female'),
----(0110 , 'Or' , 'Moradov', 27 , 'Male'),
----(0111 , 'Almog' , 'Dahan', 25 , 'Male'),
----(0112 , 'Omri' , 'Rozenfeld', 26 , 'Male'),
----(0113 , 'Lotem' , 'Deri', 25 , 'Female'),
----(0114 , 'Adi' , 'Kala', 25 , 'Male'),
----(0115 , 'Yossi' , 'Parienti', 25 , 'Male')

--SELECT *
--FROM EmmployeeDemographics
--FULL OUTER JOIN InternshipStudents
--    ON EmmployeeDemographics.EmmployeedID = InternshipStudents.EmmployeedID


--SELECT *
--FROM EmmployeeDemographics
--UNION
--SELECT *
--FROM InternshipStudents

--INSERT INTO EmmployeeDemographics VALUES
--(0100 ,'Israel' ,'Israeli' , 22 , 'Male')

--SELECT *
--FROM EmmployeeDemographics
--UNION ALL
--SELECT *
--FROM InternshipStudents
--ORDER BY EmmployeedID


------SELECT EmmployeedID , FirstName , Age 
------FROM EmmployeeDemographics
------UNION ALL
------SELECT employeedID , JobTitle , Salary
------FROM EmmployeeSalary
------ORDER BY EmmployeedID



--    -   -    -    -    -   CASE   STATEMENT   -   -   -   -   - 

--INSERT INTO EmmployeeDemographics VALUES 
--(2424, 'Ofir' ,'Kriaf' , NULL , 'Male' );
 
--SELECT FirstName , LastName , Age ,
--CASE
--   WHEN AGE =  1 THEN 'BABY'
--   WHEN AGE BETWEEN 10 AND 19 THEN 'TEENAGERS'
--   WHEN AGE BETWEEN 20 AND 29 THEN 'YOUNG'
--   WHEN AGE BETWEEN 30 AND 49 THEN 'OLD'
--   ELSE 'PENSIONER'
--END
--FROM EmmployeeDemographics
--WHERE Age IS NOT NULL
--ORDER BY Age


--SELECT FirstName , LastName , JobTitle , Salary, 
--CASE
--    WHEN JobTitle = 'Data_Analyst' THEN Salary + (Salary * 0.15)
--	WHEN JobTitle = 'Product_Marketing' THEN Salary + (Salary * 0.15) 
--    WHEN JobTitle = 'Human_Resources_Manager' THEN Salary + (Salary * 0.25)
--	WHEN JobTitle = 'QA' THEN Salary + (Salary * 0.20)
--	WHEN JobTitle = 'Business_Development' THEN Salary + (Salary * 0.30)
--	ELSE Salary + (Salary * 0.10) 
--END AS SalaryAfterRaise
--FROM EmmployeeDemographics
--JOIN EmmployeeSalary
-- ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID
-- ORDER BY Salary DESC





--    -   -    -    -    -   HAVING  CLAUSE   -   -   -   -   -


--SELECT JobTitle , COUNT(JobTitle)
--FROM EmmployeeDemographics
--JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID
--GROUP BY JobTitle
--HAVING COUNT(JobTitle) > 1


--SELECT JobTitle , AVG(Salary) AS AvaregeSalary
--FROM EmmployeeDemographics
--JOIN EmmployeeSalary
--    ON EmmployeeDemographics.EmmployeedID = EmmployeeSalary.employeedID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(Salary)



--   -   -   -   -   UPDATING DATA / DELETING DATA   -   -   -   -   -   -   


--UPDATE EmmployeeDemographics
--SET EmmployeedID = 5050
--WHERE FirstName = 'NULL' AND LastName = 'ID'

--SELECT *
--FROM EmmployeeDemographics


--UPDATE EmmployeeDemographics
--SET FirstName = 'Zion' , LastName = 'Baruch' , Age = 49 , Gender = 'Male'  
--WHERE EmmployeedID = 5050 

--SELECT *
--FROM EmmployeeDemographics

--INSERT INTO EmmployeeDemographics VALUES
--(6666 , 'FOR' , 'DELET' , 66 , 'ROW')

--SELECT *
--FROM EmmployeeDemographics

--DELETE FROM EmmployeeDemographics
--WHERE FirstName = 'FOR'

--SELECT *
--FROM EmmployeeDemographics



--   -   -   -   -   ALIASING   -   -   -   -    -   -

--SELECT FirstName + ' ' + LastName AS FullName
--FROM EmmployeeDemographics

--SELECT AVG(Age) AS AverageAge
--FROM EmmployeeDemographics


--SELECT Demo.EmmployeedID , Sal.Salary
--FROM EmmployeeDemographics AS Demo
--JOIN EmmployeeSalary AS Sal
--    ON Demo.EmmployeedID = Sal.employeedID

--SELECT Demo.EmmployeedID , Demo.FirstName , Demo.LastName , Sal.Salary , Sal.JobTitle --__, Stud.Age
--FROM EmmployeeDemographics AS Demo
--LEFT JOIN EmmployeeSalary AS Sal
--    ON Demo.EmmployeedID = Sal.employeedID
--___LEFT JOIN InternshipStudents AS Stud
--___    ON Stud.EmmployeedID = EmmployeeDemographics.EmmployeedID



--   -   -   -   -   -   PARTITION BY   -   -   -   -   -   -


--SELECT FirstName , LastName , Gender , Salary ,
--COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
--FROM EmmployeeDemographics AS Demo
--JOIN EmmployeeSalary AS Sal
--   ON Demo.EmmployeedID = Sal.employeedID

--SELECT Gender , COUNT(Gender)
--FROM EmmployeeDemographics AS Demo
--JOIN EmmployeeSalary AS Sal
--   ON Demo.EmmployeedID = Sal.employeedID
--GROUP BY Gender



--   -   -   -   -   -  CTEs   -   -   -   -   -   -

--WITH CTE_Emmployee AS
--(SELECT FirstName , LastName , Gender , Salary
--,COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
--,AVG(Salary) OVER (PARTITION BY Salary) AS TotalSalary
--FROM EmmployeeDemographics AS Demo
--JOIN EmmployeeSalary AS Sal
--   ON Demo.EmmployeedID = Sal.employeedID
--WHERE Salary > '35000'
--)
--SELECT *
--FROM CTE_Emmployee



---   -   -   -   -   TEMP TABLES   -   -   -   -   -   -


--CREATE TABLE #temp_Emmployee (
--Emmployee int,
--JobTitle varchar(100),
--Salary int
--)

--SELECT *
--FROM #temp_Emmployee

--INSERT INTO #temp_Emmployee VALUES 
--('8008','Salesman', '17000')

--INSERT INTO #temp_Emmployee 
--SELECT*
--FROM EmmployeeSalary

--SELECT*
--FROM #temp_Emmployee

--DROP TABLE IF EXISTS #Temp_Emmployee2
--CREATE TABLE #Temp_Employee2
--(JobTitle varchar (50),
--EmmplyeesPerson int,
--AvgAge int, 
--AvgSalary int)

--INSERT INTO #Temp_Employee2
--SELECT JobTitle , COUNT(JobTitle),AVG(Age) , AVG(Salary)
--FROM EmmployeeDemographics AS Emp
--JOIN EmmployeeSalary AS Sal
--   ON Emp.EmmployeedID = Sal.employeedID
--GROUP BY JobTitle
 
-- SELECT * 
--FROM #TEMP_Employee2




--   -   -   -     STRING FUNCTIONS - TRIM , LTRIM , RTRIM , REPLACE , SUBSTRING , UPPER , LOWER   -    -   -


--DROP TABLE EmmployeeErrors;


--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('7000   ' ,'Jimbo', 'Halbert')
--,('  7001', 'Pamela', 'Beasely')
--,('7002', 'TOby', 'Flenderson - Fired')

--SELECT *
--FROM EmployeeErrors 

---- Using Trim, LTRIM, RTRIM

--Select EmployeeID, TRIM(employeeID) AS IDTRIM
--FROM EmployeeErrors 

--Select EmployeeID, RTRIM(employeeID) as IDRTRIM
--FROM EmployeeErrors 

--Select EmployeeID, LTRIM(employeeID) as IDLTRIM
--FROM EmployeeErrors 


---- Using Replace

--Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
--FROM EmployeeErrors


---- Using Substring

--SELECT SUBSTRING(err.FirstName , 1 , 3)
--FROM EmployeeErrors AS err


--SELECT err.FirstName , demo.FirstName
--FROM EmployeeErrors AS err
--JOIN EmmployeeDemographics AS demo
--   ON err.FirstName = demo.FirstName 



--SELECT err.FirstName , SUBSTRING(err.FirstName,1,3) , Demo.FirstName , SUBSTRING(Demo.FirstName,1,3)
--FROM EmployeeErrors AS err
--JOIN EmmployeeDemographics AS demo
--   ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)



---- Using UPPER and lower

--Select firstname, LOWER(firstname)
--from EmployeeErrors

--Select Firstname, UPPER(FirstName)
--from EmployeeErrors




--   -   -   -   -   -   STORED PROCEDURES   -   -   -   -   -   -

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM EmmployeeDemographics

--EXEC TEST


--CREATE PROCEDURE Temp_Emmployee
--AS
--CREATE TABLE #temp_emmployee (
--JobTitle varchar(100),
--EmmployeePerJob int,
--AvAge int,
--AvSalary int,
--)

--INSERT INTO #temp_emmployee
--SELECT JobTitle , COUNT(JobTitle) , AVG(Age) , AVG(Salary)
--FROM EmmployeeDemographics AS emp
--join EmmployeeSalary AS sal
--    ON emp.EmmployeedID = sal.employeedID
--GROUP BY JobTitle

--SELECT *
--FROM #temp_emmployee

--EXEC Temp_Emmployee @JobTitle = Product_Marketing



--   -   -   -   -   Subqueries (in the Select, From, and Where Statement)   -   -   -   -   - 


--Select *
--From EmmployeeSalary


-- Subquery in Select

--Select employeedID , Salary , (Select AVG(Salary) From EmmployeeSalary) as AllAvgSalary
--From EmmployeeSalary


-- How to do it with Partition By

--Select employeedID, Salary, AVG(Salary) over () as AllAvgSalary
--From EmmployeeSalary



---- Why Group By doesn't work

--Select employeedID, Salary, AVG(Salary) as AllAvgSalary
--From EmmployeeSalary
--Group By employeedID , Salary
--order by employeedID



-- Subquery in From

--Select a.employeedID, AllAvgSalary
--From 
--	(Select employeedID, Salary, AVG(Salary) over () as AllAvgSalary
--	 From EmmployeeSalary) AS a
--Order by a.employeedID


---- Subquery in Where

--Select employeedID, JobTitle, Salary
--From EmmployeeSalary
--where employeedID in (
--	Select EmmployeedID
--	From EmmployeeDemographics
--	where Age >= 30)

