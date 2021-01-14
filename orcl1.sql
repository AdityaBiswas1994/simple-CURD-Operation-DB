create table musicDb6(music_id number(3),title varchar2(100),artist varchar2(100),m_director varchar2(100),language varchar2(100),
type_music varchar2(100),genre varchar2(100),download varchar2(100),homedelivery varchar2(100),format varchar2(100),price varchar2(100),
discount varchar2(100),image varchar2(100),track varchar2(100),specification varchar2(100),awards varchar2(100));

Select * from musicDb6;

create table usertb(firstname varchar2(30), lastname varchar2(30), email varchar2(40), phone number(12), passwd varchar(20));

Select EMAIL, PASSWD from usertb where email = 'admin101@gmail.com';

Select * from usertb;

insert into usertb(firstname, lastname, email, phone, passwd) values('Aditya', 'Biswas', 'adityabiswasantu@gmail.com', '9********3', 'A*******4');




