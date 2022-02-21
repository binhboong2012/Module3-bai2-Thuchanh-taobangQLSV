Create database QuanLySinhVien;
use QuanLySinhVien;

Create table Class(
ClassID int Not Null Auto_Increment Primary Key,
ClassName varchar (60) Not Null,
StartDate datetime Not Null,
Status bit 
);
Create table Student (
StudentID int Not Null Auto_Increment Primary Key,
StudentName varchar (30) Not Null,
Address varchar (50),
Phone varchar (20),
Status bit,
ClassId int  Not Null,
Foreign Key (ClassId) References Class (ClassID)
);
Create table Subject (
SubID int Not Null Auto_Increment Primary Key,
SubName varchar (30),
Credit Tinyint Not Null Default 1 Check (Credit >= 1),
Status bit Default 1
);
Create table Mark (
MarkID int Not Null Auto_Increment Primary Key,
SubID int Not Null,
StudentID int Not Null,
Mark Float Default 0 Check (Mark Between 0 and 100),
ExamTimes Tinyint Default 1,
Unique (SubID, StudentID),
Foreign Key (SubID) References Subject(SubID),
Foreign Key (StudentID) References Student(StudentID)
);