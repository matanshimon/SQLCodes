--SELECT TOP (1000) [EmmployeedID]
--      ,[FirstName]
--      ,[LastName]
--      ,[Age]
--      ,[Gender]
--FROM [SQLTutorial].[dbo].[EmmployeeDemographics]



--  -   -   -   -   SELECT   -   -   -   -   -   -


--SELECT *
--FROM EmmployeeDemographics


--SELECT FirstName,LastName
--FROM EmmployeeDemographics


--SELECT TOP 5*
--FROM EmmployeeDemographics


--SELECT DISTINCT(EmmployeedID)
--FROM EmmployeeDemographics


--SELECT DISTINCT(Gender)
--FROM EmmployeeDemographics


--SELECT COUNT(LastName) AS LastNameCount
--FROM EmmployeeDemographics


--SELECT MAX / MIN / AVG /(Salary)
--FROM EmmployeeSalary




--   -   -    -    -   WHEN IM ON MASTER   -   -   -   -   -

--SELECT *
--FROM SQLTutorial.dbo.EmmployeeDemographics





--    -    -    -    -   -   WHERE   -   -    -    -    -    -


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName = 'Shaked'


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName <> 'Shaked'


--SELECT *
--FROM EmmployeeDemographics
--WHERE LastName = 'shimon'


--SELECT *
--FROM EmmployeeDemographics
--WHERE LastName <> 'shimon


--SELECT *
--FROM EmmployeeSalary
--WHERE Salary > 50000


--SELECT *
--FROM EmmployeeDemographics
--WHERE Age <= 20


--SELECT *
--FROM EmmployeeDemographics
--WHERE Age <= 20 AND Gender = 'Male'


--SELECT *
--FROM EmmployeeDemographics
--WHERE Age > 25 OR LastName = 'Eliyahu'


--SELECT *
--FROM EmmployeeDemographics
--WHERE LastName LIKE 'S%' 


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName LIKE '%M%'


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName LIKE 'M%A'

--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName LIKE 'M%A%'


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName IS NULL

--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName IS  NOT NULL

--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName IN ('Matan', 'Shaked')


--SELECT *
--FROM EmmployeeDemographics
--WHERE FirstName IN ('Matan', 'Shaked') OR LastName IN ('Rozen')


--    -    -    -    -    -   GROUP BY   -   -   -   -   -


--SELECT DISTINCT (Gender)
--FROM EmmployeeDemographics


--SELECT Gender
--FROM EmmployeeDemographics
--GROUP BY Gender


--SELECT Gender  , COUNT (Gender) AS NumOfGender
--FROM EmmployeeDemographics
--GROUP BY Gender 

--SELECT Gender  , Age , COUNT (Gender) AS NumOfGender
--FROM EmmployeeDemographics
--GROUP BY Gender , Age   

--SELECT Gender  , COUNT (Gender) AS NumOfGender
--FROM EmmployeeDemographics
--WHERE Age > 26
--GROUP BY Gender (ASC/DESC)


----    -    -     -    ORDER BY    -    -    -    -    -   


--SELECT Gender  , COUNT (Gender) AS NumOfGender
--FROM EmmployeeDemographics
--WHERE Age > 26
--GROUP BY Gender
--ORDER BY NumOfGender

--SELECT *
--FROM EmmployeeDemographics
--ORDER BY  Age , FirstName DESC , Gender

--SELECT *
--FROM EmmployeeDemographics
--ORDER BY  1,2,3,4,5


