--5) Показать список стоимостей доставки (Freight), к которым относятся несколько покупателей (CustomerID), из таблицы Sales.SalesOrderHeader, используя SELF JOIN.
select so1."Freight"
from "Sales"."SalesOrderHeader" so1
inner join "Sales"."SalesOrderHeader" so2 on so1."Freight" = so2."Freight" and so1."CustomerID" <> so2."CustomerID"
group by so1."Freight"
having count(distinct  so1."CustomerID") > 1;
