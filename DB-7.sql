insert into "Departments"  ("ID", "Title") values
(1, 'Факультет информационных технологий'),
(2, 'Факультет экономики'),
(3, 'Медицинский факультет');

insert into "Disciplines"  ("ID", "Title", "DepartamentID") values
(1, 'Программирование', 1),
(2, 'Макроэкономика', 2),
(3, 'Анатомия', 3);

insert into "Disciplines_Teachers"  ("DisciplineID", "TeacherID") values
(1, 1),
(1, 3),
(2, 2),
(2, 1),
(3, 3);

insert into "Groups"  ("ID", "GroupNumber", "SpecialityID") values
(1, 101, 1),
(2, 201, 2),
(3, 301, 3);

insert into "Groups_Teachers"  ("GroupID", "TeacherID") values
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(3, 2);

insert into "Specialties"  ("ID", "Title") values
(1, 'Информационные технологии'),
(2, 'Экономика'),
(3, 'Медицина');

insert into "Students"  ("ID", "Name", "NumberGradebook", "GroupID") values
(1, 'Иванов Иван', 12345, 1),
(2, 'Петров Петр', 54321, 2),
(3, 'Сидоров Алексей', 98765, 3);

insert into "Teachers"  ("ID", "Name") values
(1, 'Смирнова Ольга'),
(2, 'Козлов Иван'),
(3, 'Петрова Мария');






