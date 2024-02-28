--9) Из таблицы Person.ContactType показать поля ContactTypeID и Name, отсортированные в порядке убывания относительно поля ContactTypeID.
select "ContactTypeID",
"Name"  
from "Person"."ContactType" order by "ContactTypeID" desc;