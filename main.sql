SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `product_page` DEFAULT CHARACTER SET utf8 ;
USE `product_page` ;

CREATE TABLE IF NOT EXISTS `product_page`.`products` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `price` INT NOT NULL,
  `price_sale` INT NOT NULL,
  `price_old` INT NOT NULL,
  `description` MEDIUMTEXT NOT NULL,
  `id_photo` INT NOT NULL,
  `id_list_category` INT NOT NULL,
  PRIMARY KEY (`id_product`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `product_page`.`category` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NOT NULL,
  `products_count` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `product_page`.`category/products` (
  `id_product` INT NOT NULL,
  `id_category` INT NOT NULL,
  PRIMARY KEY (`id_product`, `id_category`),
  CONSTRAINT `to_category`
    FOREIGN KEY (`id_category`)
    REFERENCES `product_page`.`category` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `to_products`
    FOREIGN KEY (`id_product`)
    REFERENCES `product_page`.`products` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `product_page`.`photos` (
  `id_photo` INT NOT NULL AUTO_INCREMENT,
  `photo_url` VARCHAR(128) NOT NULL,
  `alt_name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id_photo`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `product_page`.`products/photos` (
  `id_product` INT NOT NULL,
  `id_photo` INT NOT NULL,
  PRIMARY KEY (`id_product`, `id_photo`),
  CONSTRAINT `to_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `product_page`.`products` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `to_photo`
    FOREIGN KEY (`id_photo`)
    REFERENCES `product_page`.`photos` (`id_photo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
