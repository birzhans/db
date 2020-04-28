CREATE TABLE z_product (
    product_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    title varchar(50) not null,
    slug varchar(50),
    body varchar2(300) not null,
    date_pub date not null,
    photo bfile,
    view_count number(10),
    category_id number(10),
    constraint product_pk primary key (product_id),
    constraint product_fk foreign key (category_id)
    references z_category(category_id)
);

alter table z_product 
modify view_count number(10) default 0;

insert into z_product (title, body, date_pub, category_id) values ('white socks', '100% cotton white socks', '12/02/2020', 1);
insert into z_product (title, body, date_pub, category_id) values ('blue socks', '100% cotton blue socks', '12/02/2020', 1);
insert into z_product (title, body, date_pub, category_id) values ('red socks', '100% cotton red socks', '13/02/2020', 1);
insert into z_product (title, body, date_pub, category_id) values ('black socks', '100% cotton black socks', '13/02/2020', 1);
insert into z_product (title, body, date_pub, category_id) values ('white towel', 'hand towel bamboo cotton', '15/02/2020', 3);
insert into z_product (title, body, date_pub, category_id) values ('grey towel', 'bath towel bamboo cotton', '16/02/2020', 3);
insert into z_product (title, body, date_pub, category_id) values ('black pants', 'casual regular fit pants', '15/02/2020', 2);
insert into z_product (title, body, date_pub, category_id) values ('sport pants', 'stretch fit pants for gym', '20/02/2020', 2);

select * from z_product;
select * from z_category;

