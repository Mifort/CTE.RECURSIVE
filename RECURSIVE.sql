WITH RECURSIVE parents
    as (
        SELECT * FROM category WHERE id = 5
            UNION
        SELECT category.* FROM category
            INNER JOIN parents
        ON parents.paretn_id = category.id
    )
SELECT * FROM parents;
