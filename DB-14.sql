--Выдавать информацию о студенте по имени
CREATE OR REPLACE FUNCTION get_student_info(p_student_name varchar(50))
RETURNS TABLE (
    student_id int,
    student_name varchar(50),
    gradebook_number int,
    group_number int,
    specialty_title varchar(100)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        s."ID" AS student_id,
        s."Name" AS student_name,
        s."NumberGradebook" AS gradebook_number,
        g."GroupNumber" AS group_number,
        sp."Title" AS specialty_title
    FROM
        "Students" s
        INNER JOIN "Groups" g ON s."GroupID" = g."ID"
        INNER JOIN "Specialties" sp ON g."SpecialityID" = sp."ID"
    WHERE s."Name" = p_student_name;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_student_info('Сидоров Алексей');

