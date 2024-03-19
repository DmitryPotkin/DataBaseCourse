--1) Показать названия подкатегорий и соответствующие им названия категорий товаров (поля Name) из таблиц Production.ProductSubcategory, Production.ProductCategory.
select "Production"."ProductSubcategory"."Name" as "SubcategoryName",
"Production"."ProductCategory"."Name" as "CategoryName"
from "Production"."ProductSubcategory"  
join "Production"."ProductCategory" on "Production"."ProductSubcategory"."ProductCategoryID" = "Production"."ProductCategory"."ProductCategoryID";