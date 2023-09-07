CREATE TABLE `Orders`(
    `Vendor_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `count_Orders` BIGINT NOT NULL ,
    `Rate` BIGINT NOT NULL,
    `Grade_Rate` BIGINT NOT NULL,
    `comment` VARCHAR(255) NOT NULL
);
CREATE TABLE `Vendor_Profile_Info`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Vendor_name` VARCHAR(255) NOT NULL,
    `Address` VARCHAR(255) NOT NULL,
    `Subtype` VARCHAR(255) NOT NULL,
    `Phone` INT NOT NULL,
    `Delivery method` VARCHAR(255) NOT NULL,
    `Grade` VARCHAR(255) NOT NULL,
    `Subtype-Id` INT NOT NULL
);