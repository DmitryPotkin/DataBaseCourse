--4) Из таблицы HumanResources.EmployeeDepartmentHistory показать ID сотрудника (BusinessEntityID), дату начала работы (StartDate) и дату увольнения (EndDate). Показать только тех сотрудников, у которых неизвестна дата увольнения.
select "BusinessEntityID",
"StartDate",
"EndDate" 
from "HumanResources"."EmployeeDepartmentHistory"
where "EndDate" is null;