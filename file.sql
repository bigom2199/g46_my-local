create database LECTURE_DB;
use lecture_db;
create table ADDRESS(
ID int not null,
CITY varchar (255),
ZIP_CODE varchar(255)



);
drop table address;
-- Rertive data from address table 
select * from address;
-- start a record into the address table 
insert into address(CITY,ZIP_CODE) values('VÄXJÖ','35252');
insert into address(CITY,ZIP_CODE) value ('VÄXJÖ','35246');
insert into address(CITY,ZIP_CODE) value('test','12345');
insert into address(CITY,ZIP_CODE) value('Jönköping','52342');

