# Index in MySQL

An index helps in fast retrieval of data from tables.

It is just like a index of the book that helps in fast searching of specific topics.

By default, all the PK columns are the primary index of the table.

## Creating an Index

This simple syntax for creating an index is :

**_Syntax :_**

```sql
CREATE INDEX index_name ON table_name(col_name)
```

However, we can customize the index by including some additional arguments, as shown in the following syntax :

```sql
CREATE [UNIQUE|FULLTEXT|SPATIAL]
INDEX index_name
USING [BTREE|HASH|RTREE]
ON table_name (col_name[(length)][ASC|DESC],...)
```

By default, the index generated is of `BTREE` type.

**_Example :_**

Create an index on `Sid` column of `Student` table :

```sql
CREATE INDEX idx1 ON Student(Sid);
```

## Viewing Index

To view the index of a table; the following syntax is used :

**_Syntax :_**

```sql
SHOW INDEX FROM table_name;
```

## Removing Index

To remove an index from a table :

**_Syntax :_**

```sql
DROP INDEX index_name ON table_name;
```

**_Example :_**

Remove the index from `Sid` column of `Student` table :

```sql
DROP INDEX idx1 ON Student;
```

There is no need of creating an index for a table having a primary key.
