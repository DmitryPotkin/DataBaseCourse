alter table "Disciplines_Teachers" 
add constraint "Fk_Teachers_Disciplines_Teachers" foreign key ("TeacherID") references "Teachers" ("ID");