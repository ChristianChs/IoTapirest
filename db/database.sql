-- MySQL Script generated by MySQL Workbench
-- Sat Jul  8 14:21:16 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema thingspeak
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema thingspeak
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `thingspeak` DEFAULT CHARACTER SET utf8 ;
USE `thingspeak` ;

-- -----------------------------------------------------
-- Table `thingspeak`.`canales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `thingspeak`.`canales` (
  `idcanales` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `fecha` DATE NULL,
  `apikey` VARCHAR(45) NULL,
  PRIMARY KEY (`idcanales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `thingspeak`.`detalle_canal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `thingspeak`.`detalle_canal` (
  `iddetalle_canal` INT NOT NULL AUTO_INCREMENT,
  `field1` VARCHAR(45) NULL,
  `field2` VARCHAR(45) NULL,
  `field3` VARCHAR(45) NULL,
  `field4` VARCHAR(45) NULL,
  `field5` VARCHAR(45) NULL,
  `idcanales` INT NOT NULL,
  PRIMARY KEY (`iddetalle_canal`),
  INDEX `idcanales_idx` (`idcanales` ASC) VISIBLE,
  CONSTRAINT `idcanales`
    FOREIGN KEY (`idcanales`)
    REFERENCES `thingspeak`.`canales` (`idcanales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;