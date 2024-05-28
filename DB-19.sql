--Процедура добавления записи в таблицу "Groups"
CREATE OR REPLACE PROCEDURE add_group(p_id int, p_group_number int, p_speciality_id int)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Groups" ("ID", "GroupNumber", "SpecialityID")
    VALUES (p_id, p_group_number, p_speciality_id);
    
END;
$$;

CALL add_group(4, 401, 4);
