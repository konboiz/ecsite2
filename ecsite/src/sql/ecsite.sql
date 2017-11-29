set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists user_info;

create table user_info(
id int not null primary key auto_increment,
user_id varchar(16),
password varchar(16),
user_name varchar(16),
tel varchar(13),
gender TINYINT DEFAULT 0,
email varchar(32),
address varchar(255),
logined TINYINT DEFAULT 0,
insert_date datetime,
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
price int,
count int,
image_file_path varchar(100),
image_file_name varchar(50),
release_data datetime,
release_company varchar(50),


inser_date datetime,
update_time datetime
);


drop table if exists buy_info;

create table buy_info(
id int not null primary key auto_increment,
item_id int,
item_name varchar(32),
price int,
count int,
amount int,
user_id varchar(16),
user_name varchar(16),
tel varchar(13),
address varchar(255),
payment varchar(32),
transport varchar(32),

insert_date datetime,
update_time datetime
);




INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(1,'イチゴのショートケーキ','イチゴ・生クリームにこだわっています',1,'ホール,',3500,'./img/cake001.jpg','cake001.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(2,'バラのケーキ','色合いと生クリームをお楽しみ下さい',1,'ホール',3000,'./img/cake002.jpg','cake002.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(3,'チョコケーキ','チョコのほろ苦さとスポンジの柔らさをお楽しみください',1,'ホール',3000,'./img/cake046.jpg','cake046.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(4,'ハート型チョコケーキ','大切な方と素敵な夜に',1,'ホール,',3200,'./img/cake053.jpg','cake053.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(5,'チョコロールケーキ','勉強の合間に糖分を',2,'カット',250,'./img/cake091.jpg','cake091.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(6,'ロールケーキ・イチゴ乗せ','一日の仕事にご褒美を',2,'カット',300,'./img/cake094.jpg','cake094.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(7,'チョココーヒームース','大人の時間に少しの甘さを',2,'カット,',350,'./img/cake100.jpg','cake100.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(8,'イチゴムース','イチゴの鮮度にこだわりました',2,'カット',350,'./img/cake102.jpg','cake102.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(9,'チョコムース','厳選したカカオを使用しています',2,'カット',400,'./img/cake104.jpg','cake104.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(10,'チョコムース・サクランボのせ','チョコの⑦ほろ苦さとサクランボがマッチ',2,'カット',400,'./img/cake124.jpg','cake124.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(11,'ベリームースのチョコケーキ','イチゴの甘酸っぱいとチョコのほろ苦さが絶妙',2,'カット',350,'./img/cake132.jpg','cake132.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(12,'ブラックチョコケーキ','ビターなケーキで友達と一緒に大人の時間を',2,'カット',400,'./img/cake135.jpg','cake135.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(13,'ビターチョコケーキ','ビターなチョコをイチゴが引き立たせてれる',2,'カット',450,'./img/cake138.jpg','cake138.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(14,'チョコケーキムース','大人のクリスマス　女子会にピッタリなほろ苦さ',1,'ホール',3400,'./img/cake159.jpg','cake158.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(15,'プリン風チョコケーキ','スポンジの柔らかさに注目',2,'カット,',350,'./img/cake162.jpg','cake162.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(16,'フルーツケーキ','季節の合わせてフルーツを変えています',2,'カット',400,'./img/cake163.jpg','cake163.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(17,'チョコシュークリーム','生クリームとチョコを合わせてお召し上がりください',2,'カット',200,'./img/cake166.jpg','cake166.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(18,'クリスマスカップケーキ','家族と楽しいクリスマスにぜひ',2,'カット,',350,'./img/cake179.jpg','cake179.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(19,'クリスマスフルーツケーキ','家族とのクリスマスを楽しむのに欠かせないケーキ',2,'カット',350,'./img/cake184.jpg','cake184.jpg','internous');



INSERT INTO user_info(user_id,password,user_name) values("a", "1", "test");