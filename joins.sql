#inner join
select z_product.title||' - '|| z_category.title 
from z_product join z_category 
on z_product.category_id = z_category.category_id;

#right outer join
select z_product.title||' - '|| z_category.title 
from z_product right join z_category 
on z_product.category_id = z_category.category_id;

#left outer join
select z_product.title||' - '|| z_profile.username 
from z_product left join z_profile 
on z_product.product_id = z_profile.product_id;

#full outer join
select z_product.title||' - '|| z_profile.username 
from z_product full join z_profile 
on z_product.product_id = z_profile.product_id;

