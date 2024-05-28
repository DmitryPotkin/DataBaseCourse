--Процедура добавления записи в таблицу "Students"
CREATE OR REPLACE PROCEDURE add_student(p_id int, p_name varchar(50), p_number_gradebook int, p_group_id int)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Students" ("ID", "Name", "NumberGradebook", "GroupID")
    VALUES (p_id, p_name, p_number_gradebook, p_group_id);
    
END;
$$;

CALL add_student(4, 'Козлов Сергей', 10255, 4);

