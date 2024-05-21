alter table "Departments" 
add constraint "Pk_Departments" primary key ("ID"); 

alter table "Disciplines" 
add constraint "Pk_Disciplines" primary key ("ID"); 

alter table "Disciplines_Teachers" 
add constraint "Pk_Disciplines_Teachers" primary key ("DisciplineID","TeacherID");

alter table "Groups" 
add constraint "Pk_Groups" primary key ("ID"); 

alter table "Groups_Teachers" 
add constraint "Pk_Groups_Teachers" primary key ("GroupID","TeacherID");

alter table "Specialties" 
add constraint "Pk_Specialties" primary key ("ID"); 

alter table "Students" 
add constraint "Pk_Students" primary key ("ID"); 

alter table "Teachers" 
add constraint "Pk_Teachers" primary key ("ID"); 