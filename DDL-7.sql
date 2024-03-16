--7) Написать скрипты на добавление ограничения уникальности для тех полей, где это необходимо
alter table "Products"
add constraint "U_Products_Name"
unique ("NAME");

alter table "Vendors" 
add constraint "U_Vendors_Name"
unique ("NAME");

