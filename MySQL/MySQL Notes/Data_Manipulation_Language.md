# Data Manipulation Language (DML)

DML consists of SQL commands that deals with the manipulation of the data present in the database.

## DML Commands

The three major SQL commands that comes under DML are :

1. `INSERT` : To insert data into a table
2. `UPDATE` : To update the existing data within a table.
3. `DELETE` : To delete records from a table.

Other SQL commands that also comes under the DML bucket are :

- `MERGE`
- `CALL`
- `EXPLAIN PLAN`
- `LOCK TABLE`

## `INSERT` Statement

### Inserting Data in Tables

There are two modes through which we can insert data in the table. They are as follows :

#### Method-1

---

In this method, we can enter values into the columns of the table without following the order of the column.

**_Syntax :_**

```sql
INSERT INTO table_name(col1, col2,....,coln)
VALUES (val1, val2,...,valn);
```

We can also insert multiple rows at once using comma separators :

```sql
INSERT INTO table_name(col1, col2,....,coln)
VALUES (val1, val2,...,valn),
VALUES (val1, val2,...,valn),
VALUES (val1, val2,...,valn),
.
.
VALUES (val1, val2,...,valn);
```

#### Method-2

---

In this method, we don't have to specify the column names of the table but, we have to insert the values in the pre-ordered format.

**_Syntax :_**

```sql
INSERT INTO table_name VALUES (val1, val2, .. , valn);
```

We can also insert multiple rows at once using comma separators :

```sql
INSERT INTO table_name VALUES
(val1, val2, .. , valn),
(val1, val2, .. , valn),
(val1, val2, .. , valn),
.
.
.
(val1, val2, .. , valn);
```

### `INSERT` With `SELECT` Statement

`INSERT` can be used with the `SELECT` clause to insert data into a table from another table.

**_Syntax :_**

```sql
INSERT INTO table_name1
SELECT Col1,Col2, ... FROM table_name2;
```

By the above syntax; we mean that the data from the selected columns of `table_name2` will be copied to `table_name1`.

Basically, we have replaced the `VALUES` keyword with the `SELECT` clause.

## `UPDATE` Statement

The `UPDATE` statement is used to update the existing data in a table.

**_Syntax :_**

```sql
UPDATE table_name
SET
Col1 = Exp1,
Col2 = Exp2,
....
....
WHERE Condition;
```

At the time of updating, if we don't prove the proper `WHERE` clause, then, we might get some undesirable result.

For example; in the above syntax, if we don't provide the `WHERE` clause then, each row element of `Col1` will be replaced by `Exp1` and `Col2` elements by `Exp2` and so on.

Although, `WHERE` clause in `UPDATE` statement optional, still, we need to take it as mandatory one to avoid undesirable result.

### `UPDATE` With `SELECT` Statement

`UPDATE` can be used with the `SELECT` clause to update data of a table from another table.

**_Syntax :_**

```sql
UPDATE table_name1
SELECT Col1 = (Nested Query)
WHERE Condition;
```

Basically, instead of providing an direct expression to update a value; we have used the `SELECT` statement to get the value from another table.

**_For Example :_**

Updating the "_Department Name_" of "_Department ID = 1_" of the "_Department_" table to the name of the department where a student named "_Jhon_" (from the "_Student_") belong to :

```sql
UPDATE department
SELECT departmentname =
       (
            SELECT departmentname
            FROM   student
            WHERE  studentname = "Jhon"
        )
WHERE  departmentid = 1;
```

## `DELETE` Statement

The `DELETE` statement is used to delete data from the table.

**_Syntax :_**

```sql
DELETE FROM table_name
WHERE Condition;
```

A `DELETE` statement without the `WHERE` clause will delete all the records of the table.

### `DELETE` Statement with `LIMIT` Clause

`DELETE` statement is used with the `LIMIT` clause to delete a specific number of records.

For example; if we have to delete the first four student records then, we can simply use the `DELETE` statement with `LIMIT` clause.

**_Syntax :_**

```sql
DELETE FROM table_name
LIMIT no_of_top_rows
```
