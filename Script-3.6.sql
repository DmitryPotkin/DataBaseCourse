--6) Показать список имен (FirstName) начинающихся на «N», которые имеют несколько фамилий (LastName) из таблицы Person.Person, используя SELF JOIN.
select p1."FirstName"
from "Person"."Person" p1
inner join "Person"."Person" p2 on p1."FirstName" = p2."FirstName" and p1."LastName" <> p2."LastName"
where p1."FirstName" like 'N%'
group by p1."FirstName"
having count(distinct  p1."LastName") > 1;
