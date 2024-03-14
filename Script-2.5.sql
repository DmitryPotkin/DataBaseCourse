--5) Вывести Color, Size и среднюю цену товара ListPrice для каждого цвета Color в разных размерах Size, предусмотреть вывод средней цены ListPrice для всех Color у различных Size из таблицы Production.Product (Использовать ROLLUP). Не учитывать нулевую цену.
select "Color" ,
"Size" ,
AVG("ListPrice") as "AvgListPrice"
from "Production"."Product"
where "ListPrice"  > 0
group by rollup("Color", "Size");
