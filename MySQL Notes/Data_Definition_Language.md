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
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT
  );
```

For creating a `Student` table :

```sql
CREATE TABLE student
  (
     studid INT,
     sname  VARCHAR(100),
     branch VARCHAR(50),
     marks  INT
  );
```

For creating a `Department` table :

```sql
CREATE TABLE department
  (
     deptid INT,
     dname  VARCHAR(100)
  );
```

#### Creating Table with Constraints

Constraints are nothing but the restrictions applied to table columns.

Various types of constraints are :

1. `NULL` or, `NOT NULL`
2. `UNIQUE`
3. `DEFAULT`
4. `AUTO_INCREMENT`
5. `CHECK`

##### `NOT NULL` Constraint :

This constraint forces the values of a column to be non-null values,i.e., none of the elements of this column can remain blank.

**_Syntax :_**

```sql
col_name datatype NOT NULL;
```

**_Example :_**
Creating `Faculty` table in the college database with `Fname` column as `NOT NULL`:

```sql
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100) NOT NULL,
     qualification VARCHAR(50),
     deptid        INT
  );
```

To make the column of an existing table as `NOT NULL` :

- Check whether that column has any null value or, not.

- If the column has some null values then, first we need to update those null values into some suitable non-null values.

- After ensuring that the column doesn't contain any null values, we can safely assign the `NOT NULL` constraint to it.

##### `UNIQUE` Constraint :

This constraint forces the values of a column to be unique.

**_Syntax :_**

```sql
col_name datatype UNIQUE;
```

To apply `UNIQUE` constraint on multiple columns at a time :

**_Syntax :_**

```sql
CONSTRAINT constraint_name UNIQUE(Col1,Col2,..);
```

**_Example :_**

Creating `Faculty` table in the college database with `Fid` column as `UNIQUE`:

```sql
CREATE TABLE faculty
  (
     fid           INT UNIQUE,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT
  );
```

Similarly, if we want the `Fid` and `Fname` columns to be unique in combination,i.e., `Fid` and `Fname` can have duplicate values individually but, duplicate combination of `Fid` and `Fname` don't exists.

```sql
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT,
     CONSTRAINT c1 UNIQUE(fid, fname)
  );
```

##### `DEFAULT` Constraint :

This constraint is used to insert a default value into a column.

Therefore, if we don't insert any specific value then, if will get filled with that default value.

**_Syntax :_**

```sql
col_name datatype DEFAULT value;
```

**_Example :_**

Creating `Faculty` table in the college database with a default value for `qualification` column as `Matriculation`:

```sql
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100),
     qualification VARCHAR(50) DEFAULT "Matriculation",
     deptid        INT
  );
```

##### `AUTO_INCREMENT` Constraint :

This constraint allows a unique number to be generated when a new record is inserted into a table.

**_Syntax :_**

```sql
col_name datatype AUTO_INCREMENT PRIMARY KEY;
```

We need to assign the auto-incremented column as the `PRIMARY KEY`,otherwise, the syntax won't work.

By default, the starting value for `AUTO_INCREMENT`is `1` and it increases by `1` for each new record.

It is used to create sequence in MySQL.

**_Example :_**

Creating `Faculty` table in the college database with a default value for `Fid` column as auto-incremented column:

```sql
CREATE TABLE faculty
  (
     fid           INT AUTO_INCREMENT PRIMARY KEY,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT
  );
```

##### `CHECK` Constraint :

This constraint allows values to be inserted into a column if it satisfied a give condition (Boolean expression).

**_Syntax :_**

```sql
col_name datatype CHECK(condition);
```

Unfortunately, MySQL doesn't support the `CHECK` keyword.

So, there are 2 ways to emulate this :

1. Using triggers
2. Using updatable view with check option

#### Creating Tables with Keys

Keys in SQL are of two types :

1. Primary Key (PK)
2. Foreign Key (FK)

##### Primary Key

It is a column or, combination of column that uniquely identifies a row in a table.

###### Rules :

- PK must contain unique values
- PK can't be null
- There can be a single PK for a table.

**_Syntax :_**

```sql
col_name datatype PRIMARY KEY
```

To set a combination of multiple columns as primary key :

**_Syntax :_**

```sql
PRIMARY KEY(Col1,Col2,...)
```

**_Example :_**

Creating `Faculty` table in the college database with `Fid` column as PK:

```sql
CREATE TABLE faculty
  (
     fid           INT PRIMARY KEY,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT
  );
```

similarly, to set the combination `Fid` and `Fname` column as the primary key for the `Faculty` table :

```sql
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT,
     PRIMARY KEY(fid,fname)
  );
```

##### Foreign Key

It is a field in a table that matches another field of another table.

It is used to maintain the referential integrity.

A table may have more than one FK, and each FK refers to a different parent table.

**_Syntax :_**

```sql
FOREIGN KEY(Col_name)
REFERENCES parent_table_name(col_name)
```

MySQL don't support the concept of FK directly,therefore; at the time of defining FK in MySQL, we have to use `engine = InnoDB` statement for both child and parent table.

> **_Note :_**<br> Its better to use `engine = InnoDB` statement at the time of defining any key (PK or, FK) in MySQL to avoid confusion.

**_Example :_**

Creating `Faculty` table in the college database with `deptid` column as FK (Refers to `deptid` PK of `Department` table) :

- Defining PK in `Department` table :

```sql
CREATE TABLE department
  (
     deptid INT PRIMARY KEY,
     dname  VARCHAR(100)
  ) engine = InnoDB;
```

- Defining FK in `Faculty` table :

```sql
CREATE TABLE faculty
  (
     fid           INT,
     fname         VARCHAR(100),
     qualification VARCHAR(50),
     deptid        INT,
     FOREIGN KEY(deptid REFERENCES Department(deptid))
  ) engine = InnoDB;
```

### `ALTER` Statement

`ALTER` statement is used to change the existing table structure.

It includes :

- Adding a new column
- Removing a column
- Renaming a column
- defining/redefining constraints and keys on existing tables

**_Syntax :_**

```sql
ALTER TABLE table_name action1 [,action2,action3,...]
```

#### Adding Column

To add a new column `PName` in the existing `Student` table, after `Sname`:

```sql
ALTER TABLE Student
ADD COLUMN PName VARCHAR(50)
AFTER Sname;
```

If we don't specify `AFTER` keyword then, by default, the newly added column will be added as the last column of the table.

#### Removing Column

To remove the `Marks` column from the `Student` table :

```sql
ALTER TABLE Student
DROP COLUMN Sname;
```

#### Renaming Column

To rename the `Sname` column from the `Student` table to `StudentName`:

```sql
ALTER TABLE Student
RENAME COLUMN Sname TO StudentName;
```

#### Constraint Modification

To set `NOT NULL` constraint to an existing column :

```sql
ALTER TABLE table_name
CHANGE col_name col_name datatype NOT NULL;
```

So, to change `Fname` column of `Faculty` table to `NOT NULL` :

```sql
ALTER TABLE Faculty
CHANGE Fname Fname VARCHAR(100) NOT NULL;
```

We can modify other constraints in the similar fashion as well.

To set a column of an existing table as primary key :

```sql
ALTER TABLE table_name
ADD PRIMARY KEY(col_name)
```

So, to make the `Fid` column of `Faculty` table as PK :

```sql
ALTER TABLE Faculty
ADD PRIMARY KEY(Fid)
```

### `RENAME` Statement

`RENAME` statement is used to rename a table.

**_Syntax :_**

```sql
RENAME TABLE old_table_name TO new_table_name
```

**_For Example :_**

we can change the name of `Student` table to `Student_info` as follows :

```sql
RENAME TABLE Student TO Student_info
```

### `DROP` Statement

`DROP` statement is used to remove the entire table, i.e. the table structure and the records in it.

**_Syntax :_**

```sql
DROP TABLE table_name
```

**_For Example :_**

We can remove the entire `Department` table as follows :

```sql
DROP TABLE Department
```

### `TRUNCATE` Statement

`TRUNCATE` statement is used to remove all the records of a table but, not the table structure. So, it returns an empty table.

It is same as using `DELETE` statement without a `WHERE` clause.

**_Syntax :_**

```sql
TRUNCATE TABLE table_name
```

**_For Example :_**

We can remove all the data of `Faculty` table as follows :

```sql
TRUNCATE TABLE Faculty
```

### Table Structure

To view the table structure, we can use the `DESCRIBE` keyword.

**_Syntax :_**

```sql
DESCRIBE table_name
```

`DESCRIBE` gives a quick overview of the table and its content (keys, indexes, constraints etc.)
