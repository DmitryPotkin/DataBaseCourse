--11) Показать работу с оператором MERGE
create table "SourceTable"
(
 "ID" INT
 , "Name" VARCHAR(25)
);

create table "TargetTable"
(
 "ID" INT
 , "Name" VARCHAR(25)
);

insert into "TargetTable" values
 (1, 'Томаты')
, (2, 'Бананы')
, (3, 'Молоко')
, (6, 'Огурцы')
, (7, 'Яблоки');

insert into "SourceTable" values
 (1, 'Томаты')
, (2, 'Бананы')
, (7, 'Масло');

merge into "TargetTable" as Target
using "SourceTable" as Source
 on (Target."ID" = Source."ID")
when matched 
 then update
 set "Name" = Source."Name"
when not matched 
 then insert
 values (Source."ID", Source."Name");
