--7) Изменить запрос п.5 использовать GROUPING SETS. Отделить строки, созданные с помощью агрегатных функций от строк из фактической таблицы.
select "Color" , 
"Size" , 
AVG("ListPrice") as "AvgListPrice",
grouping("Color", "Size") 
from "Production"."Product"
where "ListPrice" > 0
group by grouping sets("Color", "Size");
