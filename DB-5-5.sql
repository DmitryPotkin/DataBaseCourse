alter table "Groups_Teachers"  
add constraint "Fk_Groups_Groups_Teachers" foreign key ("GroupID") references "Groups" ("ID");