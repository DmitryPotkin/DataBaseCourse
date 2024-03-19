--8) Написать скрипты на добавление ограничения проверок CHECK для тех полей, где это необходимо
alter table "Products" 
add constraint "CH_Products_ID"
check ("ID" > 0);

alter table "Vendors" 
add constraint "CH_Vendors_ID"
check ("ID" > 0);
