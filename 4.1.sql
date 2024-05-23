--Показать товары производство которых занимает больше всего временени (DaysToManufacture). (Таблица Production.Product). Вывести наименование и кол-во дней.
select "Name", "DaysToManufacture"
from "Production"."Product"
where "DaysToManufacture" = (
    select max("DaysToManufacture")
    from "Production"."Product"
);
