SET NAMES UTF8;
DROP DATABASE IF EXISTS xz;
CREATE DATABASE xz CHARSET=UTF8;
USE xz;

CREATE TABLE xz_laptop_family(
	fid TINYINT PRIMARY KEY,
	fname VARCHAR(10) UNIQUE,
	laptopCount SMALLINT
);

INSERT INTO xz_laptop_family VALUES
	(10,"联想",2),
	(20,"戴尔",2),
	(30,"小米",3);

CREATE TABLE xz_laptop(
	lid SMALLINT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(10) UNIQUE,
	price DECIMAL(8,2),
	spec VARCHAR(10),
	detail VARCHAR(300),
	shelfTime DATE,
	isOnsale BOOL,
	familyId TINYINT
);

INSERT INTO xz_laptop VALUES
	(NULL,"联想游戏本",5300,"英特尔 酷睿 i5-8300H 8GB","性能强大的处理器：采用新一代英特尔酷睿处理器","2018-9-20",1,10),
	(NULL,"联想台机一体机",4798.99,"第八代智能英特尔 酷睿 i7-8565U 处理器","性能强大的处理器：采用新一代英特尔酷睿处理器","2017-9-20",0,10),
	(NULL,"戴尔游戏本",5999,"第八代智能英特尔 酷睿 i7-8750H 处理器 ","性能强大的处理器：采用新一代英特尔酷睿处理器","2010-9-20",0,20),
	(NULL,"戴尔台机一体机",8499,"第八代智能英特尔 酷睿 i7-8750H 处理器","性能强大的处理器：采用新一代英特尔酷睿处理器","2018-6-19",1,20),
	(NULL,"戴尔轻薄本",7599,"英特尔 酷睿 i5-8300H 8GB","性能强大的处理器：采用新一代英特尔酷睿处理器","2018-11-2",1,20),
	(NULL,"小米轻薄本",5898.99,"第八代智能英特尔 酷睿 i7-8750H 处理器","性能强大的处理器：采用新一代英特尔酷睿处理器","2000-6-20",0,30),
	(NULL,"小米游戏本",7999,"第八代智能英特尔 酷睿 i7-8750H 处理器","性能强大的处理器：采用新一代英特尔酷睿处理器","2018-12-2",1,30);


