CREATE TABLE z_sale (
    sale_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    title varchar(50) not null,
    slug varchar(50),
    body varchar2(300) not null,
    date_pub date not null,
    photo bfile,
    view_count number(10),
    constraint sale_pk primary key (sale_id)
);

insert into z_sale (title, slug, body, date_pub) 
values ('1+1', 'one-plus-one', 'buy one product from the winter collection and get one', '01/02/2020');

insert into z_sale (title, slug, body, date_pub) 
values ('-20%', 'minus-20-percent', '20% price off on underwear', '05/02/2020');

insert into z_sale (title, slug, body, date_pub, view_count) 
values ('sale', 'sale', 'discover list of products on sale', '15/02/2020', 2);

select * from z_sale;

