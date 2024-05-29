--Выдавать список групп, обучающихся на данной специальности
select "Groups"."GroupNumber"
from "Groups"
join "Specialties" on "Groups"."SpecialityID" = "Specialties"."ID"
where "Specialties"."Title" = 'Экономика';
