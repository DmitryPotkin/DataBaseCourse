alter table "Groups" 
add constraint "Fk_Specialties_Groups" foreign key ("SpecialityID") references "Specialties" ("ID");