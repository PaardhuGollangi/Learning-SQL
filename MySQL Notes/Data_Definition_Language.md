# Data Definition Language (DDL)

DDL consists of SQL commands that can be used to define the database schema.

It simply deals with the description of the database schema and is used to create and modify the structure of database objects in the database.

## DDL Commands

There are 6 SQL commands that comes under DDL :

1. `CREATE` : To create database and its objects (tables, views, function, index, stored procedure and triggers)
2. `DROP` : To delete objects from the database
3. `ALTER` : To alter the structure of the database.
4. `TRUNCATE` :To remove all the records from a table, including the spaces allocated for the records.
5. `RENAME` : To rename an existing object
6. `COMMENT` : To add comments to the data dictionary

### Creating Database

The SQL command to create a database :

```sql
CREATE DATABASE College;
```

### Creating Tables

Before creating any table, first we need to select the database where we want to create tables.

So, for using a database, the SQL command is :

```sql
USE College;
```

For creating `Faculty` table in the college database :

```sql
CREATE TABLE Faculty (Fid int, Fname varchar(100), Qualification varchar(50), Deptid int);
```

For creating a `Student` table :

```sql
CREATE TABLE Student (Studid int, Sname varchar(100), Branch varchar(50), Marks int);
```

For creating a `Department` table :

```sql
CREATE TABLE Department (Deptid int, Dname varchar(100));
```
