create table "Students" (
"ID" int,
"Name" varchar(50),
"NumberGradebook" int,
"GroupID" int
);

create table "Groups" (
"ID" int,
"GroupNumber" int,
"SpecialityID" int
);

create table "Specialties" (
"ID" int,
"Title" varchar(100)
);

create table "Departments" (
"ID" int,
"Title" varchar(100)
);

create table "Disciplines" (
"ID" int,
"Title" varchar(100),
"DepartamentID" int
);

create table "Teachers" (
"ID" int,
"Name" varchar(50)
);

create table "Groups_Teachers" (
"GroupID" int,
"TeacherID" int
);

create table "Disciplines_Teachers" (
"DisciplineID" int,
"TeacherID" int
);
