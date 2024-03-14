--4) Найти линейку продуктов ProductLine из таблицы Production.Product, где суммарная стоимость товаров больше 2000 (из выборки исключить пустые поля).
select "ProductLine",
sum("ListPrice") as "Sum"
from "Production"."Product" 
where "ProductLine" is not null
group by "ProductLine"
having sum("ListPrice") > 2000;

