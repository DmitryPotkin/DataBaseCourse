--7) Показать комбинированный список таблиц Production.Product по полям ProductID, ListPrice, Purchasing.PurchaseOrderDetail по полям ProductID, UnitPrice, используя UNION.
select p."ProductID",
p."ListPrice",
null as "UnitPrice"
from "Production"."Product" p 
union
select pod."ProductID",
null as "ListPrice",
pod."UnitPrice"
from "Purchasing"."PurchaseOrderDetail" pod; 