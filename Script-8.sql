--8) Показать поля ProductID, Name из таблицы Production.Product с применением функции COALESCE(). Показать поле Measurement, так, чтобы, если значение в поле Style известно, то показать его, а иначе, показать значение в поле ProductLine. Если и в поле ProductLine значение неизвестно, то вывести значение 'UNKNOWN'.
select "ProductID",
"Name",
coalesce ("Style", "ProductLine", 'UNKNOWN') as "Measurement"
from "Production"."Product"