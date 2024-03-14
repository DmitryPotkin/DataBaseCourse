--6) Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с помощью агрегатных функций от строк из фактической таблицы.
select "Color" , 
"Size" , 
AVG("ListPrice") as "AvgListPrice",
grouping("Color", "Size") 
from "Production"."Product"
where "ListPrice" > 0
group by cube("Color", "Size");
