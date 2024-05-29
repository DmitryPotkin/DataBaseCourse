--Выдавать список предметов, читаемых данной кафедрой
CREATE OR REPLACE FUNCTION get_department_disciplines(p_department_title varchar(100))
RETURNS TABLE (
    discipline_id int,
    discipline_title varchar(100)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        d."ID" AS discipline_id,
        d."Title" AS discipline_title
    FROM
        "Disciplines" d
        INNER JOIN "Departments" dep ON d."DepartamentID" = dep."ID"
    WHERE
        dep."Title" = p_department_title;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_department_disciplines('Медицинский факультет');

