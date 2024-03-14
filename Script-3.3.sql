--3) Показать список людей (поля FirstName, LastName), в котором указано, есть ли у человека часы больничного (SickLeaveHours) или нет, из таблиц HumanResources.Employee, Person.Person, используя RIGHT OUTER JOIN.
select "Person"."Person"."FirstName",
"Person"."Person"."LastName",
"HumanResources"."Employee"."SickLeaveHours"  
from "Person"."Person" 
right outer join "HumanResources"."Employee" on "Person"."Person"."BusinessEntityID" = "HumanResources"."Employee"."BusinessEntityID" ; 