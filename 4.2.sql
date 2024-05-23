--Ранжирование товаров по цвету в алфавитном порядке. ("Production"."Product"). 
select
   p1."ProductID", 
   p1."Name",
   p1."Color",
  (
    select count(*)
    from "Production"."Product" p2
    where p2."Color" <= p1."Color"
  ) as "ColorRank"
from 
	"Production"."Product" p1
order by p1."Color" asc; 
