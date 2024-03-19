--9) Изменить данные в таблице по критерию
update "ProductsCopy"
set "Type" = 'Фрукты'
where "ID" in (2, 4, 5);
