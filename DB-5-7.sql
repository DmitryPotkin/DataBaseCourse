alter table "Students" 
add constraint "Fk_Groups_Students" foreign key ("GroupID") references "Groups" ("ID");