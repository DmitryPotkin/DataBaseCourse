--4) Написать скрипты на добавление ограничения NOT NULL для тех полей, где это необходимо.
alter table "Products"
alter column "NAME"
set not null;

alter table "Vendors"
alter column "NAME"
set not null;