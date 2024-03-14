--4) Показать список покупателей (CustomerID), которые имеют несколько стоимостей доставки (Freight), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
select distinct so1."CustomerID" 
from "Sales"."SalesOrderHeader" so1
inner join "Sales"."SalesOrderHeader" so2 on so1."CustomerID" = so2."CustomerID"
where so1."Freight" <> so2."Freight";

