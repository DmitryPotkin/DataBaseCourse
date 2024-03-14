--3) Найти количество работников разных профессий из таблицы HumanResources.Employee (из выборки исключить пустые поля).
select count(distinct "JobTitle") as "CountEmployees"
from "HumanResources"."Employee"
where "JobTitle" is not null;