alter table "Disciplines_Teachers" 
add constraint "Fk_Disciplines_Disciplines_Teachers" foreign key ("DisciplineID") references "Disciplines" ("ID");