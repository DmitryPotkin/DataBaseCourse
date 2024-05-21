--Выдавать информацию о студенте по имени
select s."Name", s."NumberGradebook", "Groups"."GroupNumber", "Specialties"."Title" AS Speciality  
from "Students" s
join "Groups" on s."GroupID" = "Groups"."ID"
join "Specialties" on "Groups"."SpecialityID" = "Specialties"."ID"
where s."Name"  = 'Иванов Иван';