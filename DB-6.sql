alter table "Departments" 
add constraint "U_Departments_Title"
unique ("Title");

alter table "Departments" 
add constraint "U_Departments_ID"
unique ("ID");

alter table "Disciplines" 
add constraint "U_Disciplines_ID"
unique ("ID");

alter table "Disciplines" 
add constraint "U_Disciplines_Title"
unique ("Title");

alter table "Groups" 
add constraint "U_Groups_ID"
unique ("ID");

alter table "Groups" 
add constraint "U_Groups_GroupNumber"
unique ("GroupNumber");

alter table "Specialties"  
add constraint "U_Specialties_ID"
unique ("ID");

alter table "Specialties"  
add constraint "U_Specialties_Title"
unique ("Title");

alter table "Students" 
add constraint "U_Students_ID"
unique ("ID");

alter table "Students" 
add constraint "U_NumberGradebook_ID"
unique ("NumberGradebook");

alter table "Teachers"  
add constraint "U_Teachers_ID"
unique ("ID");