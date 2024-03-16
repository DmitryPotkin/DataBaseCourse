--3) Создать копию таблицы с выбранными полями
select p."ID"
into table "ProductCopy2"
from "Products" p;
