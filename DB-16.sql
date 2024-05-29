--Выдавать список преподавателей, проводящих занятие в данной группе
CREATE OR REPLACE FUNCTION get_teachers_in_group(p_group_id int)
RETURNS TABLE (
    teacher_id int,
    teacher_name varchar(50)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        t."ID" AS teacher_id,
        t."Name" AS teacher_name
    FROM
        "Teachers" t
        INNER JOIN "Groups_Teachers" gt ON t."ID" = gt."TeacherID"
        WHERE gt."GroupID" = p_group_id;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_teachers_in_group(3);
