--5) Создать копию таблицы без данных
select *
into table "ProductCopy4"
from "Products" p
where 1 = 2;
