--10) Пропустить 15 строк из результирующего набора, полученного в п.9.
select "ProductID"
from "Production"."Product"
intersect
select "ProductID"
from "Production"."TransactionHistoryArchive"
order by "ProductID" 
limit 20
offset 15;