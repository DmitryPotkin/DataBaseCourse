--6) Написать скрипты на добавление внешнего ключа.
alter table "Products" 
add constraint "FK_Vendors_Products"
foreign key ("ID")
references "Vendors" ("ID");