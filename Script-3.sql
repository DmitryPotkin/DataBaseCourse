--3) Показать поля SalesOrderID, SalesOrderDetailID, ProductID, OrderQty из таблицы Sales.SalesOrderDetail, для которых количество заказываемого продукта (OrderQty) больше 1 и меньше 3 Использовать оператор BETWEEN.
select "SalesOrderID",
"SalesOrderDetailID",
"ProductID",
"OrderQty"  
from "Sales"."SalesOrderDetail" 
where "OrderQty" between '1' and '3';