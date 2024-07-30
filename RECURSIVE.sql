create table if not exists test.category
(
    id        bigint unsigned auto_increment,
    name      varchar(100) null,
    paretn_id int          null,
    constraint id
        unique (id)
);

WITH RECURSIVE parents
    as (
        SELECT * FROM category WHERE id = 5
            UNION
        SELECT category.* FROM category
            INNER JOIN parents
        ON parents.paretn_id = category.id
    )
SELECT * FROM parents;
