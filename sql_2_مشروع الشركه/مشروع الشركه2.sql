create database hospital_2;

create table doctorss
(
  doctors_id int primary key identity(1,1),
  name varchar(40),
  descripton varchar (70),
  phone_numberv int
);



create table specialization
(
  specialization_id int primary key identity(1,1),
  specializationName varchar(40),
  active int,
  doctorss_id int foreign key references doctorss(doctors_id)not null


);

create table salary_employeess
(
  salary_id int primary key identity(1,1),
  salary int
 

);


create table infacted_peopl
(
  infacted_people_id int primary key identity(1,1),
  name_people varchar(40),
  depatment varchar(40)
);

  

insert into doctorss values
('turki','doktor body',716037855),
('mohmed bin Alzooa','doctor nose',7772484),
('sami ','doctor head',7879462),
('ali','doktor body',716037855),
('hak bin Alzooa','doctor hear',77879484),
('salim ','doctor head',7879462),
('salih','doktor asnan',79037855),
('bader bin Alzooa','doctor nose',7472484),
('hala ','doctor head',788462),
('kmal','doktor body',7167855),
('naser bin Alzooa','doctor hear',7772484),
('hamad ','doctor head',79994682)
go

insert into specialization values
('nerves',0,1),
('teeth',0,2),
('interior ',0,3),
('to drug',0,4)

insert into salary_employeess values
(77700,1),
(9000,2),
(88888,3),
(77900,4),
(87777,5),
(55478,6),
(60000,7),
(8788089,8),
(98766,9),
(79900,2)



insert into infacted_peopl values
('saad','nerves',1),
('sara','teeth',2),
('mohmed','interior',3),
('khaled','to drug',4),
('hjj','nerves',5),
('turki','teeth',6),
('fahd','interior',7),
('mona','to drug',8)

create index acunt_name 
on doctorss(name,descripton);

create index acunt_name_2 
on specialization(specializationName,active);

create index acunt_name_3
on infacted_peopl(name_people,depatment)

----functin of salary

create function salareywithbounes_1(@salarybioones decimal (16,2)) 
returns decimal (16,2)

as 
begin

return @salarybioones +(@salarybioones*10/100)
end
 select * ,dbo.salareywithbounes_1(salary) as '«·„— » »⁄œ «·“Ì«œÂ' from salary_employeess






select *from specialization

alter Table specialization
add  doctorss_id int foreign key references doctorss(doctors_id) not null
alter Table salary_employeess
add  doctorss_id int foreign key references doctorss(doctors_id) not null

select*from doctorss

alter Table infacted_peopl
add  doctorss_id int foreign key references doctorss(doctors_id) not null




select *from infacted_peopl

select* from doctorss  where name like 's%'

select* from specialization  where specializationName like 't%'

select top 8 *from infacted_peopl

select name ,count(*) from doctorss group by name;

select *from infacted_peopl order by  name_people;
select *from doctorss order by  name desc;

select d.doctors_id ,i.infacted_people_id, d.name
from doctorss d inner join infacted_peopl i
on d.doctors_id=i.infacted_people_id
where d.name in('turki','salim','sami')
order by d.doctors_id

select *from doctorss where name not like '_m%'
select *from doctorss where name  like 'm%'