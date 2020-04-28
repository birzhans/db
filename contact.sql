CREATE TABLE z_contact (
    contact_id number(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
    name varchar(50) not null,
    messsage varchar2(1000) not null,
    constraint contact_pk primary key (contact_id)
);

insert into z_contact (name, messsage) values('Asel', 'I have bought socks, but they dont fit. Can I change the size?');
insert into z_contact (name, messsage) values('Nurzhan', 'Your shop is the best!');
insert into z_contact (name, messsage) values('Asel', 'I have bought socks, but they dont fit. Can I change the size?');
insert into z_contact (name, messsage) values('Dana', 'I bought a small and was worried it would be too small since most reviews said  
                                                    Definitely follow the size chart they give you, business casual so th
                                                    e length and fit is perfect!');
insert into z_contact (name, messsage) values('Xenia', 'I am obsessed with this skirt! I found it on another fashion website for 
                                                $68 and this one is identical! So cute and just as pictured!!');                                                    
                                                   
select * from z_contact;

