--Для каждого из продуктов выведите его название и цену, а также название и цену более дешёвого продукта.
select 
    p1."Name" as ProductName, 
    p1."ListPrice" as ProductPrice, 
    (
        select p2."Name" 
        from "Production"."Product" p2 
        where p2."ListPrice" < p1."ListPrice"
        order by p2."ListPrice" desc
        limit 1
    ) as NextProductName, 
    (
        select p2."ListPrice"
        from "Production"."Product" p2 
        where p2."ListPrice" < p1."ListPrice"
        order by p2."ListPrice" desc
        limit 1
    ) as NextProductPrice
from "Production"."Product" p1
order by ProductPrice desc;