--2) Найти количество паролей, состоящих только из букв, из таблицы Person.Password.
select count("PasswordSalt") as "CountPasswords"
from "Person"."Password"
where "PasswordSalt" similar to '[A-Z, a-z]%';