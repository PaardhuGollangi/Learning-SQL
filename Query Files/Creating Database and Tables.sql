-- Creating the Database

CREATE DATABASE College;

-- Using the "College" Database

USE College;

-- Creating Tables in the College Database

CREATE TABLE Faculty
(
    Fid int,
    Fname varchar(100),
    Qualification varchar(50),
    Deptid int
);
CREATE TABLE Student
(
    Sid int,
    Sname varchar(100),
    Branch varchar(50),
    Marks int
);
CREATE TABLE Department
(
    Deptid int,
    Dname varchar(100)
);

-- INSERTING DATA IN TABLES
-- ========================

-- Inserting data in the 'Faculty' Table

INSERT INTO Faculty
VALUES
    (1, 'Aman', 'M.Tech', 1);
INSERT INTO Faculty
VALUES
    (2, 'Vishal', 'M.Tech', 1);
INSERT INTO Faculty
VALUES
    (3, 'Priya', 'Ph.D', 2);
INSERT INTO Faculty
VALUES
    (4, 'Ravi', 'Ph.D', 3);
INSERT INTO Faculty
VALUES
    (5, 'Aarti', 'M.Tech', 2);

-- Inserting data in the 'Student' Table

INSERT INTO Student
VALUES
    (1, 'Lalit', 'IT', 75),
    (2, 'Mahesh', 'IT', 90),
    (3, 'Sagar', 'CSE', 92),
    (4, 'Arun', 'CSE', 45),
    (5, 'Sikha', 'ECE', 56),
    (6, 'Anand', 'ECE', 78),
    (7, 'Parul', 'IT', 82);

-- Insering data in the 'Department' Table

INSERT INTO Department
    (Dname,Deptid)
VALUES
    ("IT", 1);
INSERT INTO Department
    (Dname,Deptid)
VALUES
    ("CSE", 2);
INSERT INTO Department
    (Dname,Deptid)
VALUES
    ("ECE", 3);