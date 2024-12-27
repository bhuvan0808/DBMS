CREATE TABLE EMPL
(EMPL_ID varchar (10) PRIMARY KEY,
Name varchar (50),Age int CHECK(Age>0), Salary int,
Department varchar (50));
Select * from EMPL;

INSERT INTO EMPL values('EXE1001','Aditya',25,30000,'Executive');
INSERT INTO EMPL values('ACC1002','Aditya',28,31000,'Accountant');
INSERT INTO EMPL values('SAL1003','Priyanka',30,32000,'Salesman');
INSERT INTO EMPL values('EXE1004','Anmol',35,31000,'Executive');
INSERT INTO EMPL values('ACC1005','Rahul',31,29000,'Accountant');
INSERT INTO EMPL values('SAL1006','Shubham',29,27000,'Salesman');
INSERT INTO EMPL values('SAL1007','Sam',33,32000,'Salesman');
INSERT INTO EMPL values('SAL1008','Rohan',33,28000,'Salesman');
INSERT INTO EMPL values('ACC1009','Priya',23,35000,'Accountant');
INSERT INTO EMPL values('EXE1010','Kabir',29,26000,'Executive');
select * from EMPL;

select Name from EMPL where age<30;

select EMPL_ID,Name from EMPL where salary <32000 and age<=30;

select Name from EMPL where Age>30 or Salary>35000;

DELETE FROM EMPL WHERE Name = 'Priya';
Select * from EMPL;

ALTER TABLE EMPL ADD Job_Code VARCHAR(20)
Select*from EMPL;


update EMPL set Job_Code='AC01' where EMPL_ID='ACC1002';
update EMPL set Job_Code='SA01' where EMPL_ID='ACC1005';
update EMPL set Job_Code='EX02' where EMPL_ID='EXE1001';
update EMPL set Job_Code='AC02' where EMPL_ID='EXE1004';
update EMPL set Job_Code='SA02' where EMPL_ID='EXE1010';
update EMPL set Job_Code='SA03' where EMPL_ID='SAL1003';
update EMPL set Job_Code='SA04' where EMPL_ID='SAL1006';
update EMPL set Job_Code='AC03' where EMPL_ID='SAL1007';
update EMPL set Job_Code='EX03' where EMPL_ID='SAL1008';
Select*from EMPL;

ALTER TABLE EMPL ADD DOB date;
Select*from EMPL;

UPDATE EMPL SET DOB = '1997-02-03' WHERE Name ='Aditya';
UPDATE EMPL SET DOB ='1994-08-01' WHERE Name ='Aditya';
UPDATE EMPL SET DOB = '1992-11-17' WHERE Name ='Priyanka';
UPDATE EMPL SET DOB ='1987-08-14' WHERE Name ='Anmol';
UPDATE EMPL SET DOB = '1991-01-31' WHERE Name ='Rahul';
UPDATE EMPL SET DOB = '1989-07-06' WHERE Name ='Rohan';
UPDATE EMPL SET DOB = '1989-06-12' WHERE Name ='Sam';
UPDATE EMPL SET DOB = '1993-05-12' WHERE Name ='shubham';
UPDATE EMPL SET DOB = '1993-09-27' WHERE Name ='Kabir';
Select*from EMPL;

ALTER TABLE EMPL ALTER COLUMN Department varchar(80);
select *from EMPL;

Select Job_Code, Name, datediff( YY, DOB, getdate()) as age from EMPL;

EXEC sp_rename 'EMPL.Salary', 'Net_Salary', 'COLUMN';

Delete from EMPL where EMPL_ID='EXE1010';
select *from EMPL;


select getdate();

CREATE login login2 with PASSWORD = '12345678';
CREATE user new_user2 for LOGIN login2;