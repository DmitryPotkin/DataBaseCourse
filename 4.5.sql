--Показать товары, цена которых меньше средней цены товара того же размера (размер определен) (Таблица Production.Product). Показать поля Name, ListPrice и Size.
select 
  p1."Name", 
  p1."ListPrice", 
  p1."Size"
from "Production"."Product" as p1
inner join (
  select "Size", avg("ListPrice") as avgPrice
  from "Production"."Product"
  where "ListPrice" > 0
  group by "Size"
) as p2
on p1."Size" = p2."Size"
and p1."ListPrice" < p2.avgPrice;