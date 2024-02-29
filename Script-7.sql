--7) Показать поля JobCandidateID, BusinessEntityID и Resume из таблицы HumanResources.JobCandidate. Неизвестные значения поля BusinessEntityID заменить на 0. Названия полей оставить без изменений.
select "JobCandidateID",
"Resume",
coalesce ("BusinessEntityID",0) as "BusinessEntityID" 
from "HumanResources"."JobCandidate";