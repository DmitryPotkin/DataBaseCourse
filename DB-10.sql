--Выдавать список предметов, читаемых данной кафедрой
select "Disciplines"."Title" 
from "Disciplines"
join "Departments" on "Disciplines"."DepartamentID" = "Departments"."ID"
where "Departments"."Title"  = 'Факультет экономики';
