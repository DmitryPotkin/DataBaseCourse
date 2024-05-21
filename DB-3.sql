alter table "Departments" 
alter column "ID" set not null,
alter column "Title" set not null;

alter table "Disciplines"  
alter column "ID" set not null,
alter column "Title" set not null,
alter column "DepartamentID" set not null;

alter table "Disciplines_Teachers" 
alter column "DisciplineID" set not null,
alter column "TeacherID" set not null;

alter table "Groups" 
alter column "ID" set not null,
alter column "GroupNumber" set not null,
alter column "SpecialityID" set not null;

alter table "Groups_Teachers"  
alter column "GroupID" set not null,
alter column "TeacherID" set not null;

alter table "Specialties" 
alter column "ID" set not null,
alter column "Title" set not null;

alter table "Students" 
alter column "ID" set not null,
alter column "Name" set not null,
alter column "NumberGradebook" set not null,
alter column "GroupID" set not null;

alter table "Teachers" 
alter column "ID" set not null,
alter column "Name" set not null;