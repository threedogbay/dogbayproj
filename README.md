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

