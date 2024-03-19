--5) Написать скрипты на добавление первичных ключей.
alter table "Products"
add constraint "PK_Products"
primary key ("ID");

alter table "Vendors" 
add constraint "PK_Vendors"
primary key ("ID");
