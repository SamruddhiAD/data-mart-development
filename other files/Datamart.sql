-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `Sale_Date`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Sale_Date` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Sale_Date` (
  `SaleDate_SK` INT NOT NULL,
  `Cal_Date` VARCHAR(45) NULL,
  `Cal_week` VARCHAR(45) NULL,
  `Cal_quarter` VARCHAR(45) NULL,
  `Cal_month` VARCHAR(45) NULL,
  `Cal_year` VARCHAR(45) NULL,
  `Fisc_day` VARCHAR(45) NULL,
  `Fisc_week` VARCHAR(45) NULL,
  `Fisc_Qaurter` VARCHAR(45) NULL,
  `Fisc_Month` VARCHAR(45) NULL,
  `Fisc_Year` VARCHAR(45) NULL,
  PRIMARY KEY (`SaleDate_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Order_Date`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Order_Date` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Order_Date` (
  `Order_Date_SK` INT NOT NULL,
  `Cal_Date` VARCHAR(45) NULL,
  `Cal_Week` VARCHAR(45) NULL,
  `Cal_quarter` VARCHAR(45) NULL,
  `Cal_Month` VARCHAR(45) NULL,
  `Cal_year` VARCHAR(45) NULL,
  `Fisc_Day` VARCHAR(45) NULL,
  `Fisc_week` VARCHAR(45) NULL,
  `Fisc_Quarter` VARCHAR(45) NULL,
  `Fisc_month` VARCHAR(45) NULL,
  `Fisc_year` VARCHAR(45) NULL,
  PRIMARY KEY (`Order_Date_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Product` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Product` (
  `Product_SK` INT NOT NULL,
  `ProdID` VARCHAR(45) NULL,
  `Prod_Desc` VARCHAR(45) NULL,
  `Price1` VARCHAR(45) NULL,
  `Price2` VARCHAR(45) NULL,
  `UnitCost` VARCHAR(45) NULL,
  `Prod_type_Id` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Abbrev` VARCHAR(45) NULL,
  `type_desc` VARCHAR(45) NULL,
  `Build` VARCHAR(45) NULL,
  PRIMARY KEY (`Product_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Supplier` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Supplier` (
  `Supplier_SK` INT NOT NULL AUTO_INCREMENT,
  `SupplierID` VARCHAR(45) NULL,
  `Sup_Name` VARCHAR(45) NULL,
  `Sup_addr1` VARCHAR(45) NULL,
  `Sup_addr2` VARCHAR(45) NULL,
  `Sup_City` VARCHAR(45) NULL,
  `Sup_State` VARCHAR(45) NULL,
  `Sup_zip` VARCHAR(45) NULL,
  PRIMARY KEY (`Supplier_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Customer` (
  `Customer_SK` INT NOT NULL,
  `Customer_ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `addr1` VARCHAR(45) NULL,
  `addr2` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `Type_Name` VARCHAR(45) NULL,
  `Customer_type_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Junk_Dim`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Junk_Dim` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Junk_Dim` (
  `Order_trans_SK` INT NOT NULL,
  `Payment_Mthd` VARCHAR(45) NULL,
  `Ship_Mthd` VARCHAR(45) NULL,
  `Ordering_Mthd` VARCHAR(45) NULL,
  PRIMARY KEY (`Order_trans_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Sales_Fact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Sales_Fact` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Sales_Fact` (
  `Supplier_SK` INT NOT NULL,
  `Order_Date_SK` INT NOT NULL,
  `Order_trans_SK` INT NOT NULL,
  `Product_SK` INT NOT NULL,
  `Customer_SK` INT NOT NULL,
  `Sale_Date_SK` INT NOT NULL,
  `Amount` VARCHAR(45) NULL,
  `Discounted` VARCHAR(45) NULL,
  `Days_to_Ship` VARCHAR(45) NULL,
  `qty` VARCHAR(45) NULL,
  `Ship_Cost` VARCHAR(45) NULL,
  `Source_Company` VARCHAR(45) NULL,
  `Inovoice_ID(DD)` VARCHAR(45) NULL,
  PRIMARY KEY (`Order_trans_SK`, `Product_SK`, `Supplier_SK`, `Customer_SK`, `Order_Date_SK`, `Sale_Date_SK`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
