--Процедура добавления записи в таблицу "Teachers"
CREATE OR REPLACE PROCEDURE add_teacher(p_id int, p_name varchar(50))
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Teachers" ("ID", "Name")
    VALUES (p_id, p_name);
    
END;
$$;

CALL add_teacher(4, 'Захарова Татьяна');


