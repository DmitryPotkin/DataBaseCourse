--Процедура добавления записи в таблицу "Departments"
CREATE OR REPLACE PROCEDURE add_department(p_id int, p_title varchar(100))
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Departments" ("ID", "Title")
    VALUES (p_id, p_title);
    
END;
$$;

CALL add_department(4, 'Факультет иностранных языков');
