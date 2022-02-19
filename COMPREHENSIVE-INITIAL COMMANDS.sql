use AdventureWorks2017

select *from [HumanResources].[Department]

--show me all the department names.

select name from HumanResources.Department

--show me all the groups

select GroupName from HumanResources.Department

select ModifiedDate from HumanResources.Department

--show me all the distinct groupname.

select distinct GroupName from HumanResources.Department

--show me all the department names that are part of manufacture

select Name, Groupname from HumanResources.Department
where GroupName = ('Manufacturing');

select Name, Groupname from HumanResources.Department
where GroupName like 'Manufacturing';

-- give all the employes from the employee table

select * from HumanResources.Employee		

-- GIVE ME  ALL THE EMPLYEE WHO HAVE A ORGLEVEL=2

SElECT * FROM humanresources.employee where Organizationlevel = 2

-- GIVE ME A LIST OF ALL EMPLOYEE WHO HAVE A ORGLEVEL = 2 OR 3

SELECT * FROM HumanResources.Employee 
WHERE OrganizationLevel = 2 or OrganizationLevel = 3
ORDER BY ORGANIZATIONLEVEL

SELECT * FROM HumanResources.Employee 
WHERE OrganizationLevel IN (2,3)
ORDER BY ORGANIZATIONLEVEL ASC

--GIVE ME A LIST OF EMPLOYEES THAT HAVE THE TITLE FACILITIES MANAGER

SELECT * FROM HumanResources.Employee
WHERE JOBTITLE LIKE 'FACILITIES%'

SELECT * FROM HumanResources.Employee
WHERE JOBTITLE LIKE '%MANAGER'

SELECT * FROM HumanResources.Employee
WHERE JOBTITLE LIKE '%CONTROL%'

--GIVE ME ALL EMPLYEES WHO ARE BORN AFTER 1980

SELECT * FROM HumanResources.Employee
WHERE BirthDate > '1980-01-01'
ORDER BY BirthDate ASC

--GIVE ME ALL EMPLOYEES WHO ARE BORN BETWEEN JAN 1 1970 AND JAN 1 1980

SELECT * FROM HumanResources.Employee
WHERE BirthDate > '1970-01-01' AND BirthDate < '1980-01-01'
ORDER BY BirthDate ASC

SELECT * FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1/1/1970' AND '1/1/1980'
ORDER BY BirthDate DESC

--CALCULATED COLUMNS

SELECT Name, ListPrice FROM Production.Product

SELECT NAME, LISTPRICE, LISTPRICE+10 AS ADJUSTED_PRICE FROM Production.Product 

SELECT NAME, LISTPRICE,LISTPRICE+20 AS ADJUSTED_PRICE FROM PRODUCTION.Product

-- INTO CLAUSE

SELECT NAME, LISTPRICE,LISTPRICE+20 AS ADJUSTED_PRICE 
INTO PRODUCTION.PRODUCT_2 
FROM Production.Product

SELECT * FROM Production.PRODUCT_2

--USING  TEMPORARY TABLE THAT SURVIVES JUST WHILE YOU ARE IN THAT SESION IT IS NOT SAVED
SELECT NAME, LISTPRICE,LISTPRICE+20 AS ADJUSTED_PRICE 
INTO #TMPNAME 
FROM Production.Product

SELECT * FROM #TMPNAME

--DELETE DATA FROM A TABLE

DELETE FROM Production.PRODUCT_2
WHERE NAME LIKE 'Bearing Ball'

SELECT * FROM Production.PRODUCT_2

-- UPDATE STATEMENT

UPDATE Production.PRODUCT_2
SET NAME = 'BLADE_NEW'
WHERE NAME LIKE 'BLADE'

SELECT * FROM Production.PRODUCT_2

UPDATE Production.PRODUCT_2
SET NAME = 'Crankarm_JUV'
WHERE NAME = 'LL Crankarm'

SELECT * FROM Production.PRODUCT_2


