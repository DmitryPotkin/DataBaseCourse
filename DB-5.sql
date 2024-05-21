alter table "Disciplines" 
add constraint "Fk_Departments_Disciplines" foreign key ("DepartamentID") references "Departments" ("ID");

alter table "Disciplines_Teachers" 
add constraint "Fk_Disciplines_Disciplines_Teachers" foreign key ("DisciplineID") references "Disciplines" ("ID");

alter table "Disciplines_Teachers" 
add constraint "Fk_Teachers_Disciplines_Teachers" foreign key ("TeacherID") references "Teachers" ("ID");

alter table "Groups" 
add constraint "Fk_Specialties_Groups" foreign key ("SpecialityID") references "Specialties" ("ID");

alter table "Groups_Teachers"  
add constraint "Fk_Groups_Groups_Teachers" foreign key ("GroupID") references "Groups" ("ID");

alter table "Groups_Teachers"  
add constraint "Fk_Teachers_Groups_Teachers" foreign key ("TeacherID") references "Teachers" ("ID");

alter table "Students" 
add constraint "Fk_Groups_Students" foreign key ("GroupID") references "Groups" ("ID");