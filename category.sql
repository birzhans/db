CREATE TABLE z_category (
    category_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    title varchar(30) not null,
    slug varchar(30),
    constraint category_pk primary key (category_id)
);

insert into z_category (title, slug) values('socks', 'socks');
insert into z_category (title, slug) values('underwears', 'underwears');
insert into z_category (title, slug) values('towels', 'towels');
insert into z_category (title, slug) values('lingerie', 'lingerie');
insert into z_category (title, slug) values('bras', 'bras');
insert into z_category (title, slug) values('sleep', 'sleep');
insert into z_category (title, slug) values('sport', 'sport');
insert into z_category (title, slug) values('swim', 'swim');


select * from z_category;

