--Процедура добавления записи в таблицу "Disciplines"
CREATE OR REPLACE PROCEDURE add_discipline(p_id int, p_title varchar(100), p_department_id int)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "Disciplines" ("ID", "Title", "DepartamentID")
    VALUES (p_id, p_title, p_department_id);
    
END;
$$;

CALL add_discipline(4, 'Французский язык', 4);

