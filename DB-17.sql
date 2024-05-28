--Выдавать список групп, обучающихся на данной специальности
CREATE OR REPLACE FUNCTION get_specialty_groups(p_specialty_title varchar(100))
RETURNS TABLE (
    group_id int,
    group_number int,
    specialty_title varchar(100)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        g."ID" AS group_id,
        g."GroupNumber" AS group_number,
        s."Title" AS specialty_title
    FROM
        "Groups" g
        INNER JOIN "Specialties" s ON g."SpecialityID" = s."ID"
    WHERE
        s."Title" = p_specialty_title;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_specialty_groups('Медицина');
