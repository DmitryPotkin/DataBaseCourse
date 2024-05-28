alter table "Groups_Teachers"  
add constraint "Fk_Teachers_Groups_Teachers" foreign key ("TeacherID") references "Teachers" ("ID");