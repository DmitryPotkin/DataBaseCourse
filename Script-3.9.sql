--9) Ограничить результирующий набор, полученный в п.8.
select "ProductID"
from "Production"."Product"
intersect
select "ProductID"
from "Production"."TransactionHistoryArchive"
order by "ProductID" 
limit 20;