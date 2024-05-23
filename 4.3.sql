--Показать самую раннюю EndDate для каждого компонента (Таблица Production.BillOfMaterial). Показать поля BillOfMaterialID, ComponentID, EndDate.
select b."BillOfMaterialsID", b."ComponentID", b."EndDate" 
from "Production"."BillOfMaterials" b
where b."EndDate" in (
	select min("EndDate")
	from "Production"."BillOfMaterials" b2
	where b2."ComponentID" = b."ComponentID" 
)
order by b."ComponentID";  