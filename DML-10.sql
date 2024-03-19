--10) Изменить данные в столбце, применив математические вычисления (например, увеличить цену на 15%, уменьшить количество в два раза)
alter table "ProductsCopy"
add column "Price" int;

update "ProductsCopy"
set "Price" = 30
where "ID" in (2, 4);

update "ProductsCopy"
set "Price" = 45
where "ID" in (1, 3, 5);

update "ProductsCopy"
set "Price" = "Price" + "Price" * 0.15
where "ID" in (1, 3, 5);
