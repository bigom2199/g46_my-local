create database LECTURE_DB;
use lecture_db;
create table ADDRESS(
ID int not null,
CITY varchar (255),
ZIP_CODE varchar(255)



);
drop table address;
-- Rertive data from address tablecreate database LECTURE_DB;
USE lecture_db;

create table ADDRESS (
ID int primary key not null auto_increment,
CITY varchar (255),
ZIP_CODE varchar(255) not null
);  
drop table address;  
   -- Remove table contents or table rows
truncate table address;
-- Rertive data from address table = Read
select * from address;   
select id,zip_code from address;   
select id as address_id, zip_code as zp  from address;


-- Store a record into the address table = create  
 
  
          insert into address(CITY, ZIP_CODE) value('VäxJÖ', 35253);
          insert into address(CITY, ZIP_CODE) value('Växjö','35246');
          insert into address (CITY, ZIP_CODE)value('test', '12345');
           insert into address(CITY, ZIP_CODE) value('Jönköping','45324');      
 
-- Modify table content = Update 
update address set zip_code ='11111' where id = 3;
-- Remove table row = Delete 
delete from address where id = 3 ;

-- CRUD operations
-- Modify table fields + types 
ALTER table address modify city varchar (40);
alter table address add street varchar(255) not null default '-';
alter table address drop street;  

create table person(
id int not null primary key auto_increment,
first_name varchar(255) not null,
last_name varchar(255) not null,
email varchar(255) not null unique,
birth_date date ,
create_date datetime default now(),
_active tinyint default false, 
address_id int not null unique,
foreign key(address_id) references address(id)  
);  
drop table person;
  select * from person ; 
  select * from address;
  insert into person(first_name,last_name, email,address_id) values('Mehrdad','Javan','mehrdad.javan@lexicon.se',1);  
 insert into person(first_name,last_name,email,address_id)value(`test`,`test`,`test.@lexicon.se`,100);
  create table task(
  id int not null primary key auto_increment,
  title varchar(255) not null,
  _description varchar(500),
  person_id int,
  foreign key (address_id) references person(id)
  );
select * from task;
select * from task  where id in(1,2);
select * from task where title like  "task%";

select person_id, count(person_id) as number_of_tasks from task group by person_id;
select* from task t join person p on t.person_id= p.id where person_id is not null;
select t.id, t.title, p.first_name, p.last_name from task t join person p on t.person_id= p.id where person_id is not null;
create table _group(
id int not null primary key auto_increment,
group_name varchar(100) not null
);
select * from _group;
create table person_groups(
id int not null primary key auto_increment,
person_id int not null,
group_id int not null,
foreign key (person_id) references person(id),
foreign key (group_id) references _group(id)
);

select * from task order by person_id desc;
select count(*) from task;
-- avg() sum()
select distinct_description from task;  
a




  
   












