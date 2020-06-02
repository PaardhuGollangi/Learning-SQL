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
