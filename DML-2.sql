--2) Создать полную копию одной из таблиц
select *
into table "ProductCopy"
from "Shop".public."Products" p;
