USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Emmployee]    Script Date: 30/11/2023 09:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Emmployee]
@JobTitle nvarchar(100)
AS
CREATE TABLE #temp_emmployee (
JobTitle varchar(100),
EmmployeePerJob int,
AvAge int,
AvSalary int,
)

INSERT INTO #temp_emmployee
SELECT JobTitle , COUNT(JobTitle) , AVG(Age) , AVG(Salary)
FROM EmmployeeDemographics AS emp
join EmmployeeSalary AS sal
    ON emp.EmmployeedID = sal.employeedID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

SELECT *
FROM #temp_emmployee