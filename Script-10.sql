--10) Показать поля SalesReasonID, Name и ReasonType из таблицы Sales.SalesReason. Заменить все значения поля ReasonType на NULL, если они принимают значение 'Other'. Названия полей оставить без изменений.
select "SalesReasonID",
"Name",
nullif ("ReasonType", 'Other') "ReasonType" 
from "Sales"."SalesReason"
