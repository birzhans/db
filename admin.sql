CREATE TABLE z_admin (
    admin_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    username varchar(50) not null,
    password varchar(50) not null,
    constraint admin_pk primary key (admin_id)
);

insert into z_admin (username, password) values('admin', 'qwerty0!');
insert into z_admin (username, password) values('manager', 'wasd/@');
insert into z_admin (username, password) values('director', 'somepass(8^');

select * from z_admin;

