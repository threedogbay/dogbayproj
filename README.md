# dogbayproj
```
-- payment table
CREATE TABLE `threedog`.`payment` (
  `payment_id` INT NOT NULL,
  `member_id` VARCHAR(45) NULL,
  `auction_id` INT NULL,
  `product_id` INT NULL,
  `payment_date` VARCHAR(45) NULL,
  `payment_type` VARCHAR(45) NULL,
  `payment_status` INT NULL,
  PRIMARY KEY (`payment_id`));

-- auction table
CREATE TABLE `threedog`.`auction` (
  `auction_id` INT NOT NULL,
  `member_id` VARCHAR(45) NULL,
  `product_id` INT NULL,
  `auction_price` INT NULL,
  `auction_time` VARCHAR(45) NULL,
  `auction_soldprice` INT NULL,
  PRIMARY KEY (`auction_id`));

-- like_tb
CREATE TABLE `threedog`.`like_tb` (
  `member_id` VARCHAR(45) NOT NULL,
  `product_id` VARCHAR(45) NOT NULL,
  `product_like` CHAR(1) CHECK(product_like IN('Y', 'N')) DEFAULT 'N' 
   ,
  PRIMARY KEY (`member_id`, `product_id`));

-- member table
CREATE TABLE `threedog`.`member` (
  `member_id` VARCHAR(45) NOT NULL,
  `member_pwd` VARCHAR(45) NULL,
  `member_name` VARCHAR(45) NULL,
  `member_auth` VARCHAR(45) NULL,
  PRIMARY KEY (`member_id`));

-- `member_pwd` change varchar(500)
ALTER TABLE `member` CHANGE `MEMBER_PW` `MEMBER_PWD` VARCHAR(500);
  
-- `member_auth` modify default 'ROLE_USER'
ALTER TABLE `threedog`.`member` MODIFY `member_auth` VARCHAR(20) DEFAULT 'ROLE_USER'; 

-- product table
CREATE TABLE `threedog`.`product` (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NULL,
  `product_initprice` VARCHAR(45) NULL,
  `product_closedate` VARCHAR(45) NULL,
  `product_regidate` VARCHAR(45) NULL,
  `product_img` VARCHAR(45) NULL,
  `product_detail` VARCHAR(45) NULL,
  `product_soldout` CHAR(1) CHECK(PRODUCT_SOLDOUT IN('Y', 'N')) DEFAULT 'N' 
   ,
  PRIMARY KEY (`product_id`));

-- product insert test
INSERT INTO `threedog`.`product` (`product_id`, `product_name`, `product_initprice`, `product_closedate`, `product_regidate`, `product_img`, `product_detail`) VALUES ('1', 'test', '1000', '2020-08-08', '2020-08-08', 'test', 'test');
```

#application.properties
```
server.port=8082
server.servlet.context-path=/

#jsp
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

#mysql 
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/threedog?serverTimeZone=UTC&CharacterEncoding=UTF-8
spring.datasource.username=root
spring.datasource.password=1234
mybatis.mapper-locations:classpath:mapper/*.xml

server.servlet.encoding.charset=utf-8
server.servlet.encoding.enabled=true
server.servlet.encoding.force=true
```
