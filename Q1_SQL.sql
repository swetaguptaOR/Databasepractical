'Creating table and Inserting Values'
CREATE TABLE student(Name char,Gender char,Roll int,Address char,Sec char,Marks1 int,Marks2 int);
INSERT INTO student
 VALUES("Sweta","F",1,"Siwan","B",99,98);
 INSERT INTO student
 VALUES("Sai","F",2,"Mumbai","B",95,91);
INSERT INTO student
 VALUES("Vaibhav","M",3,"Lko","B",97,96);
 INSERT INTO student
 VALUES("Arav","M",4,"Delhi","A",90,85);
 INSERT INTO student
 VALUES("Priti","F",5,"Hisar","A",100,89);
 
 INSERT INTO student
 VALUES("Sid","M",6,"Delhi","C",79,88);
INSERT INTO student
 VALUES("Kriti","F",7,"Dehradoon","C",76,84);
INSERT INTO student
 VALUES("Afsa","F",8,"Kolkata","A",96,85);
 INSERT INTO student
 VALUES("Mayank","M",9,"Siwan","C",78,68);
INSERT INTO student
 VALUES("Saurav","M",10,"Siwan","C",89,82);
'Display Values'
 Select * from student;
 'Query 1'
 'Using Two ways'
create table qwerty as 
SELECT *, (Marks1+Marks2) as total_marks from student;

SELECT * FROM qwerty;
CREATE TABLE stdf as 
SELECT a.*, (b.Marks1+b.Marks2) as total_marks
from student a
JOIN student b
on a.Roll = b.Roll;

SELECT * from stdf;
'Query 2'
UPDATE stdf
SET Address = 'Gurgaon'
WHERE Roll = 3;
UPDATE stdf
SET Address = 'Goregaon'
WHERE Roll = 4;
Select * from stdf;
'Query 3'
SELECT * FROM stdf where Marks1 BETWEEN 65 and 75;
'As my data has no marks between 60 and 75 I have changed ques a bit'
SELECT * FROM stdf where Marks1 BETWEEN 85 and 90;
'Query 4'

SELECT Sec,count(*) as CountStd FROM stdf 
GROUP by Sec
ORDER by CountStd;
'Query 5'
SELECT * FROM (Select * from stdf order by total_marks desc limit 2) order by total_marks limit 1;
'Query 6'
Select Gender,avg(total_marks)
 FROM stdf
 group by Gender;
 'Query 7'
 Select count(*),max(total_marks),min(total_marks),avg(total_marks) 
 from stdf;
 'Query 8'
 SELECT Name,Roll,Sec from stdf 
 where total_marks> (Select avg(total_marks) FROM stdf);
 'Query 9'
 Select sec,avg(total_marks)
 FROM stdf
 group by sec
 order by avg(total_marks) desc;
 'Query 10'
 Select * from stdf where sec="A" or sec="B"
 
 