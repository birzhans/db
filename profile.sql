CREATE TABLE z_profile (
    profile_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    username varchar(50) not null,
    password varchar(50) not null,
    address varchar2(300) default 'N/A',
    date_registered date,
    phone_number varchar(20),
    email varchar(20),
    product_id number(10),
    constraint profile_pk primary key (profile_id),
    constraint profile_fk foreign key (product_id)
    references z_product(product_id)
);

insert into z_profile (username, password, address, date_registered, phone_number, email, product_id)
values ('joe', 'qwerty0', 'Abay st 230', '12/01/2020', '87478452187', 'joe2@gmail.com', 4);

insert into z_profile (username, password, address, date_registered, phone_number, email, product_id)
values ('dauren', 'qwewfty0', 'Lenin st 210 b', '15/01/2020', '87078454387', 'dau72@gmail.com', 6);

insert into z_profile (username, password, address, date_registered, phone_number, email, product_id)
values ('zhanar', 'zhan10', 'Birlik st 10', '20/01/2020', '87776052181', 'zhanar0580@gmail.com', 2);

insert into z_profile (username, password, address, date_registered, phone_number, email, product_id)
values ('kanat', 'qwefgh1rty0', 'Abay st 120', '23/01/2020', '87467452187', 'kana76@gmail.com', 8);


select * from z_profile;

