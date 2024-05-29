--Выдавать список преподавателей, проводящих занятие в данной группе
select "Teachers"."Name"
from "Teachers"
join "Disciplines_Teachers" on "Teachers"."ID" = "Disciplines_Teachers"."TeacherID"
join "Disciplines" on "Disciplines_Teachers"."DisciplineID" = "Disciplines"."ID"
join "Groups_Teachers" on "Teachers"."ID" = "Groups_Teachers"."TeacherID"
join "Groups" on "Groups_Teachers"."GroupID" = "Groups"."ID"
where "Disciplines"."Title" = 'Макроэкономика' and "Groups"."GroupNumber" = 101;
