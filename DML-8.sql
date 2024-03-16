--8) Сформировать таблицу, которая имеет дубликаты строк. Удалить дубликаты
select *
into table "ProductsCopy"
from "Products" p;

--Формирование дубликата в таблице
insert into "ProductsCopy"
 ("ID"
 , "NAME") values
(4, 'Манго');

--Удаление дубликата в таблице
delete
from "ProductsCopy"
where ctid not in
(select max(ctid) from "ProductsCopy"
group by "ProductsCopy"."ID");

