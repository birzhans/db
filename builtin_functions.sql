select count(product_id), round(avg(price), 2), abs(max(price) - min(price)) as Range
from z_product
where date_pub >= '13/02/2020';

select title, date_pub as newProducts
from z_product
where 4*months_between(sysdate, date_pub) < 10;

select concat(title, body) as Description
from z_product;

select trim(body), nullif(title, slug), round(months_between(sysdate, date_pub), 2)
from z_product;

