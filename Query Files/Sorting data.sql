
use college;

#Order By Clause
#-----------------

#Used to sort the result from the select statement
#--------------------------------------------------------

#1. sort by ascending student name

select * from student;
select * from student order by sname;
select * from student order by sname desc;

#2. sort by descending marks

select * from student order by marks desc;

#3. sort by name in ascending and marks in descending

select * from student order by sname asc, Marks desc;

#4. custom sort
select * from faculty;
select * from faculty order by field(qualification, "M.Tech", "Ph.D", "B.Tech");






