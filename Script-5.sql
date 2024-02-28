--5) Показать все поля из таблицы Person.PhoneNumberType, где строки поля Name содержат 'e'.
select * 
from "Person"."PhoneNumberType"
where "Name" ~'(e)';