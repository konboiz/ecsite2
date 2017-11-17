drop database if exists newecsite;

create database if not exists newecsite;
use newecsite;

drop table if exists user_info;


create table user_info(
id int not null primary key auto_increment,
user_id varchar(16),
password varchar(16),
user_name varchar(16),
tel varchar(13),
gender TINYINT DEFAULT 0,
email varchar(32),
adress varchar(32),
status TINYINT DEFAULT 0,
logined TINYINT DEFAULT 0,
regist datetime,
update_time datetime
);


drop table if exists item_info;

create table item_info(

id int not null primary key auto_increment,
item_id int,
item_name varchar(100),
item_description varchar(255),
category_id int,
item_word varchar(255),
item_price int,
item_count int,
image_file_path varchar(100),
image_file_name varchar(50),
release_data datetime,
release_company varchar(50),


regist datetime,
update_time datetime
);

drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(32),
item_id int,

regist datetime,
update_time datetime
);

drop table if exists buy_info;

create table buy_info(
id int not null primary key auto_increment,
user_id varchar(32),
item_id int,
item_name varchar(32),
item_price int,
item_count int,
regist datetime,
update_time datetime
);



INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(1,'高級机','素材に意気込みをかけております',1,'机,木材,',2000,'images/desk.jpg','desk.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(2,'安物椅子','素材に意気込みをかけております',1,'椅子,木材,メンズ',800,'images/desk.jpg','desk.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(3,'スタンド','素材に意気込みをかけております',2,'スタンド,木材',400,'images/desk.jpg','desk.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(4,'高級机','素材に意気込みをかけております',1,'机,木材,',2000,'images/desk.jpg','desk.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(5,'安物椅子','素材に意気込みをかけております',1,'椅子,木材,メンズ',800,'images/desk.jpg','desk.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,item_price,image_file_path,image_file_name,release_company)VALUES(6,'スタンド','素材に意気込みをかけております',2,'スタンド,木材',400,'images/desk.jpg','desk.jpg','internous');






INSERT INTO user_info(user_id,password) values('a','1');