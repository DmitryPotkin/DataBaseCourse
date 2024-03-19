--2) Показать список складов (поле Name), в котором указано, есть на складе товар с некоторым ID или нет, из таблиц Production.Location, Production.WorkOrderRouting, используя LEFT OUTER JOIN
select "Production"."Location"."Name",
"Production"."WorkOrderRouting"."LocationID" as "AvailableProduct"
from "Production"."Location"
left outer join "Production"."WorkOrderRouting" on "Production"."Location"."LocationID" = "Production"."WorkOrderRouting"."LocationID"; 
