--6) Из таблицы Sales.SalesTerritory показать поля TerritoryID, Name и CountryRegionCode, где значения поля CountryRegionCode принадлежат списку ('CA', 'US'). Использовать оператор IN.
select "TerritoryID",
"Name",
"CountryRegionCode"
from "Sales"."SalesTerritory" 
where "CountryRegionCode" in ('CA', 'US');