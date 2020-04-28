#with clause
with temp(av) as 
(SELECT avg(view_count) from z_product)
select title, view_count, temp.av
from z_product, temp
where view_count > temp.av;

#subquery
select title, view_count
from z_product
where view_count > 
(SELECT avg(view_count) from z_product);

#rollup
select count(product_id), category_id, title 
from z_product 
group by rollup(category_id, title);

#filtered aggregations
select title, 
    avg(price) as avgPriceSince12Feb,
    avg(price) filter(where date_pub = '15/02/2020') as avgPriceSince15Feb,
    avg(price) filter(where date_pub = '21/02/2020') as avgPriceSince21Feb
from z_products
where date_pub >= '12/02/2020';

#case statement
select title, date_pub, view_count,
case 
    when view_count = 0 then 'no views'
    when view_count < 5 then 'less than 5 views'
    when view_count < 10 then 'less than 10 views'
    else 'many views' 
end as viewAmount
from z_product;

#date functions
select title, date_pub as newProducts
from z_product
where 4*months_between(sysdate, date_pub) < 10;
