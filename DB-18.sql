--Процедура добавления записи в таблицу "Specialties"
CREATE OR REPLACE PROCEDURE add_specialty(p_id int, p_title varchar(100))
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Specialties" ("ID", "Title")
    VALUES (p_id, p_title);
    
END;
$$;

CALL add_specialty(4, 'Английский язык');
