CREATE TABLE EMPLOYEE_MANAGEMET(
	EMP_ID INT IDENTITY(1000,1) PRIMARY KEY,
	EMP_NAME VARCHAR(30),
	EMP_ADDRESS VARCHAR(50),
	CITY VARCHAR(10),
	PHONE VARCHAR(10),
	EMAIL VARCHAR(50),
	DATE_OF_JOINING DATE,
	GRADE VARCHAR(5),
	DEPARTMENT VARCHAR(20),
	DESIGNATION VARCHAR(20),
	GENDER VARCHAR(10),
	SALARY VARCHAR(10),
	PROFILE_PIC VARCHAR(100)
)

CREATE TABLE EMPLOYEE_MANAGEMENT_ADMIN(
	ID INT,
	ADMIN_NAME VARCHAR(30),
	ADMIN_EMAIL VARCHAR(50),
	ADMIN_PASSWORD VARCHAR(50)
)

select * from EMPLOYEE_MANAGEMET

insert into EMPLOYEE_MANAGEMENT_ADMIN values(1647,'projit','projit@gmail.com','123456')
insert into EMPLOYEE_MANAGEMENT_ADMIN values(1641,'sourav','sourav@gmail.com','123456')

select @@SERVERNAME

CREATE PROCEDURE sp_Registration(
	@EMP_NAME VARCHAR(30),
	@EMP_ADDRESS VARCHAR(50),
	@CITY VARCHAR(10),
	@PHONE VARCHAR(10),
	@EMAIL VARCHAR(50),
	@DATE_OF_JOINING DATE,
	@GRADE VARCHAR(5),
	@DEPARTMENT VARCHAR(20),
	@DESIGNATION VARCHAR(20),
	@GENDER VARCHAR(10),
	@SALARY VARCHAR(10),
	@PROFILE_PIC VARCHAR(100)
)
as 
INSERT INTO EMPLOYEE_MANAGEMET VALUES(
	@EMP_NAME,
	@EMP_ADDRESS,
	@CITY,
	@PHONE,
	@EMAIL,
	@DATE_OF_JOINING,
	@GRADE,
	@DEPARTMENT,
	@DESIGNATION,
	@GENDER,
	@SALARY,
	@PROFILE_PIC
)
GO

ALTER TABLE EMPLOYEE_MANAGEMET
ADD EMP_STATUS VARCHAR(15)


ALTER PROCEDURE sp_Emp_Grid_Update(
	@ID INT,
	@EMP_ADDRESS VARCHAR(50),
	@CITY VARCHAR(10),
	@PHONE VARCHAR(10),
	@GRADE VARCHAR(5),
	@DEPARTMENT VARCHAR(20),
	@DESIGNATION VARCHAR(20),
	@SALARY VARCHAR(10)
)
as 
UPDATE EMPLOYEE_MANAGEMET SET
	EMP_ADDRESS = @EMP_ADDRESS,
	CITY = @CITY,
	PHONE = @PHONE,
	GRADE = @GRADE,
	DEPARTMENT = @DEPARTMENT,
	DESIGNATION = @DESIGNATION,
	SALARY = @SALARY
WHERE EMP_ID = @ID
GO

ALTER TABLE EMPLOYEE_MANAGEMET
ADD STATUS VARCHAR(20)

ALTER TABLE EMPLOYEE_MANAGEMET
DROP COLUMN EMP_STATUS 