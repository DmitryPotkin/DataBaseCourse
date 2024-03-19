--8) Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице Production.TransactionHistoryArchive.
select "ProductID"
from "Production"."Product"
intersect
select "ProductID"
from "Production"."TransactionHistoryArchive";
