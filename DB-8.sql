--Выдавать информацию о студенте по номеру зачетной книжки
select s."Name", s."NumberGradebook", "Groups"."GroupNumber", "Specialties"."Title" AS Speciality  
from "Students" s
join "Groups" on s."GroupID" = "Groups"."ID"
join "Specialties" on "Groups"."SpecialityID" = "Specialties"."ID"
where s."NumberGradebook"  = 98765;
